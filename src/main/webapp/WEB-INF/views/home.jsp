<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="resources/css/index.css" media="all">
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
                     <li><a href="#">점수 보기</a></li>
                     <li><a href="#">점수 추가</a></li>
                     <li><a href="#">점수 수정</a></li>
                  </ul></li>
               <li><a href="#">마이페이지</a>
                  <ul class="sub">
                     <li><a href="#">정보 보기</a></li>
                     <li><a href="#">정보수정</a></li>
                  </ul></li>
            </ul>
         </nav>
      </div>
   </header>

   <div class="main">
      <div class="slide">
         <section class="slideshow">
            <img src="resources/image/im1.jpg" alt="main_img1"> <img
               src="resources/image/im2.jpg" alt="main_img2"> <img
               src="resources/image/im3.jpg" alt="main_img3"> <img
               src="resources/image/im4.jpg" alt="main_img4"> <img
               src="resources/image/im5.jpg" alt="main_img5"> <img
               src="resources/image/im6.jpg" alt="main_img6"> <img
               src="resources/image/im7.jpg" alt="main_img7">
         </section>
      </div>
      <div id="maindeco_1"></div>
      <section class="menu_index">
      <div class="menu_a">
               <ul>
                  <li id="menu_a_top"><img src="resources/image/menua1.jpg"></li>
                  <li id="menu_a_bot"><p>
                        <b>볼링</b>은 공을 굴려 핀이나 다른 목표물을 쓰러뜨리는 스포츠이다. 일반적으로 매끄러운 나무, 혹은 합성
                        재질로 된 바닥에 공을 굴려 핀을 맞추는 방식이다.
                     </p></li>
               </ul>
            </div> <div class="menu_a">
               <ul>
                  <li id="menu_a_top"><img src="resources/image/menua2.jpg"></li>
                  <li id="menu_a_bot"><p>K2가 제공하는 Play Bowling 서비스를 통하여
                        여러분의 볼링 점수를 기록해보세요.</p></li>
               </ul>
            </div><div class="menu_a">
               <ul>
                  <li id="menu_a_top"><img src="resources/image/menua3.jpg"></li>
                  <li id="menu_a_bot"><p>볼링 점수 향상 정도를 그래프로 볼 수 있으며, 게시판을 통해
                        다양한 볼링 동호회 친구들을 사귀고 이야기를 나눌 수 있습니다.</p></li>
               </ul>
            </div>
      </section>

   </div>
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