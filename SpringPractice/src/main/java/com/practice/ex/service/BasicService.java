package com.practice.ex.service;

import java.util.ArrayList;

import org.springframework.stereotype.Service;

import com.practice.ex.dto.board.BoardDto;
import com.practice.ex.dto.category.CategoryDto;
import com.practice.ex.dto.user.UserDto;
import com.practice.ex.mapper.BoardMapper;
import com.practice.ex.mapper.CategoryMapper;
import com.practice.ex.mapper.UserMapper;
import com.practice.ex.porcessor.PagingBlock;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BasicService {
	
	private UserMapper mapper;
	private CategoryMapper cMapper;
	private BoardMapper bMapper;
	
	// UserMapper mapper 영역
	public ArrayList<UserDto> userList(){
		return mapper.userList();
	}
	
	// CategoryMapper cMapper 영역
	public ArrayList<CategoryDto> categoryList(){
		return cMapper.categoryList();
	}
	
	// BoardMapper bMapper 영역
	public ArrayList<BoardDto> getBoardList(PagingBlock pagingBlock,
											String category){
		Long totalCount = bMapper.getTotalCount(category);
		
		 if (totalCount == 0) {
	            return new ArrayList<>();
	     }
		
		pagingBlock.setRow();
		pagingBlock.setNum(totalCount);
		System.out.println("서비스 정보 ----> " + category);
		return bMapper.getBoardList(category, pagingBlock.getStartRow(), pagingBlock.getPerPage());
	}
	
	public Long getTotalCount(String category) {
		return bMapper.getTotalCount(category);
	}

}
