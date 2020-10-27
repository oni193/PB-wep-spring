<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/boardboot.css">
<title>Play Bowling</title>
</head>
<body>
	<header>
      <div class="logo">
         <img src="/resources/image/logo.png">
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

	<section id="boardReadForm">
		<form method="get" action="boardRead">
			<p>
				<label>글번호</label> 
				<input type="text" name="bnum"
					value="${boardVO.bnum}" readonly="readonly">
			</p>
			<p>
				<label>작성자</label> 
				<input type="text" name="bid"
					value="${boardVO.bid}" readonly="readonly">
			</p>
			<p>
				<label>제목</label> 
				<input type="text" name="btitle"
					value="${boardVO.btitle}" readonly="readonly">
			</p>
			<p>
				<label>내용</label>
				<textarea name=bcontent rows="10" cols="70" readonly="readonly">${boardVO.bcontent}</textarea>
				<br>
				<div id="but">
				<button type="submit" formaction="boardModify" formmethod="get">수정</button>
				<button type="submit" formaction="boardRemove" formmethod="post">삭제</button>
				<button type="submit" formaction="boardList" formmethod="get">목록</button>
				</div>
		</form>
	</section>
	
	<footer>
			<div class="foot_top">
				<ul>
					<li><a href="/member/policy">이용약관</a></li>
					<li><a href="/member/personpolicy">개인정보취급방침</a></li>
				</ul>
			</div>
			<div class="foot_bot">
				<p>Copyright K2, All Rights Reserved.</p>
			</div>
		</footer>
</body>
</html>