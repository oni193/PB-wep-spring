<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/score.css">
    <title>Play Bowling</title>
    
    <script src="/resources/js/jquery-3.5.1.min.js"></script>
    <script src="/resources/js/jquery-migrate-1.4.1.min.js"></script>
    <script src="/resources/js/jquery-ui.min.js"></script>
    <script src="/resources/js/jquery-chart.js"></script>
    <script>getCanvas.start();</script>
    <!-- 차트 링크 -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.4.0/Chart.min.js"></script>
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

    <section id="score_table">
        <div class="table_back">
            <h4> 개인 점수 </h4>
              <hr>
              <table class="table">
                <thead>
                  <tr>
                    <th>주</th>
                    <th>6월</th>
                    <th>7월</th>
                    <th>8월</th>
                  </tr>
                </thead>
                <tbody>
                  <tr> 
                    <td>첫째주</td>
                    <td>120</td>
                    <td>150</td>
                    <td>180</td>
                  </tr>
                  <tr>
                    <td>둘째주</td>
                    <td>125</td>
                    <td>134</td>
                    <td>178</td>
                  </tr>
                  <tr>
                    <td>셋째주</td>
                    <td>140</td>
                    <td>140</td>
                    <td>160</td>
                  </tr>
                  <tr>
                    <td>넷째주</td>
                    <td>140</td>
                    <td>140</td>
                    <td>160</td>
                  </tr>
                </tbody>
              </table>
        </div>
    </section>

    <section id="chart_main">

        <div class="container">
            <canvas id="myChart" width="400" height="400"></canvas>
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