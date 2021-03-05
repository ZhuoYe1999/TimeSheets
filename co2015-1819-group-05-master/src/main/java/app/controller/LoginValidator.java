package app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import app.domain.User;
import app.repository.UserRepository;

public class LoginValidator implements Validator {
	@Autowired
	UserRepository userRepo;
	
	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
        }
	
	public LoginValidator(UserRepository userRepo) {
		this.userRepo = userRepo;
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user = (User)target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "user.email.empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "", "User password is empty");
		if (!user.getEmail().contains("@fdmgroup.com")) {
			errors.rejectValue("email","", "Email is not valid.");
		}
		if (userRepo.findByEmail(user.getEmail()) == null) {
			errors.rejectValue("email","","User not found");
		} else if (   !((userRepo.findByEmail(user.getEmail())).getPassword().equals(user.getPassword())) ) {
			errors.rejectValue("password","","Password isn't correct.");
		}
	}	
}
