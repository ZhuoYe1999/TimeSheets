package app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import app.domain.User;
import app.repository.UserRepository;

@Controller
@RequestMapping("/applylunch")
public class SettingsController {
	
	@Autowired
	UserRepository userRepo;

	@RequestMapping(value = "", method = RequestMethod.POST)
	public String savesettings(@RequestParam("user") String username, @RequestParam("time") String option) {
		String email = username + "@fdmgroup.com";
		User user = userRepo.findByEmail(email);
		int lunch = Integer.parseInt(option);
		user.setLunchsetting(lunch);
		userRepo.save(user);
		return "redirect:/timesheetspage?name="+username;
}
}
