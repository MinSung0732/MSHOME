package com.practice.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.practice.ex.service.BasicService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class MyPageController {
	
	private final BasicService service;

	@GetMapping("/mypage")
	public String home(Model m) {
		System.out.println("mypage 컨트롤러 진입");
		m.addAttribute("userInfo", service.userList());
		return "mypage/mypage";
	}
	
}
