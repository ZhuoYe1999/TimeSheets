package app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import app.domain.*;
import app.repository.*;

import java.util.*;

@Controller
@RequestMapping("/timesheetspage")
public class TimesheetsController {
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	TimeslotRepository timeslotRepo;

//	@RequestMapping("")
//	public String timesheets(@RequestParam("name") String name, Model model) {
//		Calendar currentdate = Calendar.getInstance();
//		model.addAttribute("user", name);
//		model.addAttribute("date", currentdate);
//		return "timesheetspage";
//	}
	
	@RequestMapping("")
	public String timesheets(@RequestParam("name") String name, Model model) {
		Calendar currentdate = Calendar.getInstance();
		model.addAttribute("user", name);
		model.addAttribute("date", currentdate);
		Calendar monday = Tools.getMonday(currentdate);
		
		Timeslot [] colourToType = new Timeslot [672];
		User user = userRepo.findByEmail(name+"@fdmgroup.com");
		Set<Timeslot> possible = timeslotRepo.findByUser(user);
		Timeslot[] possibles = new Timeslot[possible.size()];
		possibles = possible.toArray(possibles);
		for(int i=0; i<possibles.length; i++) {
			if(possibles[i].getDate().get(Calendar.YEAR)==monday.get(Calendar.YEAR) && 
					possibles[i].getDate().get(Calendar.MONTH)==monday.get(Calendar.MONTH) &&
					possibles[i].getDate().get(Calendar.DAY_OF_MONTH)==monday.get(Calendar.DAY_OF_MONTH)) {
				colourToType[possibles[i].getPosition()]=possibles[i];
			}
		}
		if(colourToType[0]==null) { 
			return "timesheetspage";
		}else {
		String[] colours = new String[672];
		for(int i=0; i<colours.length; i++) {
			if(colourToType[i].getTimeType()==1) {
				colours[i] = "#b9eff8";
			} else if (colourToType[i].getTimeType()==2) {
				colours[i] = "#ffbf49";
			} else if (colourToType[i].getTimeType()==3) {
				colours[i] = "#232323";
			} else if (colourToType[i].getTimeType()==4) {
				colours[i] = "#FFC0CB";
			} else if (colourToType[i].getTimeType()==5) {
				colours[i] = "#e0e0e0";
			} else if (colourToType[i].getTimeType()==6) {
				colours[i] = "#f4f4f4";
			}
		}
		
		String array = Arrays.toString(colours);
		String tableArray = array.replaceAll(" ", "").replaceAll("\\[", "").replaceAll("\\]","");
		model.addAttribute("tableArray2" , tableArray);
		return "timesheetspage";
		}
	}
	
	@RequestMapping("/submitTable")
	public String submit(@ModelAttribute Table table) {
		String name = table.getUsername();
		return "redirect:/timesheetspage?name="+name;
	}
	
	@RequestMapping("/savetable")
	public String save(@ModelAttribute Table table, Model model) {
		String [] as = table.getTableArray();
		String username = table.getUsername();
		String textdate = table.getTextdate();
		Calendar thedate = Calendar.getInstance();
		model.addAttribute("user", username);
		model.addAttribute("date", thedate);
		
		String [] initvaluesStr = textdate.split("/"); //in form m/d/y
		Calendar currentdate = Tools.getDate(initvaluesStr);
		Calendar monday = Tools.getMonday(currentdate);
		
		Timeslot [] colourToType = new Timeslot [as.length];
		User user = userRepo.findByEmail(username+"@fdmgroup.com");
		Set<Timeslot> possible = timeslotRepo.findByUser(user);
		Timeslot[] possibles = new Timeslot[possible.size()];
		possibles = possible.toArray(possibles);
		for(int i=0; i<possibles.length; i++) {
			if(possibles[i].getDate().get(Calendar.YEAR)==monday.get(Calendar.YEAR) && 
					possibles[i].getDate().get(Calendar.MONTH)==monday.get(Calendar.MONTH) &&
					possibles[i].getDate().get(Calendar.DAY_OF_MONTH)==monday.get(Calendar.DAY_OF_MONTH)) {
				colourToType[possibles[i].getPosition()]=possibles[i];
			}
		}
		
		if(colourToType[0]==null) { 
			for(int i = 0; i<colourToType.length; i++) {
				Timeslot type = new Timeslot();
				type.setUser(user);
				type.setDate(monday);
				type.setPosition(i);
				timeslotRepo.save(type);
			}
			Set<Timeslot> possible2 = timeslotRepo.findByUser(user);
			Timeslot[] possibles2 = new Timeslot[possible2.size()];
			possibles2 = possible2.toArray(possibles2);
			for(int i=0; i<possibles2.length; i++) {
				if(possibles2[i].getDate().get(Calendar.YEAR)==monday.get(Calendar.YEAR) && 
					possibles2[i].getDate().get(Calendar.MONTH)==monday.get(Calendar.MONTH) &&
					possibles2[i].getDate().get(Calendar.DAY_OF_MONTH)==monday.get(Calendar.DAY_OF_MONTH)) {
					colourToType[possibles2[i].getPosition()]=possibles2[i];
				}
			}
		}
		
		for (int i = 0; i<as.length; i++) {
			if 		(as[i].equals("#b9eff8")){
				colourToType[i].setAsNormalWork(); }
			else if (as[i].equals("#ffbf49")){
				colourToType[i].setAsOvertime();} 
			else if (as[i].equals("#232323")){
				colourToType[i].setAsLateORAbsent();} 
			else if (as[i].equals("#FFC0CB")){
				colourToType[i].setAsHoliday();} 
			else if (as[i].equals("#e0e0e0")){
				colourToType[i].setAsPlannedAbsence();} 
			else if (as[i].equals("#f4f4f4")){
				colourToType[i].setAsNothing();}
		}

		for(int i=0; i<colourToType.length; i++) {
			timeslotRepo.save(colourToType[i]);
		}
		
		userRepo.save(user);

		return "redirect:/timesheetspage?name="+username;
	}
}