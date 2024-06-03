package com.practice.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.practice.ex.service.BasicService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class BasicController {
	
	private final BasicService service;

	@GetMapping("/")
	public String home(Model m) {
		System.out.println("Home 컨트롤러 진입");
		m.addAttribute("userInfo", service.userList());
		m.addAttribute("category", service.categoryList());
		return "home";
	}
	
}
