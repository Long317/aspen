package com.hoticket.action;


import java.io.BufferedReader;
import java.io.InputStreamReader;

import static com.hoticket.util.Constants.*;

import java.net.URL;





import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.opensymphony.xwork2.ActionSupport;

public class GeoLocatorAction extends ActionSupport {
	private String clientIP;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String execute() {
		try {
			//create remote URL
			URL url = new URL(GEOLocator_URL+clientIP);
			//get writer for the url response
	        BufferedReader in = new BufferedReader(
	                new InputStreamReader(url.openStream()));
	        String inputLine;
	        //store url content to the result
	        String result = "";
	        while ((inputLine = in.readLine()) != null) {
	            result += inputLine;
	        }
	        //parse the json result
	        JSONParser parser = new JSONParser();
	        JSONObject addressinfo =(JSONObject) parser.parse(result);
	        String addr = addressinfo.get("as").toString();
	        String city = addressinfo.get("city").toString();
	        String state = addressinfo.get("region").toString();
	        String zip = (String) addressinfo.get("zip");
	        //store user address
	        String address = addr+" "+city+" "+state+" "+zip;
	        System.out.println(addr);
	        System.out.println(city);
	        System.out.println(state);
	        System.out.println(zip);
	        return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}

	public String getClientIP() {
		return clientIP;
	}

	public void setClientIP(String clientIP) {
		this.clientIP = clientIP;
	}


	
	
}
