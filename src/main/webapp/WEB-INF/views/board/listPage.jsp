<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/boardMain.css">
<link rel="stylesheet" href="/resources/css/bootstrap.min.css">
<title>Play Bowling</title>
</head>
<body>
	<header>
		<div class="logo">
			<img src="/resources/images/logo.png">
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
					<li><a href="#">정기전</a></li>
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

	<section>
		<form method="get" action="boardWrite">
			<div class="container">
				<div class="row">
					<table class="table table-striped"
						style="text-align: center; border: 1px solid #dddddd">
						<thead>
							<tr>
								<th style="background-color: #eeeeee; text-align: center;">번호</th>
								<th style="background-color: #eeeeee; text-align: center;">제목</th>
								<th style="background-color: #eeeeee; text-align: center;">작성자</th>
								<th style="background-color: #eeeeee; text-align: center;">작성일</th>
								<th style="background-color: #eeeeee; text-align: center;">조회수</th>
							</tr>
						</thead>
						<tbody>
							<c:forEach items="${list}" var="boardVO">
								<tr>
									<td>${boardVO.bnum}</td>
									<td><a href='/board/boardRead?bnum=${boardVO.bnum}'>${boardVO.btitle}</a></td>
									<td>${boardVO.bid}</td>
									<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
											value="${boardVO.bdate}" /></td>
									<td><span class="badge bg-red">${boardVO.readcount}</span></td>
								</tr>

							</c:forEach>
						</tbody>
					</table>
					<div>
						<c:if test="${prev}">
							<span>
							 <a href="/board/listPage?num=
								${startPageNum - 1}">이전</a>	
							</span>
						</c:if>
						
							<c:forEach begin="${startPageNum}" end="${endPageNum}" var="num">
							<span>
							<c:if test="${select!=num}">
								<a href ="/board/listPage?num=${num}">${num}</a>
							</c:if>
							<c:if test="${select==num }">
							<b>${num }</b>
							</c:if>
							</span>
							</c:forEach>
							
							
						<c:if test="${next}">
							<span>
							<a href="/board/listPage?num=${endPageNum+1}">다음</a>
							</span>
						</c:if>
						
						
						
						<%-- <c:forEach begin="1" end="${pageNum}" var="num">
							<span> <a href="/board/listPage?num=${num}">${num}</a>
							</span>
						</c:forEach> --%>
					</div>






					<br> <a href="boardWrite.html"
						class="btn btn-primary pull-right" type="submit">글쓰기</a>
				</div>
			</div>
		</form>
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