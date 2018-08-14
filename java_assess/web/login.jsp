<%--
  Created by IntelliJ IDEA.
  User: ZYF
  Date: 2018/8/13
  Time: 11:03
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>


    <script type="text/javascript">
        function check(){
            alert("jinlaile");
            var un = document.getElementById("un").value;
            //1.   0   创建请求对象
            var req = new XMLHttpRequest();

            req.onreadystatechange = function(){
                if(req.readyState==4){
                    var returnValue = req.responseText;
                    alert(returnValue == "123");
                    if(returnValue == "123"){
                        var form = document.getElementById("form")
                        form.submit();
                    }else{
                        alert("该用户不存在，请重新输入")
                    }
                }
            };

            //2.   1   创建连接servlet的通道    调用open方法
            req.open("post", "Rejex", true);

            req.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
            //3.   2  发送数据     调用send方法
            req.send("un="+un);

        }
    </script>
</head>
<body>
<div style="background-image:url(image/login.jpg);width:1340px;height:700px;">
    <div style="width:100px;height:520px;float:left;"></div>
    <div style="width:500px;height:520px;float:left;">
        <br /><br /><br /><br />
        <center><font color="purple" face="楷体" size="6">登录</font><br /><br />
            <form action="Login" id="form" method="post" enctype="application/x-www-form-urlencoded">
                <input type="text" name="un" id="un" style="height:40px;width:400px"><br /><br />
                <input onclick="check()" type="button" value="登录" style="height:40px;width:50px"><br/><br />
            </form>
        </center>
    </div>
</div>
</body>
</html>
