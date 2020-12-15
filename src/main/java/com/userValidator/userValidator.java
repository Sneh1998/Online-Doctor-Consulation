/*package com.userValidator;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.sneh.database.RegisteredUsers;
import com.sneh.service.docService;
import com.sneh.service.userService;
 

@Component
public class userValidator implements Validator{
	
	@Autowired
	private userService doc1;

	@Override
	public boolean supports(Class<?> clazz) {
		// TODO Auto-generated method stub
		return RegisteredUsers.class.equals(clazz);
	}

	@Override
	public void validate(Object target, Errors errors) {
		// TODO Auto-generated method stub
		RegisteredUsers r1=(RegisteredUsers) target;
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "firstName", "NotEmpty");
		if(r1.getFirstName().length()<6||r1.getFirstName().length()>32) {
			errors.rejectValue("firstName", "Size.userForm.firstName");
		}
		if(doc1.findByfirstName(r1.getFirstName())!=null) {
			errors.rejectValue("firstName", "Duplicate.userForm.firstName");
		}
		
		ValidationUtils.rejectIfEmptyOrWhitespace(errors, "lastName", "NotEmpty");
		if(r1.getLastName().length()<8||r1.getLastName().length()>32) {
			errors.rejectValue("lastName", "Size.userForm.lastName");
		}
		if(doc1.findByLastName(r1.getLastName())!=null) {
			errors.rejectValue("lastName", "Duplicate.userForm.lastName");
		}
		
	}

}
*/
