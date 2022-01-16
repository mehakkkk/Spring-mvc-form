package com.learn;

import javax.validation.constraints.Min;
import javax.validation.constraints.NotBlank;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;

import org.hibernate.validator.constraints.Length;


public class Candidate {
	
	//constructor
	public Candidate()
	{
		
	}
	String title;
	
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	@NotNull(message = "Name required")
	String firstName;
	public String getFirstName() {
		return firstName;
	}
	public void setFirstName(String firstName) {
		this.firstName = firstName;
	}
	
	String lastName;
	public String getLastName() {
		return lastName;
	}
	public void setLastName(String lastName) {
		this.lastName = lastName;
	}

	@NotBlank(message="experience required")
	String exp;
	public String getExp() {
		return exp;
	}
	public void setExp(String exp) {
		this.exp = exp;
	}

	@Min(value = 200000,message = "CTC must be greater than 2lpa")
	Float ctc;
	public Float getCtc() {
		return ctc;
	}
	public void setCtc(Float ctc) {
		this.ctc = ctc;
	}

	@NotEmpty(message = "Select atleast one language")
	String[] language;
	public String[] getLanguage() {
		return language;
	}
	public void setLanguage(String[] language) {
		this.language = language;
	}
	@NotBlank(message = "Country Code required")
	String code;
	public String getCode() {
		return code;
	}
	public void setCode(String code) {
		this.code = code;
	}
	
	@NotNull(message = "Gender is mandatory")
	String gender;
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}
	
	@NotNull(message = "Phone number is required")
	@Pattern(regexp="[0-9]{10}",message = "Only digits allowed")
	@Length(min = 10,max = 15,message = "min 10 digit phone number required")
	String phone;
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}

	
}
