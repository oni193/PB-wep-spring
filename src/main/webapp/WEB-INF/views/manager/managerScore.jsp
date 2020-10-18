
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Play Bowling</title>
    <link rel="stylesheet" href="/resources/css/manageScore.css">
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
        점수&nbsp;관리
    </div>
    <section>
    
    <div class="search">
        <div class="allSearch">
            <input type="text" id="searching" placeholder="&nbsp;회원 아이디, 회원 이름 ">
            <button id="search_btn">검색하기</button>
        </div>
        <div class="select">
            <button id="selectAll" type="button">전체 선택&nbsp;&nbsp;<img src="/resources/images/triangle.png"></button>
            <button id="selectDelete" type="button">선택 삭제&nbsp;&nbsp;<img src="/resources/images/triangle.png"></button>
            </div>
        
    </div>
    <div>
    
        <table>
            <th><input type="checkbox"></th>
            <th>번호</th>
            <th>아이디</th>
            <th>이름</th>
            <th>경기 날짜</th>
            <th>1게임 점수</th>
            <th>2게임 점수</th>
            <th>3게임 점수</th>
            <th>평균</th>
            <th>관리</th>
            <tr>
                <td><input type="checkbox"></td>
                <td>1</td>
                <td>abc1234</td>
                <td>김혜원</td>
                    <td>2020-09-15</td>
                    <td>100</td>
                    <td>150</td>
                    <td>100</td>
                    <td>116.6</td>
                    <td><input type="button" value="수정" id="more">
                        <input type="button" value="삭제" id="delete"></td>
            </tr>
        
        </table>
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