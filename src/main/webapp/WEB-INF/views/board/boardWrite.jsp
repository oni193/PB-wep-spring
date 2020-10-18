<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
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
		<form method="post">
			<div class="container">
				<div class="row">
					<table class="table table-striped"
						style="text-align: center; border: 1px solid #dddddd">
						<thead>
							<tr>
								<th colspan="2"
									style="background-color: #eeeeee; text-align: center;">게시판
									글쓰기 양식</th>
							</tr>
						</thead>
						<tbody>
						
						
						
							<tr>
								<td><input type="text" class="form-control"
									placeholder="글 제목" name="btitle" maxlength="50" /></td>
							</tr>
							<tr>
								<td><textarea class="form-control" placeholder="글 내용"
										name="bcontent" maxlength="2048" style="height: 350px;"></textarea></td>
							</tr>
							
							
							
							
						</tbody>
					</table>
					<input type="submit" class="btn btn-primary pull-right" value="글쓰기" />
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