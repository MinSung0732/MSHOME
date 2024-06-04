package com.practice.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import com.practice.ex.service.BasicService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class BoardController {
	
	private final BasicService service;

	@GetMapping("/board")
	public String noticeBoard(Model m) {
		System.out.println("--------------------> noticeBoard 컨트롤러 진입");
		m.addAttribute("userInfo", service.userList());
		return "board/noticeBoard";
	}
	
}
