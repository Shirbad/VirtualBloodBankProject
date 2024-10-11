<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Bank Registration Form</title>
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
      height:12px;
    }
    .label {
      display: inline-block;
      width: 25%;
      text-align: left;
      font-size: 13px;
    }
    #role{
        width:56%;
        height:8vh;
        font-size: 10px;
    }
    .error {
      color: red;
      font-size: 12px;

    }
    #submit {
      background-color: #a92020;
      color: #fff;
      padding: 6px 16px;
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
    <center><h2>Blood Bank  |  Registration Form</h2></center>
    <div class="container">
      <form class="form" action="save" method="post">
        <div>
          <label class="label" for="email">Email-id:</label>
          <input class="input" type="email" id="email" name="email" required>
          <span class="error" id="emailError"></span>
        </div>
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
          <label class="label" for="role">Role:</label>
          <select class="input" id="role" name="role" required>
            <option value="">Select Role</option>
            <option value="donor">Donor</option>
            <option value="bloodbank">Blood bank</option>
            <option value="stockmanager">Stock Manager</option>
            <option value="hospital">Hospital</option>
            
          </select>
        </div>
        <div>
          <center><input type="submit" id="submit" value="Save" onclick="fun()"></center>
        </div>
      </form>
    </div>
    <script>
        var email=document.getElementById("email");
        var password=document.getElementById("password");
        var retypepassword = document.getElementById("repass");
        
        function fun()
        {
        	 var emailError = document.getElementById("emailError");
             var passwordError = document.getElementById("passError");
             var RePasswordError = document.getElementById("repassError");

             var emailstr = /^[a-zA-Z0-9+*%#@]+@[a-zA-Z]+\.[a-zA-Z]{2,}$/;
             var passwordstr = /^[a-zA-Z0-9!@#$%^&*]{6,16}$/;

             
             if(emailstr.test(email.value)){
               emailError.innerHTML="";
             }else{
               emailError.innerHTML="*Invalid";
             }

             if(passwordstr.test(password.value)){
               passwordError.innerHTML="";
             }else{
               passwordError.innerHTML="*Invalid";
             }

             if(retypepassword.value !== password.value){
               RePasswordError.innerHTML="*Password do not match";
             }
             else{
               RePasswordError.innerHTML="";
             }

             if(emailError.innerHTML==="" &&passwordError.innerHTML === "" && RePasswordError.innerHTML === "" )
             {
                 alert("Form Submitted Successfully");
             }

        }
        
        
    </script>
</body>
</html>