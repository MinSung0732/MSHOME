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
			<div class="board-Menu">
				현재 카테고리 : ${category}
				<div class="board-Menu-Bottom">
					<button class="board-Category" id="lol" value="리그 오브 레전드" type="button">리그 오브 레전드</button>
					<button class="board-Category" id="val" value="발로란트" type="button">발로란트</button>
					<button class="board-Category" id="bag" value="배틀그라운드" type="button">배틀그라운드</button>
					<button class="board-Category" id="ow" value="오버워치" type="button">오버워치</button>
					<button class="board-Category" id="maple" value="메이플 스토리" type="button">메이플 스토리</button>
					<button class="board-Category" id="loa" value="로스트아크" type="button">로스트아크</button>
					<button class="board-Category" id="dnf" value="던전앤파이터" type="button">던전앤파이터</button>
					<button class="board-Category" id="bd" value="검은사막" type="button">검은사막</button>
					<button class="board-Category" id="sta" value="스타크래프트" type="button">스타크래프트</button>
				</div>
			</div>
		</div>
		<%-- footer jsp --%>
		<jsp:include page="/WEB-INF/views/homeDesign/footer.jsp"></jsp:include>
	</div>
	
	<script>
		$(document).ready(function () {
			  $(".board-Category").click(function () {
				  var category = $(this).val();
				  
				  alert('카테고리 변경: ' + category);
				  
				  var newUrl = '/board?category=' + category;
				  
				  window.location.href = newUrl;
			  });
			});
	</script>
</body>
</html>