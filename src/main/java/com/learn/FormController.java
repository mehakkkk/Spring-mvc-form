package com.learn;

import java.util.Map;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.beans.propertyeditors.StringTrimmerEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class FormController {
	
	private Map<String, String> experience;
	
	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {
		
		StringTrimmerEditor stringTrimmerEditor = new StringTrimmerEditor(true);
		
		dataBinder.registerCustomEditor(String.class, stringTrimmerEditor);
	}
	
	
	
	@RequestMapping("/")
	public String displayForm(Model model)
	{
		model.addAttribute("candidate",new Candidate());
		return "form";
	}
	
	@RequestMapping("/processForm")
	public String processForm(@Valid @ModelAttribute("candidate") Candidate theCandidate, BindingResult bindingResult)
	{
		System.out.print(bindingResult);
		if(bindingResult.hasErrors())
			return "form";
		else
			return "confirm";
	}

}
