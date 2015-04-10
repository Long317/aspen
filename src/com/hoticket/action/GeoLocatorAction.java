package com.hoticket.action;


import java.io.BufferedReader;
import java.io.InputStreamReader;

import static com.hoticket.util.Constants.*;

import java.net.URL;





import java.util.ArrayList;
import java.util.Map;

import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;

import com.hoticket.dao.TheatreDAO;
import com.hoticket.modal.Theatre;
import com.hoticket.service.TheatreFounder;
import com.hoticket.util.Methods;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class GeoLocatorAction extends ActionSupport {
	private String clientIP;
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

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
	        	if (theatres.get(i).getState().contains(state.trim())){
	        		stateTheatres.add(theatres.get(i));
	        		distances.add(TheatreFounder.calculateDistance(address,theatres.get(i)));
	        	}
	        }
	        //store top 5 closest theatres to the session
	       ArrayList<Theatre> closeTheatres = new ArrayList<Theatre>();
	       int number = stateTheatres.size()>=5?5:stateTheatres.size();
	       for (int i=0;i<number;i++){
	    	   System.out.println(stateTheatres.get(Methods.minIndex(distances)).getName());
	    	   closeTheatres.add(stateTheatres.get(Methods.minIndex(distances)));
	    	   System.out.println(closeTheatres.get(i).getShowing().toString());
	    	  distances.remove(Methods.minIndex(distances));
	    	   
	       }
	       
	       session.put("closeTheatres", closeTheatres);
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
