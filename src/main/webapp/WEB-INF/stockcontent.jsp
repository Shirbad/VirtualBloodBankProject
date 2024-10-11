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
        background-color: #fdf6f2;
    }
    img{
        height:68vh;
        width:100%;
        box-shadow:1px 1px 10px 4px rgb(128, 133, 134);;
    }
    p{
    color: #a92020;
    font-size: larger;
    font-style: italic;
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
    }
    a{
        text-decoration: none;
        color: white;
        padding: 5px;
    }
   button:hover{
    background-color: rgb(166, 4, 4);
     box-shadow:1px 1px 10px 4px rgb(231, 82, 82);
   }
  
</style>
</head>
<body>

    <img src="/img/bloodstock.png">
    <center><p><b>Keep Blood Bank shelves full. You may need Blood someday.</b></p></center>
    <div class="btn">
        <center>
        <button type="submit"><a href="stockregister" target="body">Register</a></button>
        </center>
    </div>  
</body>
</html>