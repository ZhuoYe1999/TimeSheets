package app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import app.domain.Table;
import app.domain.User;
import app.repository.UserRepository;

	@Controller
	@RequestMapping("/managerpage")
	public class ManagerpageController {
		@Autowired
		UserRepository userRepo;

		@RequestMapping("/")
		public String linemanager(Model model) {
			return "managerpage";
		}
	
}
