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
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<title>商城</title>
	<link href="<%=basePath %>/css/slider.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath %>/css/common.css" rel="stylesheet" type="text/css"/>
	<link href="<%=basePath %>/css/index.css" rel="stylesheet" type="text/css"/>
	<script type="text/javascript" src="<%=basePath%>/jquery-3.1.1.min.js"></script>
	<script type="text/javascript">
        $(document).ready(queryAllPages);
        function queryAllPages(pageNum,pageSize) {
			$("#allpages").load("<%=basePath%>/product/frontlist?pageNum="+pageNum+"&pageSize="+pageSize);
        }
	</script>
</head>
<body>

<div class="container all">
	<div id="allpages" class="containerpages">
		<div class="container header">
			<div class="span5">
				<div class="logo">
					<a href="<%=basePath %>/index.jsp">
						<img src="<%=basePath %>/image/r___________renleipic_01/logo2.jpg" alt="商城"/>
					</a>
				</div>
			</div>
			<div class="span9">
				<div class="headerAd">
<%--					<img src="<%=basePath %>/image/header.jpg" width="320" height="50" alt="正品保障" title="正品保障"/>--%>
				</div>	</div>
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

						<li id="headerUsername" class="headerUsername" ></li>
						<c:if test="${sessionScope.frontuser!=null}">
							<li id="headerLogout" class="headerLogout" style="display: list-item;">
								<a href="<%=basePath %>/user/logout">[退出]</a>|
							</li>
						</c:if>

						<li>
							<a>会员中心</a>
							|
						</li>
						<li>
							<a>购物指南</a>
							|
						</li>
						<li>
							<a>关于我们</a>

						</li>
					</ul>
				</div>
				<div class="cart">
					<a  href="<%=basePath %>/car.jsp">购物车</a>
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
		<div class="container index">
			<div class="span24">
				<div id="newProduct" class="newProduct clearfix">
					<div class="title">
						<strong>全部商品</strong>
						<a  target="_blank" ></a>
					</div>
					<ul class="tab">
						<li class="current">
							<a href="./分类.htm?tagIds=2" target="_blank"></a>
						</li>
						<li>
							<a  target="_blank"></a>
						</li>
						<li>
							<a target="_blank"></a>
						</li>
					</ul>

					<div class="pages">
						<%--<div id="allProduct" class="newProduct clearfix">--%>
						<ul class="tabContent" style="display: block;">
							<c:forEach items="${pages.list}" var="list">
								<li>
									<a target="_blank" href="<%=basePath%>product/detail?pid=${list.pid}"><img src="<%=basePath %>/upload/${list.pic}"  style="display: block;"></a>

								</li>
							</c:forEach>
						</ul>
					</div>
					<div id="page_div">
						<%@ include file="/WEB-INF/pagehelper.jsp"%>
					</div>
				</div>

				<%--<div align="left">--%>
				<%--<a>总页数：${pages.pages}, 商品总数：${pages.total}, </a>--%>
				<%--<a> 当前第-${pages.pageNum}-页 </a>--%>
				<%--<a href="javascript:onSearch(${pages.prePage}">上一页</a>--%>
				<%--<a href="javascript:onSearch${pages.nextPage}">下一页</a>--%>
				<%--</div>--%>

			</div>

		</div>
		<div class="container footer">
			<div class="span24">
				<div class="footerAd">
					<img src="<%=basePath %>/image/footer.jpg" width="950" height="52" alt="我们的优势" title="我们的优势">
				</div>	</div>
			<div class="span24">
				<ul class="bottomNav">
					<br><br><br><br><br><br><br><br><br><br><br>
					<li>
						<a>关于我们</a>
						|
					</li>
					<li>
						<a>联系我们</a>
						|
					</li>
					<li>
						<a>招贤纳士</a>
						|
					</li>
					<li>
						<a>法律声明</a>
						|
					</li>
					<li>
						<a>友情链接</a>
						|
					</li>
					<li>
						<a target="_blank">支付方式</a>
						|
					</li>
					<li>
						<a target="_blank">配送方式</a>
						|
					</li>
					<li>
						<a>服务声明</a>
						|
					</li>
					<li>
						<a>广告声明</a>

					</li>
				</ul>
			</div>
			<div class="span24">
				<div class="copyright">Copyright © 2009-2019 网上商城 版权所有</div>
			</div>
		</div>
	</div>
</div>


</body></html>