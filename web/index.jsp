<%--
  Created by IntelliJ IDEA.
  User: Administrator
  Date: 2019/12/27
  Time: 10:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>$Title$</title>
  </head>
  <body>
    <form>
      <input type="text" name="uname" id="uname" placeholder="请输入用户名"><span></span><br>
      <input type="password" name="pwd" id="pwd" placeholder="请输入密码"><br>
      <input type="submit" value="登录">
    </form>

    <script src="js/jquery-3.1.1.js"></script>
    <script>
      var xmlhttp;
      $('form').submit(function () {
        //获取输入的信息
        var name = $('#uanme').val();
        var password = $('#pwd').val();
        //创建xmlHttpRequest
        if (window.XMLHttpRequest)
        {// code for IE7+, Firefox, Chrome, Opera, Safari
          xmlhttp=new XMLHttpRequest();
        }
        else
        {// code for IE6, IE5
          xmlhttp=new ActiveXObject("Microsoft.XMLHTTP");
        }
        xmlhttp.onreadystatechange = loginAjax;
        /*xmlhttp.open("get","LoginServlet.do?uname="+$('#uname').val());
        xmlhttp.send();*/
        xmlhttp.open("post","LoginServlet.do");
        //设置请求头类型
        xmlhttp.setRequestHeader("Content-type","application/x-www-form-urlencoded");
        xmlhttp.send("uname="+$('#uname').val()+"&phone="+$("#pwd").val());
        return false;
      });

      function loginAjax() {
        var result = xmlhttp.responseText;
        //判断请求结果及响应结果
        $('#uname').next().html(result);
      }
    </script>
  </body>
</html>
