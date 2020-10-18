<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page session="false"%>
<!DOCTYPE>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="/resources/css/boardMain.css">
<link href="/resources/css/bootstrap.css" rel="stylesheet">
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
			<form action="boardModify" method="post">
			<p>
				<label>글번호</label> <input type="text" name="bnum"
					value="${boardVO.bnum}" readonly="readonly">
			</p>
			<p>
				<label>제목</label><input type="text" name="btitle"
					value="${boardVO.btitle}">
			</p>
			
			<label>내용</label>
			<textarea name=bcontent rows="10" cols="70">${boardVO.bcontent}</textarea>
			<br>
			<button type="submit">완료</button>
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