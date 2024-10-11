<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<style>
    body{
        padding:8px;
        background-color: white;
        height:50vh;
        width:96%;
    }
    img{
        height:68vh;
        width:100%;
        box-shadow:1px 1px 10px 4px rgb(128, 133, 134);
    }
    .btn{
        padding: 5px;       
    }
    button{
        color:White;
        background-color: #a92020;
        font-weight: bold;
        font-size: 16px;
        border-radius: 8px;
        border-color: black;
        padding: 5px;
        text-decoration: none;
        transition: background-color 0.3s ease-in-out;
    }
    a{
        text-decoration: none;
        color: white;
        padding: 5px;
    }
   button:hover{
    background-color: rgb(205, 13, 13);
    box-shadow:1px 1px 5px 2px rgb(128, 133, 134);
    
   }
    p{
    color: #a92020;
    font-size: larger;
    font-style: italic;
   }
</style>
</head>
<body>
    <img src="/img/contentt.png">
	<center><p><b>"A Drop of Hope, A Lifetime of Healing."</b></p></center>
    <div class="btn">
        <center>
        <button type="submit"><a href="register" target="body" >Register</a></button>&nbsp&nbsp&nbsp&nbsp
        
        <button type="submit"><a href="login" target="body">Login</a></button>
        </center>
    </div>
</body>
</html>