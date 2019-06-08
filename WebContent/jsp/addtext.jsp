<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<!-- 这是发帖页面 -->
<html>
	<head>
		<meta charset="utf-8" />
		<link rel="shortcut icon" type="image/x-icon" href="../img/favicon.ico" />
		<title>发帖</title>
		<link rel="stylesheet" href="../css/index.css">
		<link rel="stylesheet" href="../css/login/style.css">
		<link rel="stylesheet" href="../css/page_style_all.css">


		<script src="js/modernizr-2.6.2.min.js"></script>

		<link rel="stylesheet" type="text/css" href="css/font-awesome-4.7.0/css/font-awesome.min.css" />
		<style type="text/css">
			ul {
				padding-top: 200px;
				list-style: none;
			}

			.sidebar {
				margin-top: -15px;
			}

			.addtext {
				width: 50%;
				margin-left: 25%;
				margin-right: 25%;
				border: 5px solid #d1d5da;
				box-shadow: inset 0 1px 2px rgba(27, 31, 35, .075);
				border-radius: 5px;
				padding: 10px;
			}

			.addtext li {
				color: black;
				margin-left: 15px;
			}

			.sub {
				margin-left: 50px;
				width: 75%;
				height: 35px;
				background: #f54c53;
				color: #fff;
				border: 0px solid #f54c53 !important;
				border-radius: 3px;
			}

			.input {
				width: 70%;
			}

			textarea {
				widows: 600px;
			}
		</style>
	</head>
	<body style="height:100px">
		<script src="../js/coooooooool.js"></script>
	<!-- 导航栏 -->
	<div class="sidebar" style="z-index: 10 !important;">
		<a href="<%=request.getContextPath()%>/index.jsp"><img
			class="logo" src="<%=request.getContextPath()%>/img/logo.png	"
			width="60" align="absbottom" /></a> <span class="projectName">项目名</span>
		<span id=""> <a href="#"> GitHub </a>
		</span> <span id=""> Welcome </span> <span class="sidebar_float">
			<form action="" method="" class="sidebar_float_class" style="height: 60px;">
				<span><input placeholder="全站搜索" class="selectall" /></span> <input
					type="submit" name="" id="" class="btn-primary select" value="搜索" />

				<c:if test="${user.stuNumber==null}">
					<a href="<%=request.getContextPath()%>/jsp/login.jsp"
						class="sidebar_float_class">登陆</a>
					<a href="<%=request.getContextPath()%>/jsp/register.jsp"
						class="sidebar_float_class">注册</a>
				</c:if>
				<c:if test="${user.stuNumber!=null}">
					<a
						href="${pageContext.request.contextPath }/write?type=find_top2&stuNumber=${user.stuNumber}
"
						class="sidebar_float_class">&emsp;${user.stuName }</a>
					<a href="" class="sidebar_float_class"></a>
				</c:if>
			</form>
		</span>
	</div>
		<!-- 添加 -->
		<div class="addtext" align="center" style="background-color: #ececec">
			<form action="" method="post" >
				<ul>
					<li><span>标题&emsp;</span><input type="text" class="input" name="title" style="height: 50px;font-size: 25px"/></li>
				<br>
					<li><span>正文&emsp;</span><textarea name="content" required="required" placeholder="在这里写你想说的话" rows="10" cols="67" /></textarea></li>
				</ul>
				<input type="submit" value="发帖" class="sub" />
			</form>
		</div>
		<br><br><br><br>
		<div class="foot" align="center">
			<div>凌云队参赛作品</div>
		</div>
	</body>
</html>
