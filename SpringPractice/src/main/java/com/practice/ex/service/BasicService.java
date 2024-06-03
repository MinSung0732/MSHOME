package com.practice.ex.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practice.ex.dto.category.CategoryDto;
import com.practice.ex.dto.user.UserDto;
import com.practice.ex.mapper.CategoryMapper;
import com.practice.ex.mapper.UserMapper;

import lombok.AllArgsConstructor;

@Service
@AllArgsConstructor
public class BasicService {
	
	private UserMapper mapper;
	private CategoryMapper cMapper;
	
	public ArrayList<UserDto> userList(){
		return mapper.userList();
	}
	
	public ArrayList<CategoryDto> categoryList(){
		return cMapper.categoryList();
	}

}
