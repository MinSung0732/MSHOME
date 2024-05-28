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
			<div class="topSearchWrap">
				<img class="logo" src="/static/main/MSHOME LOGO.png">
				<p class="bigTitle">M.S HOME</p>
				<p class="smallTitle">createby.JMS</p>
				<input type="search" class="searchBar" placeholder="🔎게시물 검색">
			</div>
			<div class="topFunctionBar">
				<div class="topLine"></div>
				<div class="topButton">
					<img class="shoppingBasket" src="/static/main/ShoppingBasket.png">
					<img class="myProfile" src="/static/main/MyProfile.png">
					<img class="message" src="/static/main/Message.png">
				</div>
			</div>
		</div>
		<div class="container">
			<div class="subMenu">
				<div class="siteNavi">
					<p class="site">사이트 바로가기</p>
				</div>
				<div class="naviLine">
				</div>
				<div class="naviText">
					<div class="naviLink">
						<a href="#">게시판</a>
					</div>
					<div class="naviLink">
						<a href="#">고객지원</a>
					</div>
					<div class="naviLink">
						<a href="#">개요</a>
					</div>
				</div>
			</div>
			<div class="mainBanner">
				<div class="projectCard">
					<div class="bannerImage">
						<img class="banner" src="/static/main/MainBanner.jpg">
					</div>
					<div class="bannerTitle">
						<div class="bannerText">M.S HOME - CRUD PROJECT</div>
						<div class="bannerContent">대충 프로젝트 만들게된 계기와 어떻게 만들어졌는지에대한 설명</div>
					</div>
				</div>
				<div class="rightBanner">
					<div class="login">
						<c:choose>
							<c:when test="${SessionScope.u_Id eq null}">
							로그인을 해주세요.
								<div class="loginMargin">
									<div class="loginId">
										<div class="idText">ID 입력창:</div>
										<div class="inputbar">
											<input class="idInput" type="text" placeholder="아이디를 입력해주세요." maxlength="20">
										</div>
									</div>
									<div class="loginPw">
										<div class="idText">PW 입력창:</div>
										<div class="inputbar">
											<input class="pwInput" type="password" placeholder="비밀번호를 입력해주세요." maxlength="25">
										</div>
									</div>
								</div>
								<div class="loginSubmit">
									<div class="loginButton">
										<button id="login" type="button">로그인</button>
									</div>
									<div class="loginLine">
										<div class="RewardLine">
										</div>
									</div>
									<div class="idPwReward">
										<div class="rewardText"><a href="#">ID찾기</a></div>
										<div class="rewardText"><a href="#">PW찾기</a></div>
										<div class="rewardText"><a href="#">회원가입</a></div>
									</div>
								</div>
							</c:when>
							<c:otherwise>
								
							</c:otherwise>
						</c:choose>
					</div>
				</div>
			</div>
		</div>
		<div class="footer">
		
		</div>
	</div>
	
</body>
</html>