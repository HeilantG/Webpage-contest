<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 这是独立注册页面 -->
<html>
	<head>
		<meta charset="utf-8">
		<title>注册页面</title>
		<meta charset="utf-8">
		<title>登陆</title>
		<link rel="stylesheet" type="text/css" href="../css/page_style_all.css" />
		<!-- Animate.css -->
		<link rel="stylesheet" href="../css/login/animate.css">
		<!-- Icomoon Icon Fonts-->
		<link rel="stylesheet" href="../../css/login/icomoon.css">
		<!-- Theme style  -->
		<link rel="stylesheet" href="../css/login/style.css">


		<link rel="stylesheet" type="text/css" href="../css/font-awesome-4.7.0/css/font-awesome.min.css" />
		<style type="text/css">
			body {
				margin: 0;
			}

			/* 总div */
			#div_body {
				width: 980px;
				padding-top: 32px;
				background: ;
				margin-left: auto;
				margin-right: auto;
			}
			input::-webkit-inner-spin-button {
			  -webkit-appearance: none;
			}
			/* 标题 */
			.font_left {
				margin-left: 40px;
			}
			.font_style {
				font-size: 40px;
				margin-bottom: -15px;
			}

			.header_title>p {
				margin-left: 25px;
			}

			#title_h2 {
				margin-left: 25px;
				font-family: "仿宋";
			}

			/* ul列中所有的li */
			ul>li {
				list-style: none;
				padding-top: 5px;
			}

			/* li里的单个p标签 */
			.li_p {
				margin-top: auto;
				font-size: 10px;
			}

			/* 鼠标点击input变色 */
			.input {
				border: 1px solid #d1d5da;
				box-shadow: inset 0 1px 2px rgba(27, 31, 35, .075);
				font-size: 16px;
				line-height: 20px;
				min-height: 20px;
				padding: 6px 8px;
				background-color: rgb(232, 240, 254) !important;
			}

			/* 提示  小建议  */
			/* 这是个底层 做一个看起来浮动起来的 有阴影的那种 */
			#div_tip {
				width: 40%;
				height: 370px;
				padding: 10px;
				background: ghostwhite;
				float: right;
				text-align: left;
			}

			#div_tip>ul>li {
				
				margin-top: 10px;
				padding-top: 15px;
				padding-bottom: 15px;
				width: 283px;
				display: block;
				background: #E8F0FE;
				font-family: "仿宋";

			}

			/* reset  */
			.reset {
				margin-left: 12.5%;
			}

			.submit {
				width: 22%;
				height: 30px;
			}
			select{
				box-shadow: inset 0 1px 2px rgba(27, 31, 35, .075);
				font-size: 16px;
				line-height: 20px;
				min-height: 20px;
				padding: 6px 8px;
				background-color: rgb(232, 240, 254) !important;
				width: 22%;
				color: rgb(27, 31, 35) !important;
			}
		</style>
	</head>
	<body style="height:100px" class="">
		<div id="div_body" class="">
			<!-- 标题 -->
			<div class="header_title">
				<h1 class="font_left font_style">欢迎注册</h1>
				<p class="font_left">最棒的校园交友,交易平台.</p>
			</div>
			<!-- 注册框 -->
			<form action="#" method="post">
				<div id="add_stuNo_pwd">
					<h2 id="title_h2" class="font_left">请填写你的用户信息</h2>
					<ul>
						<!-- 注册学号 -->
						<li><input type="number" name="stuNumber" class="input" placeholder="学号"/></li>
					</ul>
					<ul>
						<!-- 提示  小建议 开始-->
						<div id="div_tip">
							<h1 align="center">注册须知</h1>
							<h4>&emsp;&emsp;当您点击注册时就表示您同意了<a href="">最终用户许可协议</a>,该协议最终解释权归我所有.</h4>
							<h4>&emsp;&emsp;我也不知道这里还要放什么.</h4>
							<h4>&emsp;&emsp;啦啦啦.</h4>
							<h4>&emsp;&emsp;嘿嘿嘿.</h4>
						</div>
						<!-- 提示  小建议 结束-->
						<!-- 注册用户名 -->
						<li>
							<input type="text" name="stuName" class="input" placeholder="用户名"/>
							<p class="li_p">tip:This is your screen name</p>
						</li>
					</ul>
					<ul>
						<!-- 注册密码 -->
						<li><input type="password" name="password" class="input" placeholder="密码"/></li>
					</ul>
					<ul>
						<!-- 注册真实姓名 -->
						<li><input type="text" name="realName" class="input" placeholder="真实姓名"/></li>
					</ul>
					<ul>
						<!-- 注册性别 -->
						<li>
							<!-- <input type="radio" name="sex" value="0" class="input" />男

							<input type="radio" name="sex" value="1" class="input" />女 -->
							<select id="sex" name="sex">
								<option value="null">性别
								<option value="0">男
								<option value="1">女
							</select>
						</li>
					</ul>
					<ul>
						<!-- 注册电话 -->
						<li><input type="text" name="tel" class="input"  placeholder="联系电话"/></li>
					</ul>
					<ul>
						<!-- 注册宿舍号 -->
						<li><input type="text" name="dormitory" class="input" placeholder="宿舍号"/></li>
					</ul>
					<ul>
						<li>
							<input type="submit" name="" value="注册" class="submit btn-primary" />
							<!-- <input type="reset" name="" value="reset" class="reset btn-primary"/> -->
						</li>
					</ul>
				</div>
			</form>

		</div>
		<script src="../js/coooooooool.js"></script>
	</body>
</html>
