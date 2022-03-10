package com.haulene.example.k8shpa.controllers;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
@RequestMapping("/")
public class HelloController {
    
    @GetMapping("/sayHello")
	public String sayHello() {
		// System.out.print("arg0");
		double x = 1d;
		for(int i = 0 ; i < 1000000 ; i++) {
			// some logic to consume more cpu
			x += Math.sqrt(x);
		}
		return "Hello!";
	}
}
