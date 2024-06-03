<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/static/main/home.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="/static/main/favicon.ico" type="image/x-icon">
<link rel="icon" href="/static/main/favicon.ico" type="image/x-icon">
<title>M.S HOME</title>
</head>
<body>
	<div class="wrap">
		<div class="header">
			<div class="top-Search-Wrap">
				<img class="logo" src="/static/main/MSHOME LOGO.png">
				<p class="big-Title">M.S HOME</p>
				<p class="small-Title">createby.JMS</p>
				<input type="search" class="search-Bar" placeholder="🔎게시물 검색">
			</div>
			<div class="top-Function-Bar">
				<div class="top-Line"></div>
				<div class="top-Button">
					<a href="#"><img class="shopping-Basket" src="/static/main/ShoppingBasket.png"></a>
					<a href="/mypage"><img class="myProfile" src="/static/main/MyProfile.png"></a>
					<a href="#"><img class="message" src="/static/main/Message.png"></a>
				</div>
			</div>
		</div>
		<div class="container">
			<div class="sub-Menu">
				<div class="site-Navi">
					<p class="site">사이트 바로가기</p>
				</div>
				<div class="navi-Line">
				</div>
				<div class="navi-Text">
					<div class="navi-Link">
						<a href="#">게시판</a>
					</div>
					<div class="navi-Link">
						<a href="#">고객지원</a>
					</div>
					<div class="navi-Link">
						<a href="#">개요</a>
					</div>
				</div>
			</div>
			<div class="main-Banner">
				<div class="project-Card">
					<div class="banner-Image">
						<img class="banner" src="/static/main/MainBanner.jpg">
					</div>
					<div class="banner-Title">
						<div class="banner-Text">M.S HOME - CRUD PROJECT</div>
						<div class="banner-Content">대충 프로젝트 만들게된 계기와 어떻게 만들어졌는지에대한 설명</div>
					</div>
				</div>
				<div class="right-Banner">
					<div class="login">
						<c:choose>
							<c:when test="${SessionScope.u_Id eq null}">
							로그인을 해주세요.
								<div class="login-Margin">
									<div class="login-Id">
										<div class="id-Text">ID 입력창:</div>
										<div class="input-bar">
											<input class="id-Input" type="text" placeholder="아이디를 입력해주세요." maxlength="20">
										</div>
									</div>
									<div class="login-Pw">
										<div class="id-Text">PW 입력창:</div>
										<div class="input-bar">
											<input class="pw-Input" type="password" placeholder="비밀번호를 입력해주세요." maxlength="25">
										</div>
									</div>
								</div>
								<div class="login-Submit">
									<div class="login-Button">
										<button id="login" type="button">로그인</button>
									</div>
									<div class="login-Line">
										<div class="Reward-Line">
										</div>
									</div>
									<div class="id-Pw-Reward">
										<div class="reward-Text"><a href="#">ID찾기</a></div>
										<div class="reward-Text"><a href="#">PW찾기</a></div>
										<div class="reward-Text"><a href="#">회원가입</a></div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
			<div class="board-List">
			
			<%-- 게시판 탭 시작 --%>
			
				<div class="board-Category">
					<div class="category-Tabs">
						<c:forEach var="category" items="${category}" varStatus="status">
							<c:choose>
								<c:when test="${status.count eq '1'}">
									<input id="category-Game${status.count}" type="radio" name="tab-Item" checked>
								</c:when>
								<c:otherwise>
									<input id="category-Game${status.count}" type="radio" name="tab-Item">
								</c:otherwise>
							</c:choose>
							<label class="tab-Item" for="category-Game${status.count}">${category.c_Name}</label>
						</c:forEach>
						
						<%-- 탭 컨텐츠 --%>
						
						<div class="tab-Content" id="Game1">
							<div class="category-Title">${category[0].c_Name} 게시판</div>
							<div class="category-Category">
								<div class="tab-Title">제목</div>
								<div class="tab-Right">
									<div class="tab-Hit">조회수</div>
									<div class="tab-Recommend">추천수</div>
									<div class="tab-Reply">댓글수</div>
								</div>
							</div>
							<div class="category-Content">
								<c:forEach var="i" begin="1" end="6" step="1" varStatus="status">
									<div class="tab-Content-List">
										<div class="content-Ttile">${status.count}. 게임1 글</div>
										<div class="content-Right">
											<div class="tab-Hit">0</div>
											<div class="tab-Recommend">0</div>
											<div class="tab-Reply">0</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="tab-Content" id="Game2">
							<div class="category-Title">${category[1].c_Name} 게시판</div>
							<div class="category-Category">
								<div class="tab-Title">제목</div>
								<div class="tab-Right">
									<div class="tab-Hit">조회수</div>
									<div class="tab-Recommend">추천수</div>
									<div class="tab-Reply">댓글수</div>
								</div>
							</div>
							<div class="category-Content">
								<c:forEach var="i" begin="1" end="6" step="1" varStatus="status">
									<div class="tab-Content-List">
										<div class="content-Ttile">${status.count}. 게임2 글</div>
										<div class="content-Right">
											<div class="tab-Hit">조회수</div>
											<div class="tab-Recommend">추천수</div>
											<div class="tab-Reply">댓글수</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="tab-Content" id="Game3">
							<div class="category-Title">${category[2].c_Name} 게시판</div>
							<div class="category-Category">
								<div class="tab-Title">제목</div>
								<div class="tab-Right">
									<div class="tab-Hit">조회수</div>
									<div class="tab-Recommend">추천수</div>
									<div class="tab-Reply">댓글수</div>
								</div>
							</div>
							<div class="category-Content">
								<c:forEach var="i" begin="1" end="6" step="1" varStatus="status">
									<div class="tab-Content-List">
										<div class="content-Ttile">${status.count}. 게임3 글</div>
										<div class="content-Right">
											<div class="tab-Hit">조회수</div>
											<div class="tab-Recommend">추천수</div>
											<div class="tab-Reply">댓글수</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="tab-Content" id="Game4">
							<div class="category-Title">${category[3].c_Name} 게시판</div>
							<div class="category-Category">
								<div class="tab-Title">제목</div>
								<div class="tab-Right">
									<div class="tab-Hit">조회수</div>
									<div class="tab-Recommend">추천수</div>
									<div class="tab-Reply">댓글수</div>
								</div>
							</div>
							<div class="category-Content">
								<c:forEach var="i" begin="1" end="6" step="1" varStatus="status">
									<div class="tab-Content-List">
										<div class="content-Ttile">${status.count}. 게임4 글</div>
										<div class="content-Right">
											<div class="tab-Hit">조회수</div>
											<div class="tab-Recommend">추천수</div>
											<div class="tab-Reply">댓글수</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="tab-Content" id="Game5">
							<div class="category-Title">${category[4].c_Name} 게시판</div>
							<div class="category-Category">
								<div class="tab-Title">제목</div>
								<div class="tab-Right">
									<div class="tab-Hit">조회수</div>
									<div class="tab-Recommend">추천수</div>
									<div class="tab-Reply">댓글수</div>
								</div>
							</div>
							<div class="category-Content">
								<c:forEach var="i" begin="1" end="6" step="1" varStatus="status">
									<div class="tab-Content-List">
										<div class="content-Ttile">${status.count}. 게임5 글</div>
										<div class="content-Right">
											<div class="tab-Hit">조회수</div>
											<div class="tab-Recommend">추천수</div>
											<div class="tab-Reply">댓글수</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="tab-Content" id="Game6">
							<div class="category-Title">${category[5].c_Name} 게시판</div>
							<div class="category-Category">
								<div class="tab-Title">제목</div>
								<div class="tab-Right">
									<div class="tab-Hit">조회수</div>
									<div class="tab-Recommend">추천수</div>
									<div class="tab-Reply">댓글수</div>
								</div>
							</div>
							<div class="category-Content">
								<c:forEach var="i" begin="1" end="6" step="1" varStatus="status">
									<div class="tab-Content-List">
										<div class="content-Ttile">${status.count}. 게임6 글</div>
										<div class="content-Right">
											<div class="tab-Hit">조회수</div>
											<div class="tab-Recommend">추천수</div>
											<div class="tab-Reply">댓글수</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="tab-Content" id="Game7">
							<div class="category-Title">${category[6].c_Name} 게시판</div>
							<div class="category-Category">
								<div class="tab-Title">제목</div>
								<div class="tab-Right">
									<div class="tab-Hit">조회수</div>
									<div class="tab-Recommend">추천수</div>
									<div class="tab-Reply">댓글수</div>
								</div>
							</div>
							<div class="category-Content">
								<c:forEach var="i" begin="1" end="6" step="1" varStatus="status">
									<div class="tab-Content-List">
										<div class="content-Ttile">${status.count}. 게임7 글</div>
										<div class="content-Right">
											<div class="tab-Hit">조회수</div>
											<div class="tab-Recommend">추천수</div>
											<div class="tab-Reply">댓글수</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="tab-Content" id="Game8">
							<div class="category-Title">${category[7].c_Name} 게시판</div>
							<div class="category-Category">
								<div class="tab-Title">제목</div>
								<div class="tab-Right">
									<div class="tab-Hit">조회수</div>
									<div class="tab-Recommend">추천수</div>
									<div class="tab-Reply">댓글수</div>
								</div>
							</div>
							<div class="category-Content">
								<c:forEach var="i" begin="1" end="6" step="1" varStatus="status">
									<div class="tab-Content-List">
										<div class="content-Ttile">${status.count}. 게임8 글</div>
										<div class="content-Right">
											<div class="tab-Hit">조회수</div>
											<div class="tab-Recommend">추천수</div>
											<div class="tab-Reply">댓글수</div>
										</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="tab-Content" id="Game9">
							<div class="category-Title">${category[8].c_Name} 게시판</div>
							<div class="category-Category">
								<div class="tab-Title">제목</div>
								<div class="tab-Right">
									<div class="tab-Hit">조회수</div>
									<div class="tab-Recommend">추천수</div>
									<div class="tab-Reply">댓글수</div>
								</div>
							</div>
							<div class="category-Content">
								<c:forEach var="i" begin="1" end="6" step="1" varStatus="status">
									<div class="tab-Content-List">
										<div class="content-Ttile">${status.count}. 게임9 글</div>
										<div class="content-Right">
											<div class="tab-Hit">조회수</div>
											<div class="tab-Recommend">추천수</div>
											<div class="tab-Reply">댓글수</div>
										</div>
									</div>
								</c:forEach>
							</div>
							
						<%-- 탭 컨텐츠 --%>
						
						</div>
					</div>
				</div>
				
				<%-- 게시판 탭 끝 --%>
				
				<div class="popular-Board">
					<div class=popular-List>
						<input id="popular-Post" type="radio" name="popular-Item" checked>
						<label class="popular-Item" for="popular-Post">인기 게시글</label>
						<input id="popular-Category" type="radio" name="popular-Item">
						<label class="popular-Item" for="popular-Category">인기 카테고리</label>
						<div class="popular-Content" id="post-Popular">
							<div class="popular-Category">
								<div class="pl-List">
									<div class="popular-Title">제목</div>
									<div class="popular-Hit">조회수</div>
									<div class="popular-Recommend">추천수</div>
								</div>
							</div>
							<div class="popular-Category-Cotent">
								<c:forEach var="i" begin="1" end="10" step="1" varStatus="status">
									<div class="popular-Item-List">
										<div class="popular-Item-Title">${status.count}.인기 게시글</div>
										<div class="popular-Item-Hit">0</div>
										<div class="popular-Item-Recommend">0</div>
									</div>
								</c:forEach>
							</div>
						</div>
						<div class="popular-Content" id="category-Popular">
							<div class="popular-Category">
								<div class="pl-List2">
									<div class="popular-Title">제목</div>
									<div class="popular-Recommend">작성수</div>
								</div>
							</div>
							<div class="popular-Category-Cotent">
								<c:forEach var="i" begin="1" end="9" step="1" varStatus="status">
									<div class="popular-Item-List2">
										<div class="popular-Item-Title2">${status.count}.인기 카테고리</div>
										<div class="popular-Item-Recommend">0</div>
									</div>
								</c:forEach>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
		
		</div>
	</div>
</body>
</html>