package app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import app.domain.Role;
import app.domain.User;
import app.repository.RoleRepository;
import app.repository.UserRepository;

@Controller
@RequestMapping("/addadmin")
public class AddAdminController {
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	RoleRepository roleRepo;
	
	@RequestMapping("/")
    public String startadmin(Model model) {
        return "addadmin";
        }
	
    @RequestMapping(value="addadmin", method=RequestMethod.POST)
    public String addEmployee(String users, Model model) {
        String textInput = users.trim();
        if (textInput.isEmpty()) {
        model.addAttribute("error1", true);
        return "addadmin";
        } else if (!(textInput.matches("(((\\w+)(\\.{1})(\\w+)(@fdmgroup\\.com{1}))+)"))) {
        model.addAttribute("error2", true);
        return "addadmin";
        } else {
		Role lm = new Role();
		lm.setRoleName("ADMIN");
		roleRepo.save(lm);
		User employee = new User();
        employee.setEmail(textInput);
        employee.setUsersRole(lm);
        userRepo.save(employee);
        		}
         
		return "adminfinished";
        }
        }

