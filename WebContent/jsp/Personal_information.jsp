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
			width="60" align="absbottom" /></a> <span class="projectName">SPlus</span>
		<span id=""> <a href="jsp/addtext.jsp"> 发帖 </a>
		</span> <a href="<%=request.getContextPath()%>/deal?type=select_top10"
			style="font-size: 16px; padding-left: 50px;"> 闲置交易 </a> <span
			class="sidebar_float">
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
						href="${pageContext.request.contextPath }/write?type=find_top2&stuNumber=${user.stuNumber}"
						class="sidebar_float_class">&emsp;${user.realName }</a>
					<a href="" class="sidebar_float_class"></a>
				</c:if>
			</form>
		</span>
	</div>

	<!-- 个人信息 -->
	<div class="info">
		<table bgcolor="#ececec" style="margin-bottom: 80px">
			<tr>
				<td class="userinfo"><img src="img/anime.png" width="250px"
					border="1px">
					<div class="username">${user.realName }</div>
					<div class="userid">${user.stuNumber}</div>
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

							<li class="div1"><a href="#">
									<div class="wname" style="font-size: 16px;">${w.title}</div>
							</a>
								<div class="wcontent">${w.content}......</div>
								<div class="wdate">${w.creatTime}</div></li>
						</c:forEach>
						<div class="textinfo1">
							我的交易
							<hr style="width: 90%; margin-left: -5px;">
						</div>


						<c:forEach items="${deallist}" var="d">
							<li class="div2"><a href="#">
									<div class="wname" style="font-size: 16px;">${d.cName}</div>
							</a>
								<div class="wcontent">${d.money}</div>
								<div class="wdate">${d.remarks}......</div></li>
						</c:forEach>
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