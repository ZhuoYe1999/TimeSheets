package app.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/forgotpassword")
public class ForgotPasswordController {
	
	@RequestMapping("/")
    public String signUp(Model model) {
        return "forgotpassword";
        }

}
