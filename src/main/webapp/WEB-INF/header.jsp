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
  height:22vh;
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
        <li><a href="content" target="body">Home</a></li>
        <li><a href="register" target="body">Register</a></li>
        <li><a href="#">Search Blood</a></li>
        <li><a href="aboutus" target="body">About Us</a></li>
        <li><a href="blooddonationfact" target="body">Blood Donation Facts</a></li>
        <li><a href="helpus" target="body">Help Us</a></li>
        </nav>
    </div>
</body>
</html>