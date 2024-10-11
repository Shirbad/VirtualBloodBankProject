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
        padding: 8px;
    }
    .container {
      background-color: #edecec;
      padding: 8px;
      border-radius: 5px;
      border: 2px solid #a92020;
      box-shadow: 0 2px 5px rgba(238, 9, 9, 0.1);
      width: 270px;
      margin: 0 auto;
    }
    .form {
      display:block;
    }
    .input {
      padding: 8px;
      margin-bottom: 10px;
      border: 1px solid #a92020;
      border-radius: 5px;
      width: 50%;
      display: inline-block;
      height:4vh;
    }
    .label {
      display: inline-block;
      width: 25%;
      font-size: 13px;
    }
    .error {
      color: red;
      font-size: 12px;
    }
    #submit {
      background-color: #a92020;
      color: #fff;
      padding: 5px 15px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
    }
    #submit:hover {
      background-color: #c80303;
    }
    </style>
</head>
<body>
    <center><h2>Reset Password</h2></center>
    <div class="container">
        <form class="form" action="resetpassword" method="post" >
        <input type="hidden" name="userid" value="${userid}" />
        
            <div>
                <label class="label" for="password">Password:</label>
                <input class="input" type="password" id="password" name="password" required>
                <span class="error" id="passError"></span>
              </div>
              <div>
                <label class="label" for="repass">Retype Password:</label>
                <input class="input" type="password" id="repass" name="repass" required>
                <span class="error" id="repassError"></span>
              </div>
              <div>
                <center> <input type="submit" value="Save" onclick="fun()"  id="submit"/></center>
              </div>
        </form>
    </div>
    <script>
        var password=document.getElementById("password");
        var retypepassword = document.getElementById("repass");

        function fun(event)
        {

            var passwordError = document.getElementById("passError");
            var RePasswordError = document.getElementById("repassError");

            var passwordstr = /^[a-zA-Z0-9!@#$%^&*]{6,16}$/;

            if(passwordstr.test(password.value)){
              passwordError.innerHTML="";
            }else{
              passwordError.innerHTML="*Invalid";
            }

            if(retypepassword.value != password.value){
              RePasswordError.innerHTML="*Password do not match";
            }
            else{
              RePasswordError.innerHTML="";
            }

            if(passwordError.innerHTML === "" && RePasswordError.innerHTML === "" )
           
            {
            	 alert("Password Updated Successfully");
                
            }
            else {
            	event.preventDefault();
            }
        }
    </script>
</body>
</html>