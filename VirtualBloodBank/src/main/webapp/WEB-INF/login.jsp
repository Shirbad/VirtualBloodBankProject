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
      border-radius: 5px;
      border: 2px solid #a92020;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
      width: 270px;
      margin: 0 auto;
      background-color: #edecec;
    }
    .input {
      padding: 10px;
      margin-bottom: 10px;
      border: 1px solid #ccc;
      border-radius: 5px;
      width: 50%;
      display: inline-block;
      height:10px;
    }
    .label {
      display: inline-block;
      width: 20%;
      text-align: left;
      font-size: 14px;
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
    #role{
      width: 58%;
      font-size: 9px;
      height:9vh;
    }
    .error {
      color: red;
      font-size: 12px;      
    }
    </style>
</head>
<body>
    <center><h2>Blood Bank | Login Form</h2></center>
    <div class="container">
        <form action="save" method="POST"> 
            <div>
                <label class="label">User-Id:</label>
                <input class="input" type="text" id="email" name="userid" required>
                <span class="error" id="emailError"></span>
            </div>
            <div>
                <label class="label">Password:</label>
                <input class="input" type="password" id="password" required>
                <span class="error" id="passwordError"></span>
            </div>
            <div>
              <label class="label" for="role" >Role:</label>
              <select class="input" id="role" name="role" required>
                <option value="">Select Role</option>
                <option value="donor">Donor</option>
                <option value="bloodbank">Blood bank</option>
                <option value="stockmanager">Stock Manager</option>
                <option value="hospital">Hospital</option>
                
              </select>
            </div>
            <div>
               <center> <button id="submit" type="submit">Login</button></center>
            </div> 
        </form>
    </div>
    <script>
        var email=document.getElementById("email");
        var password=document.getElementById("password");

        submit.addEventListener("click",function(event){
        event.preventDefault();


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

            if(emailError.innerHTML==="" &&passwordError.innerHTML === "")
            {
                alert("Login Successfully");
            }
        });
    </script>
</body>
</html>