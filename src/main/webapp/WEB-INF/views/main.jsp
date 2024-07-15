<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!-- 컨텍스트패스(진입점폴더) 변수 설정 -->
<c:set var="contextPath" value="${pageContext.request.contextPath }" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>main.jsp</title>
<style>
.mainheader .cart {
	max-height: 30px; /* 장바구니 이미지의 최대 높이 설정 */
	margin-left: 20px; /* 왼쪽 여백 추가 */
}

.nav-menu {
	background-color: #ffffff;
	padding: 20px;
	display: flex;
	box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.nav-menu .nav-category .cate {
	margin: 0 15px;
	text-align: left;
	text-decoration: none;
}

.nav-menu .nav-category .imgmenu {
	width: 20px; /* 원하는 너비로 설정 */
	height: auto; /* 높이는 자동으로 설정 */
	vertical-align: middle; /* 텍스트와 수직 정렬 */
	margin-right: 10px; /* 텍스트와의 간격 조절 */
}

.nav-menu .nav-categorymain {
	margin-left: 30px;
}

.nav-menu .nav-categorymain a {
	margin: 0 15px;
	text-align: center;
	text-decoration: none;
}

.content {
	padding: 20px;
}

.content .slideshow-container {
	width: 100%;
	max-width: 800px; /* 최대 너비 설정 */
	margin: auto;
	position: relative;
	overflow: hidden;
}

.content .mySlides {
	display: none;
}

.content .mySlides img {
	width: 100%;
	height: 400px; /* 고정된 높이 설정 */
	object-fit: cover; /* 이미지가 비율을 유지하며 잘 맞도록 조정 */
}

.product-content {
	display: flex;
	flex-wrap: wrap;
	justify-content: space-between;
}

.product-item {
	width: 23%; /* 4개의 아이템을 한 줄에 표시 */
	box-sizing: border-box;
	margin-bottom: 20px;
	text-align: center;
	border: 1px solid #e0e0e0;
	padding: 10px;
}

.product-item img {
	width: 100%;
	height: auto;
}

.product-item .price {
	color: #ff5722;
	font-weight: bold;
	margin-top: 10px;
}

.footer {
	background-color: #f1f1f1;
	text-align: center;
	padding: 10px;
	position: fixed;
	bottom: 0;
	width: 100%;
}
</style>
</head>
<body>
	<div>
		<jsp:include page="/resources/common/mainheader.jsp" />
	</div>
	<!-- 네비게이션 바 시작 -->
	<div class="nav-menu">
		<div class="nav-category">
			<img src="/resources/image/menubar.png" class="imgmenu"> 
			<a href="/category2">카테고리</a>
		</div>
		<div class="nav-categorymain">
			<a href="<c:url value='/board/list'/>">신상품</a> <a
				href="<c:url value='/category3'/>">베스트</a> <a
				href="<c:url value='/category4'/>">특가/혜택</a> <a
				href="<c:url value='/category5'/>">계절별음식</a>
		</div>
	</div>
	<!-- 네비게이션 바 끝 -->

	<!-- 메인 콘텐츠 시작 -->
	<div class="content">
		<div class="slideshow-container">
			<div class="mySlides fade">
				<img src="/resources/image/orange1.jpg">
			</div>
			<div class="mySlides fade">
				<img src="/resources/image/logo.png">
			</div>
			<div class="mySlides fade">
				<img src="/resources/image/slide3.jpg">
			</div>
		</div>
		<div class="product-content">
			<div class="product-item">
				<img src="/resources/image/orange1.jpg" alt="상품 이미지 1">
				<p>[하코야] 살얼음 동동 냉메밀 소바 2인분</p>
				<p class="price">7,920원</p>
			</div>
			<div class="product-item">
				<img src="/resources/image/orange1.jpg" alt="상품 이미지 2">
				<p>[KF365] 1+등급 무항생제 특란 20구</p>
				<p class="price">5,394원</p>
			</div>
			<div class="product-item">
				<img src="/resources/image/orange1.jpg" alt="상품 이미지 3">
				<p>[애플하우스] 즉석 떡볶기</p>
				<p class="price">9,265원</p>
			</div>
			<div class="product-item">
				<img src="/resources/image/orange1.jpg" alt="상품 이미지 4">
				<p>[KF365] 참기름 곱창 캔김 2종</p>
				<p class="price">3,900원</p>
			</div>
		</div>
	</div>
	<!-- 메인 콘텐츠 끝 -->

	<!-- 푸터 시작 -->
	<footer class="footer"> © 2024 Your Company. All Rights
		Reserved. </footer>
	<!-- 푸터 끝 -->

	<script>
    let slideIndex = 0;
    showSlides();

    function showSlides() {
        let slides = document.getElementsByClassName("mySlides");
        for (let i = 0; i < slides.length; i++) {
            slides[i].style.display = "none";  
        }
        slideIndex++;
        if (slideIndex > slides.length) {slideIndex = 1}    
        slides[slideIndex-1].style.display = "block";  
        setTimeout(showSlides, 2000); // Change image every 2 seconds
    }
    </script>
</body>
</html>

</html>