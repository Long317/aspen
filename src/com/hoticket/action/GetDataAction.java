package com.hoticket.action;

import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.FileWriter;
import java.io.InputStreamReader;
import java.net.URL;
import static com.hoticket.util.Constants.*;

import javax.servlet.ServletContext;

import org.apache.struts2.ServletActionContext;

import com.opensymphony.xwork2.ActionSupport;

public class GetDataAction extends ActionSupport{
	
	
	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public String execute() {
		ServletContext context =  ServletActionContext.getServletContext();
		String fullPath = context.getRealPath(MovieData_URL);
		try {
			//create remote URL 
			URL url = new URL(MovieChain_URL);    
	        //get Reader
	        BufferedReader in = new BufferedReader(
	                new InputStreamReader(url.openStream()));
	        String inputLine;
	        //Store json content in result
	        String result = "";
	        while ((inputLine = in.readLine()) != null) {
	            result += inputLine;
	        }
	        //write json content to the local json file
	        FileWriter fw = new FileWriter(fullPath);
	        System.out.println(fullPath);
	        BufferedWriter bw = new BufferedWriter(fw);
	        bw.write(result);
	        bw.close();
	        return SUCCESS;
	        
		} catch (Exception e) {
			e.printStackTrace();
			return ERROR;
		}
		
		
		
		
	}
	

}
