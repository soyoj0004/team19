<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />

<%-- now : 현재 시간의 시분초를 now 변수에 세팅 --%>
<c:set var="now" value="<%= new java.util.Date() %>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="<c:url value='/resources/css/board.css' />?v=${now}" />
<script	src='<c:url value="/resources/ckeditor/ckeditor.js" />'>
</script>
<script	src='<c:url value="/resources/ckeditor/config.js" />'>
</script>
</head>
<body>
   <div class="container">
		<%-- 헤더부분 include 액션 태그 사용, c:url 사용금지, 경로 직접 지정해야함. --%>
		<jsp:include page="/resources/common/mainheader.jsp" />
        <main>
			<c:if test="${ not empty sessionScope.memberVo }">
			<%-- 이거 memberId가 java일때만 아래가 나오게한다. 이거임  &&인거 보니까 로그인해야지 보임
			<c:if test="${ not empty sessionScope.memberVo && sessionScope.memberVo.memberId == 'java' }">
			--%>
				<h3>게시물 작성</h3>
				<form action="<c:url value='/product/create'/>" 
					  method="post" > 
					<div>
						<label for="title">상품 ID</label>
						<input type="text" id="proId" name="proId">
					</div> 
					<div>
						<label for="title">카테고리ID</label>
						<input type="text" id="categoryKey_ID" name="categoryKey_ID">
					</div> 
					<div>
						<label for="title">상품명</label>
						<input type="text" id="name" name="name">
					</div> 
					<div>
						<label for="title">상품 설명</label>
						<textarea id="content" name="content" cols="80" rows="10"></textarea>
					</div> 
					<div>
						<label for="title">금액</label>
						<input type="NUMBER" id="price" name="price">
					</div> 
					<div>
						<label for="title">상품 이미지 첨부1</label>
						<input type="file" id="img1" name="img1" > <br>
						<label for="title">상품 이미지 첨부2</label>
						<input type="file" id="img2" name="img2" > <br>
						<label for="title">상품 이미지 첨부3</label>
						<input type="file" id="img3" name="img3" > <br>
						<label for="title">상품 이미지 첨부4</label>
						<input type="file" id="img4" name="img4" > <br>
						<label for="title">상품 이미지 첨부5</label>
						<input type="file" id="img5" name="img5" > <br>
					</div> 
					<div>
						<input type="submit" value="저장">
						<input type="reset" value="다시쓰기">
					</div>	
				</form>
			</c:if>
			<c:if test="${ empty sessionScope.memberVo }">
				<script>
					alert('관리자만 게시물을 작성할 수 있습니다');
					window.location.href="${contextPath}/login";
				</script>
			</c:if>	
		</main>
	</div>		
</body>
</html>