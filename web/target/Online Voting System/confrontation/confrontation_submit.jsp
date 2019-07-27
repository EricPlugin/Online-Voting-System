<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/24
  Time: 16:30
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
    <link href="${pageContext.request.contextPath}/confrontation/assets/css/lib/font-awesome.min.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/confrontation/assets/css/lib/themify-icons.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/confrontation/assets/css/lib/menubar/sidebar.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/confrontation/assets/css/lib/bootstrap.min.css" rel="stylesheet">

    <link href="${pageContext.request.contextPath}/confrontation/assets/css/lib/helper.css" rel="stylesheet">
    <link href="${pageContext.request.contextPath}/confrontation/assets/css/style.css" rel="stylesheet">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/confrontation/assets/css/confrontation_submit.css">


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
                        <i class="ti-home"></i> 对战管理 <span class="sidebar-collapse-icon ti-angle-down"></span>
                    </a>
                    <ul>
                        <li>
                            <a href="confrontation_submit.jsp">注册对战</a>
                        </li>
                        <li>
                            <a href="confrontation_operate.jsp">对战操作</a>
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
                                <span class="user-avatar">111
                                    <i class="ti-angle-down f-s-10"></i>
                                </span>
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
                                    <a href="#">用户管理</a>
                                </li>
                                <li class="breadcrumb-item active">新建用户</li>
                            </ol>
                        </div>
                    </div>
                </div>
                <!-- /# column -->
            </div>
        </div>
    </div>
</div>
<div class="page_body">
    <table class="table-hover">
        <thead>
        <tr>
            <td>选手名</td>
            <td>电话</td>
            <td>操作</td>
        </tr>
        </thead>
        <tbody id="player_table"></tbody>
    </table>
    <button class="btn btn-primary btn_player_table" id="new_confrontation">新建对战</button>
</div>

<div class="modal fade" id="myModal_new" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_new">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel_new">选择比赛</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="match_select">选择比赛</label>
                    <select id="match_select"></select>
                    <p class="help-block">请选择您要添加对战的比赛</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="cancel">取消</button>
                <button type="button" class="btn btn-info" id="submit" >提交</button>
            </div>
        </div>
    </div>
</div>


<!-- jquery vendor -->
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/jquery.min.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/jquery.nanoscroller.min.js"></script>
<!-- nano scroller -->
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/menubar/sidebar.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/preloader/pace.min.js"></script>
<!-- sidebar -->

<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/bootstrap.min.js"></script><script src="assets/js/scripts.js"></script>
<!-- bootstrap -->

<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/calendar-2/moment.latest.min.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/calendar-2/pignose.calendar.min.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/calendar-2/pignose.init.js"></script>


<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/weather/jquery.simpleWeather.min.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/weather/weather-init.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/circle-progress/circle-progress.min.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/circle-progress/circle-progress-init.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/chartist/chartist.min.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/sparklinechart/jquery.sparkline.min.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/sparklinechart/sparkline.init.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/owl-carousel/owl.carousel.min.js"></script>
<script src="${pageContext.request.contextPath}/confrontation/assets/js/lib/owl-carousel/owl.carousel-init.js"></script>
<!-- scripit init-->
<script src="${pageContext.request.contextPath}/confrontation/assets/js/dashboard2.js"></script>

<script type="text/javascript">
    $(function () {
        var match_id = 0;

        var html = "";
        var url = "${pageContext.request.contextPath}/match_getAll";
        $.ajax({
            url: url,
            async: false,//这一步是非常重要的，作用是设置为同步执行
            type: "POST",
            dataType: "json",
            success: function (data) {
                for (var i = 0;i<data.length;i++){
                    html = html + "<option value=\""+data[i].match_id+"\">"+data[i].match_name+"</option>"
                }
                $("#match_select").html(html);
            }
        });

        $("#myModal_new").modal();

        $("#cancel").click(function () {
            $(location).attr('href', 'confrontation_operate.jsp');
        });

        $("#submit").click(function () {
            match_id = parseInt($("#match_select").val());
            var url = "${pageContext.request.contextPath}/player_select_byMatch_id";
            var param = {
                "match_id":match_id,
            }
            $.ajax({
                url: url,
                async: false,//这一步是非常重要的，作用是设置为同步执行
                type: "POST",
                data:param,
                dataType: "json",
                success: function (data) {
                    var html = "";
                    //alert(data[0].player_name);
                    for (var i = 0;i<data.length;i++){
                        html = html + "<tr>\n" +
                            "            <td>"+data[i].player_name+"</td>\n" +
                            "            <td>"+data[i].telephone+"</td>\n" +
                            "            <td><input type=\"checkbox\" class=\"player_check\" value=\""+data[i].player_id+"\"onchange=\"check_index()\" ></td>\n" +
                            "        </tr>"
                    }
                    $("#player_table").html(html);
                    $("#myModal_new").modal('hide');
                }
            });

        });


        $("#new_confrontation").click(function () {
            var total = [];
            $("input.player_check[type='checkbox']:checked").each(function (index, item) {
                total.push($(this).val());
            });
            if (total.length!=2) {
                alert("选手人数必须为两人");
            }else {
                var param = {
                    "match_id":match_id,
                    "player_1_id":total[0],
                    "player_2_id":total[1]
                }
                var url = "${pageContext.request.contextPath}/insert_confrontation";
                $.ajax({
                    url: url,
                    async: false,//这一步是非常重要的，作用是设置为同步执行
                    type: "POST",
                    data:param,
                    dataType: "json",
                    success: function (data) {
                        if (data == true){
                            alert("对战注册成功");
                            $(location).attr('href', 'confrontation_operate.jsp');
                        }
                    }
                });
            }

        });
    });
    function check_index(){
        $("input.player_check[type='checkbox']:checked").each(function (index, item) {
            if(index>1){
                $("input.player_check[type='checkbox']").prop("checked", false);
                alert("选手数不得大于2");
            }
        });
    }

</script>
</body>

</html>
