<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
  <%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>  
    
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!-- saved from url=(0080)http://localhost:8080/mango/login.jhtml?redirectUrl=%2Fmango%2Fcart%2Flist.jhtml -->
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<title>会员登录</title>

<link href="<%=basePath %>/css/common.css" rel="stylesheet" type="text/css"/>
<link href="<%=basePath %>/css/login.css" rel="stylesheet" type="text/css"/>


</head>
<body>

<div class="container header">
	<div class="span5">
		<div class="logo">
			<a href="http://localhost:8080/mango/">
				<img src="<%=basePath %>/image/r___________renleipic_01/logo2.jpg" alt="商城">
			</a>
		</div>
	</div>
	<div class="span9">

	</div>
	<div class="span10 last">
		<div class="topNav clearfix">
			<ul>

			<c:if test="${sessionScope.frontuser==null}">
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a href="<%=basePath %>/user/login">登录</a>|
				</li>
			</c:if>
			<c:if test="${sessionScope.frontuser!=null}">
				<li id="headerLogin" class="headerLogin" style="display: list-item;">
					<a href="javascript:void()">当前用户：${sessionScope.frontuser}</a>|
				</li>

			</c:if>


				<li id="headerUsername" class="headerUsername"></li>
				<c:if test="${sessionScope.frontuser!=null}">
					<li id="headerLogout" class="headerLogout" style="display: list-item;">
						<a href="<%=basePath %>/user/logout">[退出]</a>|
					</li>
				</c:if>
						<li>
							<a >会员中心</a>
							|
						</li>
						<li>
							<a >购物指南</a>
							|
						</li>
						<li>
							<a>关于我们</a>

						</li>
			</ul>
		</div>
		<div class="cart">
			<a href="<%=basePath %>/car.jsp">购物车</a>
		</div>

	</div>
	<div class="span24">
		<ul class="mainNav">
						<li>
						<a href="<%=basePath %>/product/frontlist">首页</a>
					</li>
		</ul>
	</div>
	
</div>
<div class="container login" >
		<div class="span12" >
<div class="ad" >
					<img src="./image/login.jpg" width="400" height="330" alt="会员登录" title="会员登录"/>
</div>
		</div>
		<div class="span12 last" >
				<div class="main">
					<div class="title">
						<strong>会员登录</strong>USER LOGIN 
					</div>
					<form id="loginForm"  method="post" novalidate="novalidate" action="<%=basePath%>/user/login">
						<table>
							<tbody><tr>
							    <span style="margin-left: 20px;">${msg}</span>
								<th>
										用户名:
								</th>
								<td>
									<input type="text" id="username" name="username" class="text" maxlength="20">
									
								</td>
							</tr>
							<tr>
								<th>
									密&nbsp;&nbsp;码:
								</th>
								<td>
									<input type="password" id="password" name="password" class="text" maxlength="20" autocomplete="off">
								</td>
							</tr>
								
							
							<tr>
								<th>&nbsp;
									
								</th>
								<td>
									<input type="submit" class="submit" value="登 录">
									<a style="color: red" href="register.jsp">没有的话，点我注册一个吧！</a>
								</td>

							</tr>
						</tbody></table>
					</form>
				</div>
		</div>
	</div>
<div class="container footer">
	<div class="span24">
		<br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
		<div class="copyright">Copyright © 2009-2019 网上商城 版权所有</div>
	</div>
</div>
</body></html>