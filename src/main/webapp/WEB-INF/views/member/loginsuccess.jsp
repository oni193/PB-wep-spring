<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>로그인 성공 페이지</title>
    <link href="/resources/css/login_join.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form method="POST" action="url" class="loginForm">
        <h2>로그인</h2>
        <div class="login_success">
        
        <c:if test="${USER != null}">${USER.mem_id}님 환영합니다.</c:if>
        
        <c:if test="${USER == null}">
        	<p style="color:#f00;">로그인에 실패했습니다. </br> 아이디 또는 패스워드를 확인해주세요! </p>
       	</c:if>
       	
        </div>
        <a href="/"><button type="button" class="btn" onclick="button()">확&nbsp;인</button></a>
        <div class="bottom_logout">
        로그아웃 하시겠습니까? <a href="/member/logout"> 로그아웃</a>
        </div>
    </form>
</body>
</html>