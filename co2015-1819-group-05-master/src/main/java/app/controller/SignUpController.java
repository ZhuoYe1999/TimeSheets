package app.controller;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.beans.factory.annotation.Autowired;

import app.domain.User;
import app.repository.UserRepository;


@Controller
@RequestMapping("/signup")
public class SignUpController {
	@Autowired
	UserRepository userRepo;
	
	@InitBinder
    protected void initBinder(WebDataBinder binder) {
    	binder.addValidators(new SignUpValidator(userRepo));
    	}
	
	@RequestMapping("/")
    public String signUp(Model model) {
        return "signup";
        }
	
	//need to change the form to form:form in signup.jsp
	@RequestMapping(value = "/submitsignup", method = RequestMethod.POST)
	public String createAccount(@ModelAttribute("user") @Valid User user,BindingResult result, Model model) {
		if (result.hasErrors()) {
			model.addAttribute("error",true);
        	return "signup";
    	} else {
    	User newUser =	userRepo.findByEmail(user.getEmail());
    	//System.out.println(user.getEmail());
    	newUser.setEmail(user.getEmail());
       	//System.out.println(newUser.getEmail());
    	newUser.setPassword(user.getPassword());
       	//System.out.println(newUser.getPassword());
    	userRepo.save(newUser);
		return "signupsuccess";
    	}
	}
	
}
