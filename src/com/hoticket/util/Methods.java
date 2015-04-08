package com.hoticket.util;

import java.util.List;

public class Methods {
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

}
