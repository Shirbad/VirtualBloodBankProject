<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Virtual Blood Bank</title>
<style>
body {
  margin: 0;
  padding: 0;
  font-family: sans-serif;
}

.container {
  display: flex;  
  max-width: 1300px;
  height:70vh;
}
.logo {
  width: 300px;
  float:left;
  
}
.logo img {
  width: 100%;
  height:70vh;
}
.h1
{
    margin:0;
    width: 1300px;
    background-color: #a92020;
    text-align: center;
    color:white;
    align-items: center;
}
.nav {
  border: 1px solid white;
  display:flex;
  justify-content: center;
  list-style: none;
  background-color: #a92020;
  padding:5px;
  align-items: center;
  height:20vh;
}
.nav li {
  margin: 0 10px;
  border-radius: 2px;
  align-items: center;
}
.nav a {
    color:white;
    font-weight: bolder;
  text-decoration: none;
  padding: 2px;
  font-size: 15px;
}
.nav a:hover {
  background-color: white;
  color:#a92020;
  border-radius: 5px;
}
</style>
</head>
<body>
  <div class="container">
    <div class="logo">
      <img src="/img/logo.jpg" alt="Logo" >
    </div>
    <div class="h1">
    <h1>Virtual Blood Bank</h1>
    </div>
  </div>
  <div>
        <nav class="nav">
        <li><a href="hcontent" target="body">Home</a></li>
        <li><a href="hedit" target="body">EditProfile</a></li>
        <li><a href="hrequest" target="body">RequestBlood</a></li>
        <li><a href="hreserve" target="body">ReserveBlood</a></li>
        <li><a href="rindex" target="_top">ResetPassword</a></li>
        <li><a href="index" target="_top">Logout</a></li>
        </nav>
    </div>
</body>
</html>
</html>