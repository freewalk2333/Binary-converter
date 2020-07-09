<%--
  Created by IntelliJ IDEA.
  User: 张雷
  Date: 2020/7/9
  Time: 18:15
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>二进制转换器</title>
</head>

<style>
    body{
        text-align: center;
        background:#2a6496;
    }
    h1{
        text-align: center;
        color:#eee;
        letter-spacing: 5px;
        margin-top: 150px;
    }
    p{
        display:flex;
        margin:1%;
    }
    input[type=text]{
        width:70%;
        height:60px;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius:15px;
        text-align: right;
        font-size: 100%;
        margin-bottom:20px;
        margin-top:20px;
    }
    input[type=submit]{
        width: 35%;
        height: 13%;
        background-color: #000;
        border: 1px solid #2e6da4;
        border-radius:15px;
        color: #fff;
        font-size: 100%;
    }
    input[type=submit]:hover{
        animation:ranbow;
        animation-duration:0.2s;
        animation-fill-mode:forwards;
    }
    @keyframes ranbow{
        100%{
            transform:scale(1.01);
            background-color:#2a6496;
        }
    }
    button:hover{
        animation:ju;
        animation-duration:0.2s;
        animation-fill-mode:forwards;
    }
    @keyframes ju{
        100%{
            transform:scale(1.01);
            background-color:lightblue;
            color:#000;
        }
    }
    .divclass{
        background-color: rgba(0, 0, 0, 0.3);
        width: 46%;
        height:82%;
        position: absolute;
        left: 27%;
        border-radius: 20px;
        color: #fff;
        padding-top:5%;
        font-size:25px;
    }
    .change {
        width:210px;
        height:50px;
        border: 1px solid lightblue;
        border-radius:15px;
        font-size:100%;
        color:#000;
        background-color:#eee;
    }

</style>

<body>
<h1>二进制转换器</h1>
<div class="divclass">
    <form action="http://localhost:8080/home.jsp">
        <button class="change btn" >HomePage</button>
    </form>

    <input type="text" class="form-control" name="number" id="in" >
    <br/>
    <input type="submit" value="10转2" class="btn" onclick="IntoBinary()"/>

    <input type="submit" value="2转10" class="btn"  onclick="BianrytoInt()"/>

    <br />
    <br />
    <div id="hello"><span style="color:#bbb">答案在此显示:</span>
    </div><br /><br />
    <form action="http://localhost:8080/two.jsp">
        <button class="change btn" >16进制转换器</button>
    </form>
    <form action="http://localhost:8080/three.jsp">
        <button class="change btn" >机器进制转换器</button>
    </form>
</div>

<script type="text/javascript">
    function IntoBinary(){

        var x=document.getElementById("in");
        var y=document.getElementById("hello") ;
        var st=(x.value).toString();
        var num=parseInt(x.value);
        var str=num.toString("2");
        if(isint(st)){
            y.innerHTML=num+"   的2进制数是   "+str;}
        else{
            y.innerHTML="请检查数字 "+st+" 是否为10进制数";
        }
    }
    function BianrytoInt(){

        var x=document.getElementById("in");
        var y=document.getElementById("hello") ;
        var st=(x.value).toString();
        var str=parseInt(st,2).toString();

        if(isbin(st)){
            y.innerHTML=st+"   的10进制数是   "+str;
        }
        else{
            y.innerHTML="请检查数字 "+st+" 是否为2进制数";
        }
    }
    function isbin(s){

        var arr=s.split("");
        var count=0;

        for(var i=0;i<arr.length;i++){
            if(arr[i]=="1"||arr[i]=="0"){
                count++;
            }
        }
        if(count==arr.length){
            return true;
        }
        else{
            return false;
        }
    }
    function isint(s){
        var arr=s.split("");
        var count=0;

        for(var i=0;i<arr.length;i++){
            if(arr[i]==1||arr[i]==2||arr[i]==3||arr[i]==4||arr[i]==5||arr[i]==6||arr[i]==7||arr[i]==8||arr[i]==9||arr[i]==0){
                count++;
            }
        }
        if(count==arr.length){
            return true;
        }
        else{
            return false;
        }

    }
</script>
</body>
</html>
