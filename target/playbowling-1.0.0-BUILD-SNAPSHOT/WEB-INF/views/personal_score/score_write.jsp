<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Play Bowling</title>
    <link rel="stylesheet" href="/resources/css/score_write.css">
    <!-- // jQuery UI CSS파일 --> 
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
    <!-- // jQuery 기본 js파일 -->
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
    <!-- // jQuery UI 라이브러리 js파일 -->
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <script src="/resources/js/jquery-date.js"></script>
</head>
<body>
    <header>
        <div class="logo">
            <img src="images/logo.png">
        </div>
        <div class="menu">
            <div class="menu_top">
                <ul>
					<c:if test="${member.mem_id == null}">
                    <li><a href="./member/login">Login</a></li>
                    <li><a href="./member/register">Register</a></li>
					</c:if>
					<c:if test="${member.mem_id != null}">
                    <li><a href="/member/logout">Logout</a></li>
					</c:if>
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
                        </ul>
                    </li>
                </ul>
            </nav>
        </div>
    </header>

    <section id="score_write">
        <div class="wrap">
            <form method="POST">
                <div id="formgroup">
                    <label>날짜선택</label>
                    <input type="text" id="datepicker">
                </div>
                <div id="formgroup">
                    <label>1게임</label>
                    <input type="text" id="formcontrol" >
                </div>
                <div id="formgroup">
                    <label>2게임</label>
                    <input type="text" id="formcontrol" >
                </div>
                <div id="formgroup">
                    <label>3게임</label>
                    <input type="text" id="formcontrol" >
                </div>
                <div id="formgroup">
                    <label>오늘의 평균</label>
                    <input type="text" id="formcontrol" >
                </div>
                <div id="submit_btn">
                    <button type="submit" id="save">저장하기</button>
                    <button type="submit" id="reset">다시작성하기</button>
                </div>
            </form>
        </div>
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