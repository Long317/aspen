package com.hoticket.util;

import java.util.List;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;


public class Methods {
	/**
	 * get index for min number in the arraylist
	 * @param list
	 * @return index of minimum number in the arraylist
	 */
	public static int minIndex(List<Double> list) {
		  Integer i=0, minIndex=-1;
		  Double max=null;
		  for (Double x : list) {
		    if ((x!=null) && ((max==null) || (x<max))) {
		      max = x;
		      minIndex = i;
		    }
		    i++;
		  }
		  return minIndex;
		}
	/**
	 * get cookies from http request
	 * @param request
	 * @param name 
	 * @return cookie with particular name
	 */
	public static Cookie getCookie(HttpServletRequest request, String name) {
        if (request.getCookies() != null) {
            for (Cookie cookie : request.getCookies()) {
                if (cookie.getName().equals(name)) {
                    return cookie;
                }
            }
        }

        return null;
    }
	

}
