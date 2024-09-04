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
			글읽기로 진입했어용
			<br>
			글분류: ${category}
			<br>
			글번호: ${readContent.b_No}
			<br>
			글제목: ${readContent.b_Title}
			<br>
			글내용: ${readContent.b_Content}
			<br>
			조회수: ${readContent.b_Hit}
			<br><br>
			<button class="delBtn">삭제</button>
		</div>
		<%-- footer jsp --%>
		<jsp:include page="/WEB-INF/views/homeDesign/footer.jsp"></jsp:include>
	</div>
	
	<script>
		$(document).ready(function () {
			$(".delBtn").click(function () {
				
				var category = "${category}";
				var bno = "${readContent.b_No}";
				
				$.ajax({
					type: "POST",
					url: "/board/delBoard",
					data: {
						category: category,
						bno: bno
					},
					success: function(response) {
						alert("글삭제 완료");
						window.location.href = "/board?category=" + category;
					},
					error: function(xhr, status, error) {
						alert("Error: " + error);
					}
				});
			});
		});
	</script>
</body>
</html>