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
    <script src="<%=basePath%>jslib/jquery-1.7.2.min.js"
            type="text/javascript"></script>
    <script type="text/javascript">
        function beforeSubmit(form){
            if(form.username.value==''){
                alert('用户名不能为空！');
                form.username.focus();
                return false;
            }
            if(form.password.value==''){
                alert('密码不能为空！');
                form.password.focus();
                return false;
            }
            if(form.password.value.length < 6){
                alert('密码至少为6位，请重新输入！');
                form.password.focus();
                return false;
            }
            if(form.password.value!=form.password2.value) {
                alert('你两次输入的密码不一致，请重新输入！');
                form.password2.focus();
                return false;
            }
            alert('注册成功！');
            return true;
        }
    </script>


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
            <img src="./image/login.jpg" width="400" height="330" alt="会员注册" title="会员登录"/>
        </div>
    </div>
    <div class="span12 last" >
        <div class="main">
            <div class="title">
                <strong>会员注册</strong>USER LOGIN
            </div>
            <form id="loginForm"  method="post" novalidate="novalidate" action="<%=basePath%>/user/insertUser" onsubmit="return beforeSubmit(this)">
                <table>
                    <tbody><tr>
                        <span style="margin-left: 20px;">${msg}</span>
                        <th>
                            用户名:
                        </th>
                        <td>
                            <input type="text" id="username" name="username" class="text" maxlength="20">
                            <span style="color:red" id="usernamemsg"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            密&nbsp;&nbsp;码:
                        </th>
                        <td>
                            <input type="password" id="password" name="password" class="text" maxlength="20" autocomplete="off">
                            <span style="color:red" id="passwordmsg"></span>
                        </td>
                    </tr> <tr>
                        <th>
                            重复密码:
                        </th>
                        <td>
                            <input type="password" id="password2" name="password2" class="text" maxlength="20" autocomplete="off">
                            <span style="color:red" id="password2msg"></span>
                        </td>
                    </tr>
                    <tr>
                        <th>
                            真实姓名：
                        </th>
                        <td>
                            <input type="realname" id="realname" name="realname" class="text" maxlength="20" autocomplete="off">
                        </td>
                    </tr>
                    <tr>
                        <th>
                           邮箱：
                        </th>
                        <td>
                            <input type="email" id="email" name="email" class="text" maxlength="20" autocomplete="off">
                        </td>
                    </tr>
                    <tr>
                    <tr>
                        <th>
                            手机号码：
                        </th>
                        <td>
                            <input type="phone" id="phone" name="phone" class="text" maxlength="20" autocomplete="off">
                        </td>
                    </tr>
                    <tr>
                    <tr>
                        <th>
                            地址：
                        </th>
                        <td>
                            <input type="addr" id="addr" name="addr" class="text" maxlength="20" autocomplete="off">
                        </td>
                    </tr>
                    <tr>
                        <th>&nbsp;
                        </th>
                        <td>
                            <input id="button" type="submit" class="submit" value="注册">
                            <input type="reset" class="submit" value="重置">
                        </td>

                    </tr>
                    </tbody>
                </table>
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