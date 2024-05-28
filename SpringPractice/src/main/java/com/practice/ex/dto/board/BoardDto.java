package com.practice.ex.dto.board;

import lombok.Data;

@Data
public class BoardDto {
	private String B_No;
	private String B_Category;
	private String U_Id;
	private String U_NickName;
	private String U_Image;
	private String B_Title;
	private String B_Hit;
	private String B_Content;
	private String B_ReplyCount;
	private String B_CreateAt;
	private String B_UpdateAt;
	private String B_Recommend;
}
