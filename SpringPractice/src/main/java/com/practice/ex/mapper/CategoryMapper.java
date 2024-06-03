package com.practice.ex.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;

import com.practice.ex.dto.category.CategoryDto;

@Repository
@Mapper
public interface CategoryMapper {
	public ArrayList<CategoryDto> categoryList();
}
