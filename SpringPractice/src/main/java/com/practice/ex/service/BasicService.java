package com.practice.ex.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.practice.ex.dto.user.UserDto;
import com.practice.ex.mapper.UserMapper;

@Service
public class BasicService {
	
	@Autowired
	private UserMapper mapper;
	
	public ArrayList<UserDto> userList(){
		return mapper.userList();
	}

}
