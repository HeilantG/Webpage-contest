<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8" />
<link rel="shortcut icon" type="image/x-icon" href="img/favicon.ico" />
<title>个人信息</title>
<link rel="stylesheet" href="css/index.css">
<!-- Theme style  -->
<link rel="stylesheet" href="css/login/style.css">
<link rel="stylesheet" type="text/css"
	href="css/Personal_information.css" />
<script src="js/modernizr-2.6.2.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="css/font-awesome-4.7.0/css/font-awesome.min.css" />
</head>
<body>
	<script src="js/coooooooool.js"></script>
	<!-- 导航栏 -->
	<div class="sidebar" style="z-index: 10 !important;">
		<a href="<%=request.getContextPath()%>/index.jsp"><img
			class="logo" src="<%=request.getContextPath()%>/img/logo.png	"
			width="60" align="absbottom" /></a> <span class="projectName">项目名</span>
		<span id=""> <a href="jsp/addtext.jsp"> GitHub </a>
		</span> <span id=""> Welcome </span> <span class="sidebar_float">
			<form action="" method="" class="sidebar_float_class"
				style="height: 60px;">
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

	<!-- 个人信息 -->
	<div class="info">
		<table bgcolor="#ececec" style="margin-bottom: 80px">
			<tr>
				<td class="userinfo"><img src="img/布洛尼亚.png" width="250px"
					border="1px">
					<div class="username">大滑稽</div>
					<div class="userid">2018104399</div>
					<div id="">
						<i class="fa fa-address-book"></i>&emsp;管理员
					</div> <i class="fa fa-location-arrow"></i>&emsp;陕西,咸阳
					<div id="">
						<i class="fa fa-envelope"></i>&emsp;810@gmail.com
					</div></td>
				<td>
					<div class="textinfo">我的贴子</div>
					<hr width="90%">
					<ol>
						<c:forEach items="${writelist}" var="w">
							<li class="div1">
								<div style="float: right;">
									<a>帖子链接</a>
								</div>
								<div class="wname">${w.title}</div>
								<div class="wcontent">帖子内容</div>
								<div class="wdate">发帖时间</div>
							</li>
						</c:forEach>
						<div class="textinfo1">
							我的交易
							<hr style="width: 90%; margin-left: -5px;">
						</div>


						<li class="div2">

							<div style="float: right;">
								<a>帖子链接</a>
							</div>
							<div class="wname">帖子名</div>
							<div class="wcontent">帖子内容</div>
							<div class="wdate">发帖时间</div>
						</li>
						<li class="div2">
							<div style="float: right;">
								<a>帖子链接</a>
							</div>
							<div class="wname">帖子名</div>
							<div class="wcontent">帖子内容</div>
							<div class="wdate">发帖时间</div>
						</li>
					</ol>
				</td>
			</tr>
		</table>
	</div>

	<div id="footer">
		<div class="foot" align="center">
			<div>凌云队参赛作品</div>
		</div>
</body>