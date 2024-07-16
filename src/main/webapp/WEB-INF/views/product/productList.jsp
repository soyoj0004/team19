<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%-- now : 현재 시간의 시분초를 now 변수에 세팅 --%>
<c:set var="now" value="<%=new java.util.Date()%>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>productList.jsp</title>
<%-- css 자원요청 문자열에 시시각각 변하는 시간을 파라미터로 전달하기 때문에 서브는 매번 새로운 요청으로 착각, 
   늘 css 읽어온다. 캐싱안함. --%>
<link rel="stylesheet" type="text/css"
	href="<c:url value='/resources/css/product.css' />?v=${now}" />
</head>
<body>
	<div class="container">
		<%-- 헤더부분 include 액션 태그 사용, c:url 사용금지, 경로 직접 지정해야함. --%>
		<jsp:include page="/resources/common/mainheader.jsp" />
		<main>
			<h3>상품 목록</h3>
			<form action="<c:url value='/productList'/>" method="get" class="search-form">
				<input type="text" name="keyword" placeholder="검색어 입력" /> <input
					type="submit" value="검색" />
			</form>

		 	<c:if test="${not empty productList}">
				<div class="content">
					<div class="product-content">
						<c:forEach var="product" items="${productList }" varStatus="idx">
							<div class="product-item">
								<img src="${contextPath}/resources/uploads/${product.img1 }" alt="${product.img1 }">
								<p>
									<c:out value="${product.name}" />
								</p>
								<p class="price">
									<c:out value="${product.price }" />
								</p>
							</div>
						</c:forEach>
					</div>
				</div>
				<%-- <table border="1">
					<tr>
						<td align="center" colspan="8">${page_navigator}</td>
					</tr>
				</table> --%>
 			</c:if>
			<c:if test="${sessionScope.memberVo != 'null' && sessionScope.memberVo.memberId == 'java' }">
			<br> <a href="<c:url value='/product/create'/>">상품 작성</a>
			</c:if>
		</main>
	</div>
</body>
</html>
