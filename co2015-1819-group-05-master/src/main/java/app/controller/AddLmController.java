package app.controller;

import java.util.Arrays;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

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
@RequestMapping("/addlm")
public class AddLmController {
	
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
        return "addlm";
        }
	
    @RequestMapping(value="addlm", method=RequestMethod.POST)
    public String addEmployee(String users, Model model) {
        String textInput = users.replaceAll("[ |,|;|']", "");
        if (textInput.isEmpty()) {
        model.addAttribute("error1", true);
        return "addlm";
        } else if (!(textInput.matches("(((\\w+)(\\.{1})(\\w+)(@fdmgroup\\.com{1}))+)"))) {
        model.addAttribute("error2", true);
        return "addlm";
        } else {
    	Set<String> items = new HashSet<String>(Arrays.asList(textInput.split("@fdmgroup.com")));
        Iterator<String> iterator = items.iterator();
		Role lm = new Role();
		lm.setRoleName("LINEMANAGER");
		roleRepo.save(lm);
        while(iterator.hasNext()){
        	User employee = new User();
        	employee.setEmail((iterator.next()).concat("@fdmgroup.com"));
        		if (userRepo.findByEmail(employee.getEmail())==null) {
        			employee.setUsersRole(lm);
        			userRepo.save(employee);
        		}
         }
		return "lmdone";
        }
        }
}