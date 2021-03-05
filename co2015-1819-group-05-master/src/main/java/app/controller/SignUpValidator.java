package app.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import app.domain.User;
import app.repository.UserRepository;

public class SignUpValidator implements Validator{
	@Autowired
	private UserRepository userRepo;

	@Override
	public boolean supports(Class<?> clazz) {
		return User.class.equals(clazz);
	}
	
	public SignUpValidator(UserRepository userRepo) {
		this.userRepo = userRepo;
	}

	@Override
	public void validate(Object target, Errors errors) {
		User user = (User)target;
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "email", "User email is empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password", "User password is empty");
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password2", "Confirm password is empty");
		if (!user.getEmail().contains("@fdmgroup.com")) {
			errors.rejectValue("email","", "Email is not valid.");
		}
		if (!user.getPassword().equals(user.getPassword2()) ) {
			errors.rejectValue("password2","","The confirm password is not match");
		}
		if (userRepo.findByEmail(user.getEmail()) == null) {
			errors.rejectValue("email","","User not found");
		} else if (   (userRepo.findByEmail(user.getEmail())).getPassword() != null ) {
			errors.rejectValue("password","","The email has already activated");
		}
	}

}
