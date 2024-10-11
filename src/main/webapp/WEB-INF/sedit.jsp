<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>

<style>
.container {
    padding: 10px;
    background-color: #edecec;
    border-radius: 5px;
    border: 2px solid #a92020;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    width: 270px;
    margin: 0 auto;
    height:20vh;
}
.input {
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #ccc;
    border-radius: 5px;
    width: 52%;
    height:12px;
}
.label {
    display: inline-block;
    width: 20%;
    font-size: 14px;;
}

.error {
    color: red;
    font-size: 12px;
}
.submit {
    background-color: #a92020;
    color: #fff;
    padding: 6px 14px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
.submit:hover {
    background-color: #c80303;
}
#status{
    width:60%;
    height:10vh;
    font-size: 10px;;
}
</style>
</head>
<body>
    <center><h2>Please Enter your User-Id!</h2></center>
    <div class="container">
    <form action="sedit" method="POST" >
        <div>
            <label class="label">User Id:</label>
            <input class="input" type="text" id="email" name="userid" required>
            <span class="error" id="emailError"></span>
        </div>
        <div>
            <center><input type="submit" class="submit" value="Edit" onclick="fun()"></center>
        </div>
        
  <script>
  
  var email = document.getElementById("email");
  
  function fun() {
      
	  var emailstr = /^[a-zA-Z0-9+*%#@]+@[a-zA-Z]+\.[a-zA-Z]{2,}$/;

	  if (emailstr.test(email.value)) {
	        emailError.innerHTML = "";
	        return true; 
	    } else {
	        emailError.innerHTML = "*Invalid";
	        return false; 
	    }
  }
  </script>      
</body>
</html>