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
import java.util.HashSet;
import java.util.Arrays;
import java.util.Set;
import java.util.Iterator;
import java.util.*;

@Controller
@RequestMapping("/adminpage")
public class AdminController {
	
	@Autowired
	UserRepository userRepo;
	
	@Autowired
	RoleRepository roleRepo;
	
//	@InitBinder
//    protected void initBinder(WebDataBinder binder) {
//    	binder.addValidators(new AdminValidator());
//    	}
	
	@RequestMapping("/")
    public String startadmin(Model model) {
        return "adminpage";
        }
	
    @RequestMapping(value="addemployee", method=RequestMethod.POST)
    public String addEmployee(String users, Model model) {
        String textInput = users.replaceAll("[ |,|;|']", "");
        if (textInput.isEmpty()) {
        model.addAttribute("error1", true);
        return "adminpage";
        } else if (!(textInput.matches("(((\\w+)(\\.{1})(\\w+)(@fdmgroup\\.com{1}))+)"))) {
        model.addAttribute("error2", true);
        return "adminpage";
        } else {
    	Set<String> items = new HashSet<String>(Arrays.asList(textInput.split("@fdmgroup.com")));
        Iterator<String> iterator = items.iterator();
		Role lm = new Role();
		lm.setRoleName("EMPLOYEE");
		roleRepo.save(lm);
        while(iterator.hasNext()){
        	User employee = new User();
        	employee.setEmail((iterator.next()).concat("@fdmgroup.com"));
        		if (userRepo.findByEmail(employee.getEmail())==null) {
        			employee.setUsersRole(lm);
        			userRepo.save(employee);
        		}else {
            	//add a report saying "users already existed -> not added"
        		}
         }
		return "admindone";
        }
        }
}
