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
        <h3>회원정보</h3>
    <form class="information" method="POST" action="/member/register">
        <div class="form_i">
            <label for="mem_id">아이디(ID)</label>
            <input type="text" id="mem_id" class="form-control" name="mem_id">
            <!-- <div class="invalid-feedback" style="width:100%;">아이디를 적어주세요.</div> -->
        </div>
        <div class="form_i">
            <label for="mem_pw">비밀번호</label>
            <input type="password" class="form-control" id="mem_pw" name="mem_pw">
            <!-- <div class="invalid-feedback">유효한 비밀번호가 필요합니다.</div> -->
        </div>
        <div class="form_i">
            <label for="mem_email">이메일</label>
            <input type="email" class="form-control" id="mem_email" placeholder="&ensp;&ensp;yours@example.com"
            name="mem_email">
            <!-- <div class="invalid-feedback">올바른 이메일을 입력하세요.</div> -->
        </div>
        <div class="form_i">
            <label for="mem_name">이름</label>
            <input type="text" id="mem_name" class="form-control" name="mem_name">
            <!-- <div class="invalid-feedback" style="width:100%;">이름를 적어주세요.</div> -->
        </div>
        <div class="form_i">
            <label for="mem_nickName">닉네임</label>
            <input type="text" class="form-control" id="mem_nickName" name="mem_nickName">
        </div>
        <div class="form_i">
            <label for="mem_age">나이</label>
            <input type="text" class="form-control" id="mem_age" placeholder="&ensp;&ensp;ex.29" name="mem_age">
        </div>
        <div class="form_i">
            <label for="mem_address">주소</label>
            <input type="text" name="mem_address"class="form-control">
        </div>        
        <button class="submit_button" type="submit">가입하기</button>
    </form>
    </div>
</div>
</body>
</html>