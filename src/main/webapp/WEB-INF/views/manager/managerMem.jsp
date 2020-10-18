	<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page session="false"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Play Bowling</title>
    <link rel="stylesheet" href="/resources/css/manager.css">
    <link rel="stylesheet" href="/resources/css/base.css">
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.8.18/themes/base/jquery-ui.css" type="text/css" />  
    <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.7.1/jquery.min.js"></script>  
    <script src="http://code.jquery.com/ui/1.8.18/jquery-ui.min.js"></script>
    <script src="/resources/javascript/user.js"></script>
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
                    <li><a href="#">중고 거래</a></li>
                    <li><a href="#">채팅</a></li>
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
    <div class="explain">
        회원&nbsp;리스트
    </div>
    <section>
    
    <div class="search">
        <div class="allSearch">
            <input type="text" id="searching" placeholder="&nbsp;이름, 아이디, 이메일, 번호, 주소, 닉네임 ">
            <button id="search_btn">검색하기</button>
        </div>
        <div class="dateselect">
            <div id="select1">가입일<input type="text" id="Date1"> - <input type="text" id="Date2"><img src="/resources/images/calendar.png" id="calendar"><br></div>
            <div id="select2">최종&nbsp;방문일<input type="text" id="Date3"> - <input type="text" id="Date4"><img src="/resources/images/calendar.png"></div>
        </div>
    </div>
    <div>
		<form method="get" action="managerMem">    
        <table>
            <th>번호</th>
            <th>아이디</th>
            <th>이름</th>
            <th>닉네임</th>
            <th>이메일</th>
            <th>주소</th>
            <th>가입일</th>
            <th colspan="2">관리</th>
            <tbody> 
            	<c:forEach items="${list}" var="memberVO">
            	<tr>
                <td>${memberVO.mem_num}</td>
                <td>${memberVO.mem_id}</td>
                <td>${memberVO.mem_name}</td>
                <td>${memberVO.mem_nickName}</td>
                <td>${memberVO.mem_email}</td>
                <td>${memberVO.mem_address}</td>
                <td><fmt:formatDate pattern="yyyy-MM-dd"
											value="${memberVO.join_Date}" /></td>
                <td><input type="submit" value="탈퇴" id="more" formaction="managerMemRemove" formmethod="post"></td>
                <td><input type="submit" value="수정" id="more" formaction="managerMemRemove" formmethod="post"></td>
                </tr>
                </c:forEach>
            </tbody>
        </table>
    </form>
</div>
<div class="page">
    <ul class="pagination modal">
        <li><a href="#" class="first">처음 페이지</a></li>
        <li><a href="#" class="arrow left"> &lt; &lt; &lt;</a></li>
        <li><a href="#" class="active num">1</a></li>
        <li><a href="#" class="active num">2</a></li>
        <li><a href="#" class="active num">3</a></li>
        <li><a href="#" class="active num">4</a></li>
        <li><a href="#" class="active num">5</a></li>
        <li><a href="#" class="active num">6</a></li>
        <li><a href="#" class="active num">7</a></li>
        <li><a href="#" class="active num">8</a></li>
        <li><a href="#" class="active num">9</a></li>
        <li><a href="#" class="arrow right">&gt;&gt;&gt;</a></li>
        <li><a href="#" class="last">끝 페이지</a></li>
    </ul>
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