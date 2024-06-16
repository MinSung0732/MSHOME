package com.practice.ex.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.ex.dto.board.BoardDto;

@Repository
@Mapper
public interface BoardMapper {
	public ArrayList<BoardDto> getBoardList();
	public Long getTotalCount(@RequestParam(value="category" , defaultValue="리그 오브 레전드") String category);
}
