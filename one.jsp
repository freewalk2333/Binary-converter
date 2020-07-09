<%--
  Created by IntelliJ IDEA.
  User: 张雷
  Date: 2020/7/8
  Time: 17:57
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
        background:lightblue;
    }
    input[type=text]{
        width:50%;
        height:15%;
        display: inline-block;
        border: 1px solid #ccc;
        border-radius:10px;
        text-align: right;
        font-size: 100%;
        margin-bottom:5%;
    }
    input[type=reset]{
        width: 10%;
        height: 15%;
        background-color: #ddd;
        border: 1px solid #2e6da4;
        border-radius:10px;
        color: #000;
        font-size:100%;
    //-webkit-box-shadow: inset 0 -4px 0 #2a6496;
    //box-shadow: inset 0 -4px 0 #2a6496;
    }
    input[type=submit]{
        width: 20%;
        height: 15%;
        background-color: #000;
        border: 1px solid #2e6da4;
        border-radius:10px;
        color: #fff;
        font-size: 100%;
    //-webkit-box-shadow: inset 0 -4px 0 #2a6496;
    //box-shadow: inset 0 -4px 0 #2a6496;
    }

    h1{
        text-align: center;
        color:#2a6496;
        letter-spacing: 5px;
        margin-top: 150px;
    }
    #show{
        font-size: 18px;
        margin-top: 20px;
    }
    @media(max-width:992px){
        form>input{
            width: 17%;
        }
        input[type=submit]{
            width: 20%;
        }
    }


    dc{
        background-color:rgba(0,0,0,0.3);
        width:50%;
        height:25%;
        border:1px;
        border-radius:10px;
        position:absolute;
        left:25%;
        color:#fff;
    }
    .divclass{
        background-color: rgba(0, 0, 0, 0.3);
        width: 60%;
        height:56%;
        position: absolute;
        left: 20%;
        border-radius: 20px;
        color: #fff;
        padding-top:5%;
    }
    p{
        display:flex;
        margin:1%;
    }
</style>

<body>
<h1>二进制转换器</h1>
<div class="divclass">

    <input type="text" class="form-control" name="number" id="in" >
    <br/>
    <input type="submit" value="十转二" class="btn" onclick="IntoBinary()"/>

    <input type="submit" value="二转十" class="btn"  onclick="BianrytoInt()"/>
    <input type="reset"/><br />
    <br/>
    <div id="hello">答案在此显示:</div>
</div>
<script>
    function IntoBinary(){
        var x=  document.getElementById("in");
        var y= document.getElementById("hello") ;
        var num=parseInt(x.value);
        var str=num.toString("2");

        y.innerHTML=num+"   的2进制数是   "+str;
    }
    function BianrytoInt(){
        var x=  document.getElementById("in");
        var y= document.getElementById("hello") ;
        var st=(x.value).toString();
        var str=parseInt(st,2).toString();
        y.innerHTML=st+"   的10进制数是   "+str;
    }
</script>
</body>
</html>
