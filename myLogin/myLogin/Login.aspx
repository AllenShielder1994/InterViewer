<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="myLogin.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="show">
        <div class="container">
            <!-- 注册表单strat -->
            <form action="#" method="post">
                <div class="box boxRegister">
                    <h1>注册</h1>
                    <p>
                        <label for="username">用户名：</label>
                        <input class="username" id="username" name="username" type="text">
                    </p>
                    <p class="email">
                        <label for="email">邮&nbsp;&nbsp;&nbsp;箱：</label>
                        <input class="email" id="email" name="eamil" type="email">
                    </p>
                    <p>
                        <label for="userpwd">密&nbsp;&nbsp;&nbsp;码：</label>
                        <input class="userpwd" id="userpwd" name="userpwd" type="password">
                    </p>
                    <input class="btn" type="submit" value="注册">
                    <input class="toLogin" type="button" value="去登陆→">
                </div>
            </form>
            <!-- 注册表单end -->
            <!-- 登陆表单strat -->
            <form action="#" method="post">
                <div class="box boxLogin">
                    <h1>登录</h1>
                    <p class="user">
                        <label for="username">用户名：</label>
                        <input class="username" id="username" name="username" type="text">
                    </p>
                    <p class="pwd">
                        <label for="userpwd">密&nbsp;&nbsp;&nbsp;码：</label>
                        <input class="userpwd" id="userpwd" name="userpwd" type="password">
                    </p>
                    <input class="btn" type="submit" value="登录">
                    <input class="toRegister" type="button" value="←去注册">
                </div>
            </form>
            <!-- 登陆表单end -->
        </div>
    </div>

        <script>
        window.onload = function () {
            //使用原生js
            var con = document.getElementsByClassName('container'),
                toLogin = document.getElementsByClassName('toLogin'),
                toRegister = document.getElementsByClassName('toRegister');
            con[0].style.left = 0;//如果不加这行，第一次点击按钮没有动画效果
            toLogin[0].onclick = function () {
                if (con[0].offsetLeft == 0) {
                    con[0].style.left = "-300px";
                }
            }
            toRegister[0].onclick = function () {
                if (con[0].offsetLeft == -300) {
                    con[0].style.left = "0";
                }
            }
        }

        </script>
</body>
</html>
