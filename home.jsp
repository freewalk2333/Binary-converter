<%--
  Created by IntelliJ IDEA.
  User: 张雷
  Date: 2020/7/10
  Time: 9:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>进制转换器主页</title>
</head>

<style>
    body{
        background-color:#eee;
        text-align: center;
    }
    h1{
        margin-bottom:3%;
        color:#111;
    }
    h2{
        margin-bottom:5%;
        color:#111;
    }
    .dc{
        background-color: rgba(40,98,148,0.3);
        width: 46%;
        height:70%;
        position: absolute;
        left: 27%;
        border-radius: 20px;
        color: #fff;
        padding-top:2%;
        font-size:25px;
    }
    #show_time {
        color: #000;
    }
    input[type=submit]{
        width:210px;
        height:50px;
        background-color: #eee;
        border: 1px solid #2e6da4;
        border-radius:15px;
        color: #111;
        font-size: 100%;
    }
    input[type=submit]:hover{
        animation:ju;
        animation-duration:0.2s;
        animation-fill-mode:forwards;
    }
    @keyframes ju{
        100%{
            transform:scale(1.01);
            background-color:#87cefa;
            color:#000;
        }
</style>

<body>
<h1>进制转换器</h1>
<div class="dc">
    <h2 >请选择进制转换器</h2>
    <form action="http://localhost:8080/one.jsp">
        <input type="submit" value="2进制转换器" class="btn" />
    </form>
    <form action="http://localhost:8080/two.jsp">
        <input type="submit" value="16进制转换器" class="btn" />
    </form>
    <form action="http://localhost:8080/three.jsp">
        <input type="submit" value="16与2进制转换器" class="btn" />
    </form>
    <br />
    <p><span style="color:#000">获取本站源码:</span><a href="https://github.com/freewalk2333/Binary-converter" target="_blank">Get!</a></p>
</div>
<div id="show_time"><div>
</body>
<script>
    setInterval("show_time.innerHTML=new Date().toLocaleString()+' 星期'+'日一二三四五六'.charAt(new Date().getDay());",1000);
</script>
</html>