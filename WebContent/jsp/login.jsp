<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 这是独立登陆页面 -->
<html>
<head>
<meta charset="utf-8">
<title>登陆</title>
<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" />
<link rel="stylesheet" type="text/css" href="../css/page_style_all.css" />
<!-- Animate.css -->
<link rel="stylesheet" href="../css/login/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="../../css/login/icomoon.css">
<!-- Theme style  -->
<link rel="stylesheet" href="../css/login/style.css">


<link rel="stylesheet" type="text/css"
	href="../css/font-awesome-4.7.0/css/font-awesome.min.css" />
<style type="text/css">
.padding_top {
	padding-top: 20px;
}

.logo {
	margin-top: 100px;
	width: 5%;
}

h1 {
	text-align: center;
	font-weight: 300;
}

.body_login {
	text-align: left;
	width: 300px;
	height: 237.93px;
	background: whitesmoke;
	border: 0.0625rem;
	/* 弧形边框 */
	/* border-top-left-radius: 5px;
				border-top-right-radius: 5px;
				border-bottom-left-radius: 5px;
				border-bottom-right-radius: 5px; */
	border-radius: 5px;
}

.input {
	border: 1px solid #d1d5da;
	box-shadow: inset 0 1px 2px rgba(27, 31, 35, .075);
	font-size: 16px;
	line-height: 20px;
	min-height: 20px;
	padding: 6px 8px;
	background-color: rgb(232, 240, 254) !important;
	border-radius: 5px;
}

li {
	list-style: none;
	font-size: 12px;
}

li>input {
	margin-top: 4px;
	background: #E8F0FE;
}

.btn {
	display: block;
	text-align: center;
	width: 82%;
}
</style>
</head>
<body style="height: 100px">


	<div class="div1" align="center">
		<!-- 总div -->
		<!-- 顶 -->
		<div id="div_header">
			<!-- 顶部div -->
			<div id="div3">
				<!-- 顶部里 图标div -->
				<img src="../img/logo.png" class="logo">
			</div>
		</div>
		<div id="div_body">
			<!-- 字 -->
			<div id="font_welcome">
				<h1>欢迎登陆苍蓝星</h1>
			</div>
			<!-- 字结束 -->
			<form action="${pageContext.request.contextPath }/user?type=login"
				method="post">
				<div class="body_login">
					<ul class="padding_top">
						<li>请输入你的学号：</li>
						<li><input type="text" name="stuNumber" class="input" /></li>
						<li class="padding_top">请输入你的密码：</li>
						<li><input type="password" name="password" class="input" /></li>
						<br>
						<input type="submit" name="" id="" value="登陆"
							class="btn btn-primary" />
					</ul>
				</div>
			</form>


		</div>
	</div>
	<script src="../js/coooooooool.js"></script>
</body>
</html>
