<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
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
		<%-- header jsp --%>
		<jsp:include page="/WEB-INF/views/homeDesign/header.jsp"></jsp:include>
		<div class="container">
			<%-- subNavi jsp --%>
			<jsp:include page="/WEB-INF/views/homeDesign/subNavi.jsp"></jsp:include>
			글쓰기로 진입했어용
		</div>
		<%-- footer jsp --%>
		<jsp:include page="/WEB-INF/views/homeDesign/footer.jsp"></jsp:include>
	</div>
	
</body>
</html>