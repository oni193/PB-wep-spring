<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html>
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
									placeholder="작성자" name="bid" maxlength="50" /></td>
							</tr>
						
							<tr>
								<td><input type="text" class="form-control"
									placeholder="글 제목" name="btitle" maxlength="50" /></td>
							</tr>
							<tr>
								<td><textarea class="form-control" 
								placeholder="글 내용" name="bcontent" maxlength="2048" 
								style="height: 350px;"></textarea></td>
							</tr>
						</tbody>
					</table>
					<div id="btn">
					<input type="submit" class="btn btn-primary pull-right" value="글쓰기" />
					</div>
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