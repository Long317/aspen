package com.hoticket.action;


import java.io.BufferedReader;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;

import static com.hoticket.util.Constants.*;

import java.net.URL;
import java.util.ArrayList;
import java.util.Map;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.hoticket.dao.TheatreDAO;
import com.hoticket.modal.Theatre;
import com.hoticket.util.AddressConverter;
import com.hoticket.util.Methods;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GeoLocatorAction extends ActionSupport {
	private String clientIP;
	private InputStream inputStream;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	
	/**
	 * geoLocator calculate the distance and get closest theatre from clinet
	 */
	@SuppressWarnings("unchecked")
	public String execute() {
		try {
			System.out.println(clientIP);
			//get session object
			@SuppressWarnings("rawtypes")
			Map session = (Map) ActionContext.getContext().get("session");
			
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
	        
	        //create double[] to store lat and lon for client
	        double [] geoData = new double[2];
	        geoData[0] = (double) addressinfo.get("lat");
	        geoData[1] = (double) addressinfo.get("lon");
	        session.put("clientGeodata", geoData);
	        
	        //store user address
	        String address = addr+" "+city+" "+state+" "+zip;
	        session.put("clientAddress", address);
	        ArrayList<Theatre> theatres ;
	        
	    	//if get theatres from db if not exits in context
	        if (ActionContext.getContext().get("theatres")==null){
	        	theatres = (ArrayList<Theatre>) TheatreDAO.getInstance().getTheatre();
	        }else{
		        //get theatres from Context if it exits
	        	theatres=  (ArrayList<Theatre>)ActionContext.getContext().get("theatres");
	        	ActionContext.getContext().put("theatres", theatres);
	        }
	        
	        //store distances for same state theatre
	        ArrayList<Double> distances = new ArrayList<Double>();
	        //store same state theatre 
	        ArrayList<Theatre> stateTheatres = new ArrayList<Theatre>();
	        for (int i=0;i<theatres.size();i++){
	        	//only check same state
	        	//if (theatres.get(i).getState().contains(state.trim())){
	        		stateTheatres.add(theatres.get(i));
	        		double[] theatreGeo = new double[]{theatres.get(i).getLatitude(),theatres.get(i).getLongitude()};
	        		distances.add(AddressConverter.calculateDistance(geoData, theatreGeo));
	        //	}
	        }
	        
	        //store top MAX_THEATRE number closest theatres to the session
	       ArrayList<Theatre> closeTheatres = new ArrayList<Theatre>();
	       int number = stateTheatres.size()>=MAX_THEATRE?MAX_THEATRE:stateTheatres.size();
	       for (int i=0;i<number;i++){
	    	   System.out.println(stateTheatres.get(Methods.minIndex(distances)).getName());
	    	   closeTheatres.add(stateTheatres.get(Methods.minIndex(distances)));
	    	  distances.set(Methods.minIndex(distances), 1000000.0);
	       }

	       session.put("closeTheatres", closeTheatres);
	       //return to user with JSON String for closeTheatres
	       JSONArray theatresJSON = new JSONArray();
	       for (int i=0;i<closeTheatres.size();i++){
	       JSONObject theatreJSON = new JSONObject();
	       theatreJSON.put("name", closeTheatres.get(i).getName());
	       theatreJSON.put("addr", closeTheatres.get(i).getAddress());
	       theatreJSON.put("id", closeTheatres.get(i).getId());
	       theatresJSON.add(theatreJSON);
	       }
	       //add user info
	       JSONObject theatreJSON = new JSONObject();
	       theatreJSON.put("zip", zip);
	       theatreJSON.put("ip", clientIP);
	       theatresJSON.add(theatreJSON);
	       //return JSON String to the client
	       inputStream = new ByteArrayInputStream(
	    		   theatresJSON.toJSONString().getBytes("UTF-8"));
	       //update user_geo_status to ok
	       session.put("user_geo_status", "ok");
	       //replace popular cities with theatre info
	       String[] theatreInfo = new String[closeTheatres.size()*2];
	       for (int i=0, j=0;i<closeTheatres.size();i++){
	    	   theatreInfo[j]=closeTheatres.get(i).getName();
	    	   theatreInfo[j+1]=closeTheatres.get(i).getAddress();
	    	   j=j+2;
	       }
	       session.put("popular_cities", theatreInfo);
	       session.put("default_theatre", closeTheatres.get(0));
	       System.out.println(closeTheatres.get(0).getName());
	        return SUCCESS;
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
	}
	/**
	 * user decline to use his geo location data
	 * @return
	 */
	@SuppressWarnings("unchecked")
	public String decline() {
		@SuppressWarnings("rawtypes")
		Map session = (Map) ActionContext.getContext().get("session");
		session.put("user_geo_status", "decline");
		return SUCCESS;
		
	}
	public String getClientIP() {
		return clientIP;
	}

	public void setClientIP(String clientIP) {
		this.clientIP = clientIP;
	}

    public InputStream getInputStream() {
        return inputStream;
    }
	
	
}
