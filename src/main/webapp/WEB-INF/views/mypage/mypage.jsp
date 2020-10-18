<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/mypagemain.css">
    <title>Play Bowling</title>
    <script language="javascript">
        function showPopup() 
        { window.open("final.html", "a", 
        "width=550, height=450, left=100, top=50"); }
    </script>
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

    <section id="main-content">
        <div class="mypage-info">
            <img src="images/logo2.png">
            <h3>내 정보</h3>
            <div id="infoback">
                <form method="GET">
                    <div id="formgroup">
                        <label>이름</label>
                        <input type="text" class="formcontrol">
                    </div>
                    <div id="formgroup">
                        <label>아이디(ID)</label>
                        <input type="text" class="formcontrol">
                    </div>
                    <div id="formgroup">
                        <label>비밀번호</label>
                        <input type="password" class="formcontrol">
                    </div>
                    <div id="formgroup">
                        <label>닉네임</label>
                        <input type="text" class="formcontrol">
                    </div>
                    <div id="formgroup">
                        <label>나이</label>
                        <input type="text" class="formcontrol">
                    </div>
                    <div id="formgroup">
                        <label>이메일</label>
                        <input type="text" class="formcontrol">
                    </div>
                    <div id="formgroup">
                        <label>주소</label>
                        <input type="text" class="formcontrol">
                    </div>
                    <div class="inform_btn">
                      <button type="button" id="btn1"><a href="/mypage/mypage_revice">수정하기</a></button>
                      <button type="submit" id="btn2"><a href="#pop1" >탈퇴하기</a></button>
                    </div>
                </form>

                <div class="popup" id="pop1">
                        <h3><a href="#">탈퇴하시겠습니까?</a></h3>    
                    <input class="loginbtn" type="button"   value="YES"  onclick="showPopup();" >
                    <div id="close">
                        <a href="#a">닫기</a>
                    </div>
                </div>  

            </div>            
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