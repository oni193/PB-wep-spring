<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="resources/css/index.css" media="all" >
    <link rel="stylesheet" href="resources/css/index_small.css" media="screen and(max-device-width:900px) and(min-device-width:1px)">
    <script src="resources/js/jquery-3.5.1.min.js"></script>
    <script src="resources/js/jquery-migrate-1.4.1.min.js"></script>
    <script src="resources/js/jquery-ui.min.js"></script>
    <script src="resources/js/jqueryUser.js"></script>
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
                		<c:when test="${empty USER }">
	                   	 	<li><a href="/member/login">Login</a></li>
	                    	<li><a href="/member/register">Register</a></li>
                    	</c:when>
                    
                    <c:otherwise>
                    	<li><a href="/member/logout">Logout</a></li>
                    </c:otherwise>
                    </c:choose>
                </ul>
            </div>
        <nav>
            <ul class="navi">
                <li><a href="#">동호회</a></li>
                <li><a href="#">정기전</a></li>  
                <li><a href="/mypage/mypage">마이페이지</a>
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

    <div class="main">
    <div class="slide">
    <section class="slideshow">
        <img src="resources/image/im1.jpg" alt="main_img1">
        <img src="resources/image/im2.jpg" alt="main_img2">
        <img src="resources/image/im3.jpg" alt="main_img3">
        <img src="resources/image/im4.jpg" alt="main_img4">
        <img src="resources/image/im5.jpg" alt="main_img5">
        <img src="resources/image/im6.jpg" alt="main_img6">
        <img src="resources/image/im7.jpg" alt="main_img7">
    </section>
    </div>
    <div id="maindeco_1"></div>
    <section class="menu_index">
        <a href="#"><div class="menu_a">
            <ul>
                <li id="menu_a_top"><img src="resources/image/menua1.jpg"></li>
                <li id="menu_a_bot"><p>설명 설명</p></li>
            </ul>
        </div></a>
        <a href="#"><div class="menu_a">
            <ul>
                <li id="menu_a_top"><img src="resources/image/menua2.jpg"></li>
                <li id="menu_a_bot"><p>설명 설명</p></li>
            </ul>
        </div></a>
        <a href="#"><div class="menu_a">
            <ul>
                <li id="menu_a_top"><img src="resources/image/menua3.jpg"></li>
                <li id="menu_a_bot"><p>설명 설명</p></li>
            </ul>
        </div></a>
    </section>
    </div>
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