<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>관리자 로그인 페이지</title>
    <link href="/resources/css/login_join.css" type="text/css" rel="stylesheet">
</head>
<body>
    <form method="POST" class="loginForm" action="/manager/managerLogin">
        <h2>로그인</h2>

        <div class="idForm">
            <input type="text" class="id" placeholder="ID" name="admin_id">
        </div>
        <div class="passForm">
            <input type="password" class="pw" placeholder="Password" name="admin_pw">
        </div>

        <button type="submit" class="btn" onclick="button()">LOGIN</button>
        <div class="bottom_text">
            	회원이 아닙니까? <a href="/manager/managerRegister">회원가입</a>
        </div>
    </form>
</body>
</body>
</html>