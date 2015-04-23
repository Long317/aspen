/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package com.hoticket.util;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.URL;
import java.net.URLEncoder;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;

/**
 *
 * @author Longcheng
 */
public class AddressConverter {

    private static final String URL = "http://maps.googleapis.com/maps/api/geocode/json";

    public static double[] convertToLatLong(String fullAddress) throws IOException, ParseException {
        URL url = new URL(URL + "?address="
                + URLEncoder.encode(fullAddress, "UTF-8") + "&sensor=false");

        //get Reader
        BufferedReader in = new BufferedReader(
                new InputStreamReader(url.openStream()));
        String inputLine;
        String result = "";
        while ((inputLine = in.readLine()) != null) {
            result += inputLine;
        }
        JSONParser parser = new JSONParser();
        Object obj = parser.parse(result);
        JSONObject jsonOutput = (JSONObject) obj;
        JSONArray array = (JSONArray) jsonOutput.get("results");
        JSONObject output = (JSONObject) array.get(0);
        JSONObject location = (JSONObject) ((JSONObject) output.get("geometry")).get("location");
        double[] d = new double[2];
        d[0] = (Double) location.get("lat");
        d[1] = (Double) location.get("lng");

        return d;

    }

    public static double calculateDistance(double[] origin, double[] destination) {
        int R = 6371; // km
        double φ1 = Math.toRadians(origin[0]);
        double φ2 = Math.toRadians(destination[0]);
        double Δφ = Math.toRadians(destination[0] - origin[0]);
        double Δλ = Math.toRadians(destination[1] - origin[1]);

        double a = Math.sin(Δφ / 2) * Math.sin(Δφ / 2)
                + Math.cos(φ1) * Math.cos(φ2)
                * Math.sin(Δλ / 2) * Math.sin(Δλ / 2);
        double c = 2 * Math.atan2(Math.sqrt(a), Math.sqrt(1 - a));

        double d = R * c;
        //convert result from km to miles
        d = d*0.621371;
        return d;
    }
//    public static void main(String args[]) throws IOException, ParseException {
//        String address = "91 Henry Street New York NY 10002";
//        System.out.println(convertToLatLong(address)[0]);
//        
//    }
}
