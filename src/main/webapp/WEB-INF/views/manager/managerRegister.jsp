<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="/resources/css/login_join.css" media="all" >
    <script src="/resources/js/jquery-3.5.1.min.js"></script>
    <script src="/resources/js/jquery-migrate-1.4.1.min.js"></script>
    <script src="/resources/js/jquery-ui.min.js"></script>
    <script src="/resources/js/jqueryUser.js"></script>
	<title>회원가입</title>
</head>
<body>



    <div class="join_form">
    <div class="join_top">
        <img src="/resources/image/logo2.png">
        <h2>회&ensp;원&ensp;가&ensp;입</h2>
    </div>
    <div class="join_information">
        <h3>관리자 정보</h3>
    <form class="information" method="POST" action="/manager/managerRegister">
        <div class="form_i">
            <label for="admin_id">아이디(ID)</label>
            <input type="text" id="admin_id" class="form-control" name="admin_id">
            <!-- <div class="invalid-feedback" style="width:100%;">아이디를 적어주세요.</div> -->
        </div>
        <div class="form_i">
            <label for="admin_pw">비밀번호</label>
            <input type="password" class="form-control" id="admin_pw" name="admin_pw">
            <!-- <div class="invalid-feedback">유효한 비밀번호가 필요합니다.</div> -->
        </div>
        <div class="form_i">
            <label for="admin_name">이름</label>
            <input type="text" id="admin_name" class="form-control" name="admin_name">
            <!-- <div class="invalid-feedback" style="width:100%;">이름를 적어주세요.</div> -->
        </div>
        <div class="form_i">
            <label for="admin_nickName">닉네임</label>
            <input type="text" class="form-control" id="admin_nickName" name="admin_nickName">
        </div>
        <button class="submit_button" type="submit">가입하기</button>
    </form>
    </div>
</div>
</body>
</html>