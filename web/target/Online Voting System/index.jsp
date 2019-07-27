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
        <script src="scripts/jquery-3.3.1.min.js"></script>
        <script src="scripts/echarts.min.js"></script>
        <link rel="stylesheet" href="css/index.css">
        <link rel="stylesheet" href="css/bootstrap.css">
    </head>
<body>
    <img src="images/timg.jpg" height="576" width="1024" class="back_img"/>
    <div id="main" style="width: 1000px;height:600px;"></div>
    <div class="player_1">
        <img src="" height="640" width="640"  class="img-circle player_img"/>
        <h1></h1>
    </div>
    <div class="player_2">
        <img src="" height="640" width="640"  class="img-circle player_img"/>
        <h1></h1>
    </div>
    <script type="text/javascript">
            function longLink(){
                var source = new EventSource("http://localhost:8080/OnlineVotingSystem_war/confrontation_getAllByState");
                alert(source.readyState);
                source.onmessage = function (evt) {
                    alert(evt.data.player_1_name);
                }

                /*var url = "";
                $.ajax({
                    url: url,
                    async: false,//这一步是非常重要的，作用是设置为同步执行
                    type: "POST",
                    dataType: "json",
                    success: function (data) {
                        // 基于准备好的dom，初始化echarts实例
                        var myChart = echarts.init(document.getElementById('main'));
                        // 指定图表的配置项和数据
                        var option = {
                            title: {
                                text: data.match_name + '票数统计'
                            },
                            tooltip: {},

                            xAxis: {
                                data: ["", ""]
                            },
                            yAxis: {
                                show: false
                            },
                            series: [{
                                name: '票数',
                                type: 'bar',
                                data: [data.player_1_votes, data.player_2_votes]
                            }],
                            animation: false
                        };
                        // 使用刚指定的配置项和数据显示图表。
                        myChart.setOption(option);
                        $(".player_1 h1").text(data.player_1_name);
                        $(".player_1 img").attr("src","http://localhost:8080/OnlineVotingSystem_war/player_images/"+data.player_1_id+".jpg");
                        $(".player_2 h1").text(data.player_2_name);
                        $(".player_2 img").attr("src","http://localhost:8080/OnlineVotingSystem_war/player_images/"+data.player_2_id+".jpg");

                    }
                });*/
            }
            longLink();

    </script>
</body>

</html>
