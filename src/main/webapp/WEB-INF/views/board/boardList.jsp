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
         <img src="resources/image/logo.png">
      </div>
      <div class="menu">
         <div class="menu_top">
            <ul>
               <c:choose>
                  <c:when test="${empty USER}">
                     <li><a href="/member/login">Login</a></li>
                     <li><a href="/member/register">Register</a></li>
                  </c:when>
                  <c:otherwise>
                     <li><a href="/member/logout">Logout</a></li>
                  </c:otherwise>
               </c:choose>
            </ul>
         </div>
         <nav id="menu1">
            <ul class="main">
               <li><a href="/board/listPage?num=1">동호회</a></li>
               <li><a href="#">점수 관리</a>
                  <ul class="sub">
                     <li><a href="/personal_score/score_select">점수 보기</a></li>
                     <li><a href="/personal_score/score_insert">점수 추가</a></li>
                     <li><a href="/personal_score/score_update">점수 수정</a></li>
                  </ul></li>
               <li><a href="#">마이페이지</a>
                  <ul class="sub">
                     <li><a href="/mypage/mypage">정보 보기</a></li>
                     <li><a href="/mypage/mypage_revice">정보수정</a></li>
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
						<c:forEach begin="1" end="${pageNum}" var="num">
							<span> <a href="/board/listPage?bnum=${bnum}">${bnum}</a>
							</span>z
						</c:forEach>
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