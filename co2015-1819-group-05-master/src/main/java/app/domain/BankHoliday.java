package app.domain;

import java.util.Calendar;

public class BankHoliday {
 String cal;

 public boolean isHoliday (Calendar cal) {

 if (cal.get(Calendar.MONTH) == Calendar.JANUARY
	 && cal.get(Calendar.DAY_OF_MONTH) == 1) {
	 return false;
 }//New year

if (cal.get(Calendar.MONTH) == Calendar.APRIL
	&& cal.get(Calendar.DAY_OF_MONTH) == 19) {
	return false;
}//Good Friday

if (cal.get(Calendar.MONTH) == Calendar.APRIL
	&& cal.get(Calendar.DAY_OF_MONTH) == 22) {
	return false;
}//Easter Monday

if (cal.get(Calendar.MONTH) == Calendar.MAY
	&& cal.get(Calendar.DAY_OF_MONTH) == 6) {
	return false;
}//Early May bank holiday

if (cal.get(Calendar.MONTH) == Calendar.MAY
	&& cal.get(Calendar.DAY_OF_MONTH) == 27) {
	return false;
}//Spring bank holiday

if (cal.get(Calendar.MONTH) == Calendar.AUGUST
	&& cal.get(Calendar.DAY_OF_MONTH) == 26) {
	return false;
}//Summer bank holiday

if (cal.get(Calendar.MONTH) == Calendar.DECEMBER
	 && cal.get(Calendar.DAY_OF_MONTH) == 25) {
	 return false;
}//Christmas

if (cal.get(Calendar.MONTH) == Calendar.DECEMBER
	&& cal.get(Calendar.DAY_OF_MONTH) == 26) {
	return false;
}//Boxing holiday

return true;

  }
} 