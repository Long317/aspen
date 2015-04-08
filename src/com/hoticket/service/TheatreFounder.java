
package com.hoticket.service;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import static com.hoticket.util.Constants.*;
import com.hoticket.modal.Theatre;

/**
 *
 * @author Longcheng
 */
public class TheatreFounder {

    public static double calculateDistance(String address, Theatre theatre) throws IOException, ParseException {
    	//get url
        URL url = new URL(GoolgeMapAPI_URL + "?origins="
                + URLEncoder.encode(address, "UTF-8") + "&destinations=" 
        		+ URLEncoder.encode(theatre.getAddress()+" "+theatre.getCity()+" "+theatre.getState(), "UTF-8")
        		+ "&mode=car");
        System.out.println(url);
        //get Reader
        BufferedReader in = new BufferedReader(
                new InputStreamReader(url.openStream()));
        String inputLine;
        String result = "";
        while ((inputLine = in.readLine()) != null) {
            result += inputLine;
        }
        //parse the result
        JSONParser parser = new JSONParser();
        Object obj = parser.parse(result);
        JSONObject jsonOutput = (JSONObject) obj;
        JSONArray rows = (JSONArray) jsonOutput.get("rows");
        JSONArray elements =(JSONArray) ((JSONObject) rows.get(0)).get("elements");
        JSONObject distanceObj = (JSONObject)((JSONObject) elements.get(0)).get("distance");
        if (distanceObj ==null){
        	return 10000;
        }
        //get distance
        double distance = Double.parseDouble(distanceObj.get("text").toString().replaceAll("km", " ").replaceAll(",","").trim()); 
        return distance;

    }

    
//    public static void main(String args[]) throws IOException, ParseException {
//        String address = "91 Henry Street New York NY 10002";
//        Theatre t = new Theatre();
//        t.setZipcode(11790);
//        System.out.println(calculateDistance(address,t));
//        
//    }
}
