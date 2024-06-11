package com.practice.ex.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.ex.service.BasicService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class BoardController {
	
	private final BasicService service;

	@GetMapping("/board")
	public String noticeBoard(@RequestParam(name = "category" , required = false, defaultValue = "리그 오브 레전드") String category,Model m) {
		System.out.println("--------------------> noticeBoard 컨트롤러 진입");
		m.addAttribute("userInfo", service.userList());
		m.addAttribute("category", category);
		return "board/noticeBoard";
	}
	
}
