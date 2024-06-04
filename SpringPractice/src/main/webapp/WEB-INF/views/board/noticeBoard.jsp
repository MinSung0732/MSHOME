<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="/static/noticeBoard/noticeBoard.css" rel="stylesheet" type="text/css">
<link rel="shortcut icon" href="/static/main/favicon.ico" type="image/x-icon">
<link rel="icon" href="/static/main/favicon.ico" type="image/x-icon">
<title>M.S Board</title>
</head>
<body>
	<div class="wrap">
		<jsp:include page="/WEB-INF/views/homeDesign/header.jsp"></jsp:include>
		<div class="container">
			<div class="sub-Menu">
				<div class="site-Navi">
					<p class="site">사이트 바로가기</p>
				</div>
				<div class="navi-Line">
				</div>
				<div class="navi-Text">
					<div class="navi-Link">
						<a href="/board?category=All">게시판</a>
					</div>
					<div class="navi-Link">
						<a href="#">고객지원</a>
					</div>
					<div class="navi-Link">
						<a href="#">개요</a>
					</div>
				</div>
			</div>
		</div>
		<jsp:include page="/WEB-INF/views/homeDesign/footer.jsp"></jsp:include>
	</div>
</body>
</html>