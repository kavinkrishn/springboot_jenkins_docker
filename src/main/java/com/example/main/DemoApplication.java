package com.example.main;


import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.ComponentScan;

import jakarta.annotation.PostConstruct;

@SpringBootApplication
@ComponentScan("com.example")
public class DemoApplication {
	
	public static Logger logger = LoggerFactory.getLogger(DemoApplication.class);
	
	@PostConstruct
	public void intt() {
		logger.info("Application started.....");
	}
	public static void main(String[] args) {
		logger.info("Application executed.....");
		SpringApplication.run(DemoApplication.class, args);
	}

}
