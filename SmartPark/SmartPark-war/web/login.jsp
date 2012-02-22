<%-- 
    Document   : index
    Created on : 2012-2-20, 11:22:54
    Author     : a
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="login.css">
        <title>Smart Park</title>
    </head>
    <body>
        <form id="login">
            <h1>用户登录</h1>
            <fieldset id="inputs">
                <input id="username" type="text" placeholder="用户名" autofocus required>   
                <input id="password" type="password" placeholder="密码" required>
            </fieldset>
            <fieldset id="actions">
                <input type="submit" id="submit" value="登录">
                <a href="">忘记密码?</a><a href="register.jsp">注册</a>
            </fieldset>
        </form>
    </body>
</html>
