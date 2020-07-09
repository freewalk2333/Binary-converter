<!DOCTYPE html>
<html>
<head>
    <title>二进制转换器</title>
</head>

<style>
    body{
        text-align: center;
        background:lightblue;
    }
    h1{
        text-align: center;
        color:#2a6496;
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
        margin-bottom:25px;
    }
    input[type=reset]{
        width: 16%;
        height: 15%;
        background-color: #ddd;
        border: 1px solid #2e6da4;
        border-radius:15px;
        color: #000;
        font-size:100%;
    }
    input[type=submit]{
        width: 27%;
        height: 15%;
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
    input[type=reset]:hover{
        animation:ran;
        animation-duration:0.2s;
        animation-fill-mode:forwards;
    }
    @keyframes ran{
        100%{
            transform:scale(1.01);
            background-color:#eee;
        }
    }
    .divclass{
        background-color: rgba(0, 0, 0, 0.3);
        width: 46%;
        height:56%;
        position: absolute;
        left: 27%;
        border-radius: 20px;
        color: #fff;
        padding-top:5%;
        font-size:25px;
    }
    .class{

</style>

<body>
<div class="more"></div>
<h1>二进制转换器</h1>
<div class="divclass">

    <input type="text" class="form-control" name="number" id="in" >
    <br/>
    <input type="submit" value="十转二" class="btn" onclick="IntoBinary()"/>

    <input type="submit" value="二转十" class="btn"  onclick="BianrytoInt()"/>
    <input type="reset" id="rs" onclick="resetin()" /><br />
    <br />
    <br />
    <div id="hello"><span style="color:#bbb">答案在此显示:</span>
</div>
</div>

<script type="text/javascript">
    function IntoBinary(){

        var x=document.getElementById("in");
        var y=document.getElementById("hello") ;
        var num=parseInt(x.value);
        var str=num.toString("2");
        y.innerHTML=num+"   的2进制数是   "+str;
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
            y.innerHTML="请检查数字是否为二进制数";
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
</script>
</body>
</html>