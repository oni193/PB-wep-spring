<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="true"%>
<%
String id=null;
id = (String)session.getAttribute("admin_id");
// session_id라는 이름과 매칭되는 값을 얻어와서 id에 저장
%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Play Bowling</title>
<link rel="stylesheet" href="/resources/css/board.css">
<link rel="stylesheet" href="/resources/css/base.css">
<link rel="stylesheet"
	href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css"
	type="text/css" />
<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>
<script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
<script src="/resources/javascript/user.js"></script>
</head>

<body>
	<header>
		<div class="logo">
			<img src="/resources/image/logo.png">
		</div>
		<div class="menu">
			<div class="menu_top">
				<ul>

					<li><a href="./member/login">Login</a></li>
					<li><a href="./member/register">Register</a></li>
					<li><a href="/member/logout">Logout</a></li>

				</ul>
			</div>
			<nav>
				<ul class="navi">
					<li><a href="#">동호회</a></li>
					<li><a href="#">중고 거래</a></li>
					<li><a href="#">채팅</a></li>
					<li><a href="#">마이페이지</a>
						<ul class="submenu">
							<li><a href="#">내 정보보기</a></li>
							<li><a href="#">개인 점수관리</a></li>
							<li><a href="#">정기전 점수관리</a></li>
							<li><a href="#">탈퇴</a></li>
						</ul></li>
				</ul>
			</nav>
		</div>
	</header>
	<div class="explain">게시판&nbsp;리스트</div>
	<section>

		<div class="search">
			<div class="allSearch">
				<input type="text" id="searching" placeholder="&nbsp;작성자 아이디, 게시판명 ">
				<button id="search_btn">검색하기</button>
			</div>
			<div class="select">
				<button id="selectAll" type="button">
					전체 선택&nbsp;&nbsp;<img src="/resources/image/triangle.png">
				</button>
				<button id="selectDelete" type="button">
					선택 삭제&nbsp;&nbsp;<img src="/resources/image/triangle.png">
				</button>
			</div>

		</div>
		<div>
			<form method="get" action="managerBoard">
				<table>
					<th>게시물 번호</th>
					<th>제목</th>
					<th >닉네임</th>
					<th>글 작성일</th>
					<th >관리</th>
					<tbody>
						<c:forEach items="${list}" var="boardVO">
							<tr>
								<td>${boardVO.bnum}</td>
								<td>${boardVO.btitle}</td>
								<td>${boardVO.bid}</td>
								<td><fmt:formatDate pattern="yyyy-MM-dd"
										value="${boardVO.bdate}" /></td>
								<td><button type="submit" formaction="boardRemove" formmethod="post" id="more">삭제</button></td>
							</tr>
						</c:forEach>
					</tbody>
				</table>

			</form>
		</div>

		<div>
		<br>
		 	<c:if test="${prev}">
				<span> <a
					href="/manager/listPage?num=
								${startPageNum - 1}">이전</a>
				</span>
			</c:if>

			<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
				<span> <c:if test="${select!=num}">
						<a href="/manager/listPage?num=${num}">${num}</a>
					</c:if> <c:if test="${select==num }">
						<b>${num }</b>
					</c:if>
				</span>
			</c:forEach>


			<c:if test="${next}">
				<span> <a href="/manager/listPage?num=${endPageNum+1}">다음</a>
				</span>
			</c:if> 



<%-- 			 <c:forEach begin="1" end="${pageNum}" var="num">
							<span> <a href="/manager/listPage?num=${num}">${num}</a>
							</span>
						</c:forEach>  --%>
		</div>


		<!-- <div class="page">
    <ul class="pagination modal">
        <li><a href="#" class="first">처음 페이지</a></li>
        <li><a href="#" class="arrow left"> &lt; &lt; &lt;</a></li>
        <li><a href="#" class="active num">1</a></li>
        <li><a href="#" class="active num">2</a></li>
        <li><a href="#" class="active num">3</a></li>
        <li><a href="#" class="active num">4</a></li>
        <li><a href="#" class="active num">5</a></li>
        <li><a href="#" class="active num">6</a></li>
        <li><a href="#" class="active num">7</a></li>
        <li><a href="#" class="active num">8</a></li>
        <li><a href="#" class="active num">9</a></li>
        <li><a href="#" class="arrow right">&gt;&gt;&gt;</a></li>
        <li><a href="#" class="last">끝 페이지</a></li>
    </ul>
</div> -->
	</section>


	<footer>
		<div class="foot_top">
			<ul>
				<li><a href="#">이용약관</a></li>
				<li><a href="#">개인정보취급방침</a></li>
			</ul>
		</div>
		<div class="foot_bot">
			<p>Copyright SK2, All Rights Reserved.</p>
		</div>
	</footer>

</body>

</html>