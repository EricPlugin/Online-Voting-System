<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/6/24
  Time: 11:04
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/player/bootstrap/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/player/bootstrap/css/bootstrap-responsive.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/player/css/index.css">
    <script src="${pageContext.request.contextPath}/player/js/jquery-3.1.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/player/bootstrap/js/bootstrap.js"></script>

</head>
<body>

<div class="modal fade" id="myModal_new" tabindex="-1" role="dialog" aria-labelledby="myModalLabel_new">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h4 class="modal-title" id="myModalLabel_new">选手注册</h4>
            </div>
            <div class="modal-body">
                <div class="form-group">
                    <label for="player_name">选手名</label>
                    <input type="email" class="form-control" id="player_name" placeholder="请输入选手姓名">
                </div>
                <div class="form-group">
                    <label for="player_tele">手机号</label>
                    <input type="text" class="form-control" id="player_tele" placeholder="请输入您的手机号">
                </div>
                <div class="form-group">
                    <label for="head">头像上传</label>
                    <input type="file" id="head">
                    <p class="help-block">请上传png格式的图片作为您的头像</p>
                </div>
                <div class="form-group">
                    <label for="match_select">选择比赛</label>
                    <select id="match_select"></select>
                    <p class="help-block">请选择你要参加的比赛</p>
                </div>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" id="cancel">取消</button>
                <button type="button" class="btn btn-info" id="submit">提交</button>
            </div>
        </div>
    </div>
</div>
<script type="text/javascript">
    $(function () {
        $('#myModal_new').modal();
        var html = "";
        var url = "${pageContext.request.contextPath}/match_getAll?timestamp";
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

        $("#submit").click(function () {
            var player_name = $("#player_name").val();
            var telephone = $("#player_tele").val();
            var match_id = $("#match_select").val();
            var url = "${pageContext.request.contextPath}/player_register";
            var param = {
                "player_name":player_name,
                "telephone":telephone,
                "match_id":match_id
            }

            $.ajax({
                url: url,
                async: false,//这一步是非常重要的，作用是设置为同步执行
                type: "POST",
                data:param,
                dataType: "json",
                success: function (data) {
                    if(data == true){
                        alert("选手报名成功");
                        var file = $("#head")[0].files[0];
                        var form = new FormData();
                        form.append("files", file);
                        $.ajax({
                            url: "${pageContext.request.contextPath}/pictrue_opload",
                            type: "POST",
                            contentType: "multipart/form-data",
                            data: form,
                            async: false, //异步
                            processData: false, //很重要，告诉jquery不要对form进行处理
                            contentType: false, //很重要，指定为false才能形成正确的Content-Type
                            success: function(res) {
                                if(res == true){
                                    alert("头像上传成功");
                                }

                            },
                            error: function() {
                                alert("图片上传失败，请检查网络后重试");
                                return false;
                            }
                        });
                        $(".modal-body input").val("");
                    }
                }
            });


        });
    });
</script>
</body>
</html>
