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
				<input type="search" class="searchBar" placeholder="🔎게시물 검색">
			</div>
		</div>
		<div class="container">
		<c:forEach var="user" items="${userInfo}">
			아이디: ${user.u_Id}
			<br>
			닉네임: ${user.u_NickName}
			<br>
			이름: ${user.u_Name}
			<br>
		</c:forEach>
		
		</div>
		<div class="footer">
		
		</div>
	</div>
	
</body>
</html>