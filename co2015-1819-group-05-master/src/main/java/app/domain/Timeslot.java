package app.domain;

import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.Set;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.ManyToOne;

@Entity(name="timeslots")
public class Timeslot {

	@Id
	@GeneratedValue(strategy=GenerationType.AUTO)
	private int id;
	
	@Column(nullable = false)
	private int timeType;
	
	@Column
	private int position;
	
	@Column
	private GregorianCalendar date;
	
	@ManyToOne(fetch = FetchType.EAGER)
	private User user;
	
	public Timeslot() {
		timeType = 0;
	}
	
	public User getUser() {
		return this.user;
	}
	
	public void setUser(User user) {
		this.user = user;
	}
	
	public GregorianCalendar getDate() {
		return this.date;
	}
	
	public void setDate(Calendar mondaydate) {
		this.date = (GregorianCalendar) mondaydate;
	}
	
	public int getTimeType () {
		return this.timeType;
	}
	
	//normal work = 1              "#b9eff8" blue
	public void setAsNormalWork() {
		this.timeType = 1;
	}
	
	//overtime = 2                 "#ffbf49"  orange
	public void setAsOvertime() {
		this.timeType = 2;
	}
	
	//late/absent                  "#232323"  black
	public void setAsLateORAbsent() {
		this.timeType = 3;
	}
	
	//holiday                       "#FFC0CB"  pink
	public void setAsHoliday() {
		this.timeType = 4;
	}
	
	//pre-planned absence            "#e0e0e0"  grey
	public void setAsPlannedAbsence() {
		this.timeType = 5;
	}
	
	//nothing = 5                    "#f4f4f4"  white
	public void setAsNothing() {
		this.timeType = 6;
	}
	
	public void setPosition(int day) {
		this.position = day;
	}
	
	public int getPosition() {
		return this.position;
	}
}
