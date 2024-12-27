package com.example.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class Controller {
	
	@GetMapping("/msg")
	public String getSampleMessage() {
		return "Hello World!";
	}
	
	
	@GetMapping("/test")
	public String getTestMessage() {
		return "This is the JAVA and Spring boot integartion...";
	}
	
	@GetMapping("/sample")
	public String getDemotMessage() {
		return "Sample Test Page";
	}

	

}
