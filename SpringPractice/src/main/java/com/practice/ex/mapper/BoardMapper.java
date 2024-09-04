package com.practice.ex.mapper;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.RequestParam;

import com.practice.ex.dto.board.BoardDto;
import com.practice.ex.porcessor.PagingBlock;

@Repository
@Mapper
public interface BoardMapper {
	public ArrayList<BoardDto> getBoardList(
											@Param("category") String category,
											@Param("startRow") Long startRow,
											@Param("perPage") Long perPage);
	public Long getTotalCount(@RequestParam(value="category" , defaultValue="리그 오브 레전드") String category);
	public BoardDto readBoard(
								@Param("bno") String bno,
								@Param("category") String category);
	public Long viewPoint(@Param("bno") String bno);
	public void delBoard(
								@Param("bno") String bno,
								@Param("category") String category);
}