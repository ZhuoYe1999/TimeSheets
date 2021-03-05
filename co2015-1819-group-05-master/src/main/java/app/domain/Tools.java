package app.domain;

import java.util.*;

public class Tools {

	public static Calendar getMonday(Calendar currentweek) {
		if(currentweek.get(Calendar.DAY_OF_WEEK)==2) {
			//nothing
		} else if (currentweek.get(Calendar.DAY_OF_WEEK)==3) {
			currentweek.add(Calendar.DAY_OF_MONTH, -1);
		}else if (currentweek.get(Calendar.DAY_OF_WEEK)==4) {
			currentweek.add(Calendar.DAY_OF_MONTH, -2);
		}else if (currentweek.get(Calendar.DAY_OF_WEEK)==5) {
			currentweek.add(Calendar.DAY_OF_MONTH, -3);
		}else if (currentweek.get(Calendar.DAY_OF_WEEK)==6) {
			currentweek.add(Calendar.DAY_OF_MONTH, -4);
		}else if (currentweek.get(Calendar.DAY_OF_WEEK)==7) {
			currentweek.add(Calendar.DAY_OF_MONTH, -5);
		}else if (currentweek.get(Calendar.DAY_OF_WEEK)==1) {
			currentweek.add(Calendar.DAY_OF_MONTH, -6);
		}
		return currentweek;
	}
	
	public static Calendar getDate(int[] val) {
		return new GregorianCalendar(val[0], val[1]-1, val[2]);
	}
	
	public static Calendar getDate(String[] str) {
		int [] val = new int[3];
		//year
		val[0] = Integer.parseInt(str[2]);
		//month
		val[1] = Integer.parseInt(str[0]);
		//day
		val[2] = Integer.parseInt(str[1]);
		return new GregorianCalendar(val[0], val[1]-1, val[2]);
	}
	
	public static int[] dateToInt(Calendar cal) {
		int [] ints = new int[3];
		//year
		ints[0] = cal.get(Calendar.YEAR);
		//month
		ints[1] = cal.get(Calendar.MONTH);
		//day
		ints[2] = cal.get(Calendar.DAY_OF_MONTH);
		return ints;
	}
}
