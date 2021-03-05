package app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("adminmain")
public class AdminMainController {


	@RequestMapping("/")
	public String timesheets(Model model) {
		return "adminmain";
	}
}