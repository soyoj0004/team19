<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<%-- now : 현재 시간의 시분초를 now 변수에 세팅 --%>
<c:set var="now" value="<%= new java.util.Date() %>" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>마이페이지</title>
</head>
<body>
	<div class="container">
		<%-- 헤더부분 include 액션 태그 사용, c:url 사용금지, 경로 직접 지정해야함. --%>
		<jsp:include page="/resources/common/mainheader.jsp" />
        <main>
			<table border="1">
				<tr>
					<th>회원ID</th>
					<td><c:out value="${memberVo.memberId }"/></td>
				</tr>
				<tr>	
					<th>회원비밀번호</th>
					<td><c:out value="${MemberVo.password }" /></td>
				</tr>
				<tr>	
					<th>이름</th>
					<td><c:out value="${MemberVo.name }" /></td>
				</tr>
				<tr>		
					<th>이메일</th>
					<td><c:out value="${MemberVo.email }" /></td>
				</tr>
				<tr>		
					<th>전화번호</th>
					<td><c:out value="${MemberVo.phone }" /></td>
				</tr>
				<tr>		
					<th>성별</th>
					<td><c:out value="${MemberVo.gender }"/></td>
				</tr>	
			</table>
		</main>
	</div>	
</body>
</html>