package com.example.demo.controllers;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class WelcomeController {
	
	@RequestMapping("/")
	public String init(Model model) {
		
		model.addAttribute("heading","Car Selling And Buying Management");
		return "index";
	}

}
