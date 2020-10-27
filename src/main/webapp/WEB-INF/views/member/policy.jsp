<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Play Bowling</title>
    <link rel="stylesheet" href="/resources/css/policy.css" media="all">
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

    <div class="notice">
        <br>        
    K2는 법령의 규정에 따라 수집·보유 및 처리하는 개인정보를 <br>
    공공업무의 적절한 수행과 정보주체의 권익을 보호하기 위하여<br>
     적법하고 적정하게 취급할 것입니다. <br>
    또한, K2는 관련 법령에서 규정한 바에 따라 <br>
    K2에서 보유하고 있는 개인정보에 대한 열람청구권 및 정정청구권 등 <br>
    이용자의 권익을 존중하며, <br>
    여러분은 이러한 법령상 권익의 침해 등에 대하여 <br>
    행정심판법에서 정하는바에 따라 행정심판을 청구할 수 있으며, <br>
    개인정보분쟁조정위원회, 개인정보침해신고센터 등에 <br>
    분쟁해결이나 상담 등을 신청할 수 있습니다. <br>
    K2의 개인정보 처리방침은 현행 「개인정보보호법」에 근거를 두고 있습니다.<br>
    개인정보를 처리하는 우리원 소관 홈페이지의 경우 <br>
    해당 홈페이지에 별도의 개인정보처리방침을 정하여 운영하고 있습니다.<br>
</div>



 <footer>
      <div class="foot_top">
         <ul>
            <li><a href="/member/policy">이용약관</a></li>
            <li><a href="/member/personpolicy">개인정보취급방침</a></li>

         </ul>
      </div>
      <div class="foot_bot">
      <ul>
         <li>
            Copyright K2, All Rights Reserved.
         </li>
      </ul>
      </div>
   </footer>
</body>
</html>