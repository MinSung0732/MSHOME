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
			<div class="board-List">
				<div class="board-Name">${category} 게시판에 오신것을 환영합니다.</div>
				게시글 갯수 : ${boardCount}
				<div class="post-Type">
					<div class="post-No">작성번호</div>
					<div class="post-Category">말머리</div>
					<div class="post-Title">제목</div>
					<div class="post-Writer" >작성자</div>
					<div class="post-Date">작성일</div>
					<div class="post-Hit">조회수</div>
					<div class="post-Recommend">추천수</div>
				</div>
				<div class="board-Print">
					<c:forEach items="${boardList}" var="list" varStatus="st">
						<div class="post-List">
							<div class="post-No">${list.b_No}</div>
							<div class="post-Category">${list.b_Category}</div>
							<a href="/board/boardRead?category=${category}&bno=${list.b_No}" class="read"><div class="post-Title">${list.b_Title}</div></a>
							<div class="post-Writer">${list.u_NickName}</div>
							<div class="post-Date">${list.b_CreateAt}</div>
							<div class="post-Hit">${list.b_Hit}</div>
							<div class="post-Recommend">${list.b_Recommend}</div>
						</div>
					</c:forEach>
				</div>
				<div class="board-Paging">
			        <div class="board-Paging-Count">
			            <ul class="pagination">
		                    <c:choose>
		                    <%-- 이전 버튼 활성화 / 비활성화 --%>
                                <c:when test="${paging.pre}">
                                    <a class="page-link" href="/board?category=${category}&page=${paging.page - 1}" aria-label="Previous">
                                        <span aria-hidden="true"><<</span>
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <span class="page-link" aria-hidden="true"><<</span>
                                </c:otherwise>
                           	</c:choose>
                           	
                           	<%-- 페이징 숫자 구현 --%>
			                <c:forEach var="i" begin="${paging.startNum}" end="${paging.lastNum}">
			                    <div class="paging-Number">
			                    	<c:if test="${i == paging.page}">
			                    		<span class="page-Link" id="page-Current">${i}</span>
			                    	</c:if>
			                    	<c:if test="${i != paging.page}">
				                    	<a class="page-link" href="/board?category=${category}&page=${i}">${i}</a>
			                    	</c:if>
			                    </div>
			                </c:forEach>
			                
			                <%-- 다음 버튼 활성화 / 비활성화 --%>
		                    <c:choose>
                                <c:when test="${paging.next}">
                                    <a class="page-link" href="/board?category=${category}&page=${paging.page + 1}" aria-label="Next">
                                        <span aria-hidden="true">>></span>
                                    </a>
                                </c:when>
                                <c:otherwise>
                                    <span class="page-link" aria-hidden="true">>></span>
                                </c:otherwise>
                           	</c:choose>
			            </ul>
			        </div>
				    <div class="post-create">
				    	<button type="button" class="write">글 쓰기</button>
				    </div>
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
			  
			  $(".write").click(function () {
				  
				  var category = "${category}";
				  
				  alert('현재 카테고리: ' + category);
				  
				  var newUrl = '/board/boardWrite?category=' + category;
				  
				  window.location.href = newUrl;
			  });
			});
	</script>
</body>
</html>