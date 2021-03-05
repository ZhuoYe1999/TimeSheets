package app.controller;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.domain.User;
import app.repository.UserRepository;

@Controller
@RequestMapping("/")
public class MainController {
	@Autowired
	UserRepository userRepo;
	
	@InitBinder
    protected void initBinder(WebDataBinder binder) {
    	binder.addValidators(new LoginValidator(userRepo));
    	}

	@RequestMapping("/")
	public String start() {
		return "login";
	}
	
	@RequestMapping(value = "/loginaccount", method = RequestMethod.POST)
	public String loginAccount(@ModelAttribute("user") @Valid User user, BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("error",true);
			return "login";
		} else {
		User newUser = new User();
		newUser = userRepo.findByEmail(user.getEmail());
		if (newUser.getUsersRole().getRoleName().equals("LINEMANAGER")){
			return "managerpage";
		} else if (newUser.getUsersRole().getRoleName().equals("ADMIN")) {
			return "adminmain";
		} else {
			String names [] = newUser.getEmail().split("@fdmgroup.com");
			return "redirect:/timesheetspage?name="+names[0];
		}
	}
}
}
