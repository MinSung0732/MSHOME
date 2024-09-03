package com.practice.ex.controller;

import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.ex.dto.board.BoardDto;
import com.practice.ex.porcessor.PagingBlock;
import com.practice.ex.service.BasicService;

import lombok.AllArgsConstructor;

@Controller
@AllArgsConstructor
public class BoardController {
	
	private final BasicService service;

	@GetMapping("/board")
	public String noticeBoard(@RequestParam(name = "category" , required = false, defaultValue = "리그 오브 레전드") String category,
							Model m,
							PagingBlock pagingBlock) {
		System.out.println("--------------------> noticeBoard 컨트롤러 진입");
		List<BoardDto> list = service.getBoardList(pagingBlock, category);
		
		m.addAttribute("userInfo", service.userList());
		m.addAttribute("boardList", list);
		m.addAttribute("paging", pagingBlock);
		m.addAttribute("boardCount", service.getTotalCount(category));
		m.addAttribute("category", category);
		System.out.println("컨트롤러 정보 ----> " + category);
		return "board/noticeBoard";
	}
	
	@GetMapping("/board/boardWrite")
	public String Write(@RequestParam(name = "category" , required = false, defaultValue = "리그 오브 레전드") String category,
			Model m) {
		System.out.println("--------------------> boardWrite 컨트롤러 진입");
		return "board/boardWrite";
	}
	
	@GetMapping("/board/boardRead")
	public String Read(@RequestParam(name = "category" , required = false, defaultValue = "리그 오브 레전드") String category,
			@RequestParam(name = "bno" , required = false, defaultValue = "0") String bno,
			Model m) {
		System.out.println("--------------------> boardRead 컨트롤러 진입");
		m.addAttribute("readContent", service.read(bno));
		System.out.println(service.read(bno));
		return "board/boardRead";
	}
	
}
