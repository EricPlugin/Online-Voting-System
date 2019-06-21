<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/19
  Time: 9:19
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" type="text/css" href="css/login.css" />
    <script src="${pageContext.request.contextPath}/scripts/jquery-3.1.1.min.js"></script>
    <script type="text/javascript">
        $(function () {
            $(".btn[name=\"login\"]").click(function () {
                var username = $("input[name=\"username\"]").val();
                var password = $("input[name=\"password\"]").val();
                var url = "${pageContext.request.contextPath}/login_submit";
                var param = {
                    "username":username,
                    "password":password
                }
                $.post(url,param,function(data){
                    if (null != data && "" != data){
                        if(data.root == 0){
                            $(location).attr('href','${pageContext.request.contextPath}/administrator/index.jsp' );
                            document.cookie = data.username+"|";
                        }else {
                            //$(location).attr('href', '${pageContext.request.contextPath}/administrator/index.jsp');
                        }
                    } else {
                        alert("用户名或密码错误，请重新输入");
                    }

                });
            });

        });
    </script>
</head>

<body>

<img class="bgone" src="${pageContext.request.contextPath}/images/1.jpg" />
<img class="pic" src="${pageContext.request.contextPath}/images/a.png" />

<div class="table">
    <div class="wel">在线投票系统后台管理界面</div>
    <div class="wel1">ONLINE VOING SYSTEM</div>
    <div class="user">
        <div class="yonghu" style=""><img src="${pageContext.request.contextPath}/images/yhm.png" /></div>
            <input type="text" name="username" placeholder="用户名" />
        </div>
        <div class="password">
            <div class="yonghu"><img src="${pageContext.request.contextPath}/images/mm.png" /></div>
            <input type="password" name="password" placeholder="●●●●●●"/>
        </div>
        <input class="btn" type="button" name="login" value="登录" />
</div>

</body>
</html>
