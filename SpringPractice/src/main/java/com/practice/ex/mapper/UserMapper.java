package com.practice.ex.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.practice.ex.dto.user.UserDto;

@Repository
@Mapper
public interface UserMapper {
	public ArrayList<UserDto> userList();
}
