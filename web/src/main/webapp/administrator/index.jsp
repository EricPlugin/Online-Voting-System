<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/20
  Time: 8:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <title>在线投票系统后台管理界面</title>

    <!-- ================= Favicon ================== -->
    <!-- Standard -->
    <link rel="shortcut icon" href="http://placehold.it/64.png/000/fff">
    <!-- Retina iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="144x144" href="http://placehold.it/144.png/000/fff">
    <!-- Retina iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="114x114" href="http://placehold.it/114.png/000/fff">
    <!-- Standard iPad Touch Icon-->
    <link rel="apple-touch-icon" sizes="72x72" href="http://placehold.it/72.png/000/fff">
    <!-- Standard iPhone Touch Icon-->
    <link rel="apple-touch-icon" sizes="57x57" href="http://placehold.it/57.png/000/fff">

    <!-- Styles -->
    <link href="${pageContext.request.contextPath}/administrator/assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/administrator/assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/administrator/assets/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/administrator/assets/css/lib/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/administrator/assets/css/lib/helper.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/administrator/assets/css/style.css" rel="stylesheet">


</head>

<body>

<div class="sidebar sidebar-hide-to-small sidebar-shrink sidebar-gestures">
    <div class="nano">
        <div class="nano-content">
            <div class="logo">
                <a href="index.html">
                    <!-- <img src="assets/images/logo.png" alt="" /> -->
                    <span>Online Voting System</span>
                </a>
            </div>
            <ul>
                <li><a class="sidebar-sub-toggle"><i class="ti-bar-chart-alt"></i> 观众统计</a>
                </li>
                <li>
                    <a class="sidebar-sub-toggle">
                        <i class="ti-home"></i> 用户管理 <span class="sidebar-collapse-icon ti-angle-down"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="user_submit.jsp">新建用户</a>
                        </li>
                        <li>
                            <a href="user_operate.jsp">用户操作</a>
                        </li>
                    </ul>
                </li>
                <li>
                    <a class="sidebar-sub-toggle">
                        <i class="ti-target"></i> 比赛管理
                        <span class="sidebar-collapse-icon ti-angle-down"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="match_submit.jsp">新建比赛</a>
                        </li>
                        <li>
                            <a href="match_operate.jsp">比赛操作</a>
                        </li>
                    </ul>
                </li>
            </ul>
        </div>
    </div>
</div>
<!-- /# sidebar -->


<div class="header">
    <div class="container-fluid">
        <div class="row">
            <div class="col-lg-12">
                <div class="float-left">
                    <div class="hamburger sidebar-toggle">
                        <span class="line"></span>
                        <span class="line"></span>
                        <span class="line"></span>
                    </div>
                </div>
                <div class="float-right">
                    <div class="dropdown dib">
                        <div class="header-icon" data-toggle="dropdown">
                                <span class="user-avatar"></span>
                            <div class="drop-down dropdown-profile dropdown-menu dropdown-menu-right">
                                <div class="dropdown-content-heading">
                                    <span class="text-left">登录时间</span>
                                    <p class="trial-day">2019.6.19 15：06</p>
                                </div>
                                <div class="dropdown-content-body">
                                    <ul>
                                        <li>
                                            <a href="#" class="password_alter">
                                                <i class="ti-user"></i>
                                                <span>修改密码</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>


<div class="content-wrap">
    <div class="main">
        <div class="container-fluid">
            <div class="row">
                <div class="col-lg-8 p-r-0 title-margin-right">
                    <div class="page-header">
                        <div class="page-title">
                            <h1>Hello,
                                <span>Welcome Here</span>
                            </h1>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
                <div class="col-lg-4 p-l-0 title-margin-left">
                    <div class="page-header">
                        <div class="page-title">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item">
                                    <a href="#">首页</a>
                                </li>
                                <li class="breadcrumb-item active">观众统计</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
            </div>
        </div>
    </div>
</div>


<!--修改密码弹出框-->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel">密码修改</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="now_password">现用密码</label>
                    <input type="password" name="txt_departmentname" class="form-control" id="now_password" placeholder="请输入现用密码">
                </div>
                <div class="form-group">
                    <label for="new_password">新密码</label>
                    <input type="password" name="txt_parentdepartment" class="form-control" id="new_password" placeholder="请输入新密码">
                </div>
                <div class="form-group">
                    <label for="re_new_password">再次输入新密码</label>
                    <input type="password" name="txt_parentdepartment" class="form-control" id="re_new_password" placeholder="请再次输入新密码">
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span>关闭</button>
                <button type="button" id="btn_submit" class="btn btn-info" data-dismiss="modal"><span class="glyphicon glyphicon-floppy-disk" aria-hidden="true"></span>提交</button>
            </div>
        </div>
    </div>
</div>
<!--修改密码弹出框-->
<!-- jquery vendor -->
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/jquery.nanoscroller.min.js"></script>
<!-- nano scroller -->
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/menubar/sidebar.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/preloader/pace.min.js"></script>
<!-- sidebar -->

<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/bootstrap.min.js"></script><script src="assets/js/scripts.js"></script>
<!-- bootstrap -->

<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/calendar-2/moment.latest.min.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/calendar-2/pignose.calendar.min.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/calendar-2/pignose.init.js"></script>


<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/weather/jquery.simpleWeather.min.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/weather/weather-init.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/circle-progress/circle-progress.min.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/circle-progress/circle-progress-init.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/chartist/chartist.min.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/sparklinechart/sparkline.init.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/administrator/assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
<!-- scripit init-->
<script src="${pageContext.request.contextPath}/administrator/assets/js/dashboard2.js"></script>
<script type="text/javascript">
    $(function () {
        $(".user-avatar").html(document.cookie.split("|")[0]+"<i class=\"ti-angle-down f-s-10\"></i>");
        //注册新增按钮的事件
        $(".password_alter").click(function () {
            $('#myModal').modal();
        });
    });
</script>

</body>

</html>
