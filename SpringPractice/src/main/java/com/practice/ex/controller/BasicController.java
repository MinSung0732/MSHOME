package com.practice.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class BasicController {

	@GetMapping("/")
	public String home() {
		System.out.println("Home 컨트롤러 진입");
		return "home";
	}
	
}
