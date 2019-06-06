<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<!-- 这是主页兼贴吧页面 -->
<html>
<head>
<meta charset="utf-8" />
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
<title>项目名</title>
<link rel="stylesheet" href="css/index.css">
<!-- Animate.css -->
<link rel="stylesheet" href="css/login/animate.css">
<!-- Icomoon Icon Fonts-->
<link rel="stylesheet" href="css/login/icomoon.css">
<!-- Theme style  -->
<link rel="stylesheet" href="css/login/style.css">

<script src="js/modernizr-2.6.2.min.js"></script>

<link rel="stylesheet" type="text/css"
	href="css/font-awesome-4.7.0/css/font-awesome.min.css" />
</head>
<body id="scroll-1">
	<!-- 导航栏 -->
	<div class="sidebar" style="z-index: 10 !important;">
		<a href="<%=request.getContextPath()%>/index.jsp"><img
			class="logo" src="<%=request.getContextPath()%>/img/logo.png	"
			width="60" align="absbottom" /></a> <span class="projectName">项目名</span>
		<span id=""> <a href="jsp/addtext.jsp"> GitHub </a>
		</span> <span id=""> PornHub </span> <span class="sidebar_float">
			<form action="" method="" class="sidebar_float_class">
				<span><input placeholder="全站搜索" class="selectall" /></span> <input
					type="submit" name="" id="" class="btn-primary select" value="搜索" />

				<c:if test="${user.stuNumber==null}">
					<a href="<%=request.getContextPath()%>/jsp/login.jsp"
						class="sidebar_float_class">登陆</a>
					<a href="<%=request.getContextPath()%>/jsp/register.jsp"
						class="sidebar_float_class">注册</a>
				</c:if>
				<c:if test="${user.stuNumber!=null}">
					<a href="" class="sidebar_float_class">&emsp;${user.stuName }</a>
					<a href="" class="sidebar_float_class"></a>
				</c:if>
			</form>
		</span>
	</div>
	<c:if test="${user.stuNumber==null}">
		<!-- 登陆窗口 -->
		<div id="" class="loginimg">
			<header id="gtco-header">
				<div class=" animate-box" data-animate-effect="fadeInRight">
					<div class="form-wrap">
						<div class="tab">
							<ul class="tab-menu">
								<li class="active gtco-first"><a href="#" data-tab="signup">注册</a></li>
								<li class="gtco-second"><a href="#" data-tab="login">登陆</a></li>
							</ul>
							<div class="tab-content">
								<div class="tab-content-inner active" data-content="signup">
									<form
										action="${pageContext.request.contextPath }/user?type=add1"
										method="post">
										<div class="row form-group">
											<div class="col-md-12">
												<div class="input_text">学号</div>
												<input placeholder="学号" type="number" name="stuNumber"
													class="form-control" id="username">
											</div>
										</div>
										<div class="row form-group">
											<div class="col-md-12">
												<div class="input_text">真实姓名</div>
												<input placeholder="真实姓名" type="text" name="realName"
													class="form-control" id="password">
											</div>
										</div>
										<div class="row form-group">
											<div class="col-md-12">
												<div class="input_text">密码</div>
												<input placeholder="密码" type="password" name="password"
													class="form-control" id="password2">
											</div>
										</div>

										<div class="row form-group">
											<div class="col-md-12">
												<br> <input type="submit" class="btn-primary submit"
													value="注册">
											</div>
										</div>
									</form>
								</div>

								<div class="tab-content-inner" data-content="login">
									<form
										action="${pageContext.request.contextPath }/user?type=login"
										method="post">
										<div class="row form-group">
											<div class="col-md-12">
												<div class="input_text">学号</div>
												<input placeholder="学号" type="number" name="stuNumber"
													class="form-control" id="username">
											</div>
										</div>
										<div class="row form-group">
											<div class="col-md-12">
												<div class="input_text">密码</div>
												<input placeholder="密码" type="password" name="password"
													class="form-control" id="password">
											</div>
										</div>

										<div class="row form-group">
											<div class="col-md-12">
												<br> <input type="submit" class="submit btn-primary"
													value="登陆">
											</div>
										</div>
									</form>
								</div>
							</div>
						</div>
					</div>
				</div>
			</header>

		</div>
	</c:if>

	<!-- 论坛正文 -->
	<div class="wtext">


		<div class="">
			<span id="" class="creatInformation"> 帖子ID:20184399 </span> <span
				id="" class="creatInformation"> 滑稽的一天 </span> <span id=""
				class="creatInformation"> 管理猿 </span> <span id=""
				class="creatInformation"> 创建日期 </span> <span id="" class="seeMore">
				<a href="">查看详情</a>
			</span>
		</div>
		<hr />
		<div class="">
			滑稽是百度贴吧著名的泡泡表情，旧版名/QQ名/哔哩哔哩动画表情名为“斜眼笑”。圆嘟嘟的脸萌萌哒，弧度上扬的嘴角傲而不娇，微微泛红的脸颊让人感到无限温暖，双眼右视充满欢乐使人浮想联翩，轻挑秀眉深藏功与名。其功用甚至高到可以概括各种心情的地步，广受用户喜爱。现在，滑稽表情已经有了同人动画片以及不计其数的斗图表情。
		</div>
	</div>
	<!-- 页脚 -->
	<div class="foot" align="center">
		<div>凌云队参赛作品</div>
	</div>
	<!-- jQuery -->
	<script src="js/jquery.min.js"></script>
	<!-- Waypoints -->
	<script src="js/jquery.waypoints.min.js"></script>
	<!-- Main -->
	<script src="js/main.js"></script>
</body>
</html>
