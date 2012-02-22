<%-- 
    Document   : register
    Created on : 2012-2-20, 15:34:07
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="register.css">
        <title>Register</title>
    </head>
    <body>
        <form id="login">
            <h1>用户注册</h1>
            <fieldset id="inputs">
                <input id="username" type="text" placeholder="用户名" autofocus required>
                <input id="email" type="email" placeholder="电子邮件地址" required>
                <input id="password" type="password" placeholder="密码" required>
                <input id="confirmpassword" type="password" placeholder="请再次输入密码" required>
            </fieldset>
            <fieldset id="actions">
                <input type="submit" id="submit" value="提交">
            </fieldset>
        </form>
    </body>
</html>
