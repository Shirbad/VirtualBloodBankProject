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
    width: 250px;
    margin: 0 auto;
    height:40vh;
    background-color: #edecec;
}
.input {
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #a92020;
    border-radius: 5px;
    width: 55%;
    height:3vh;
}
.label {
    display: inline-block;
    width: 20%;
    font-size: 12px;
}

.error {
    color: red;
    font-size: 12px;
}
.submit {
    background-color: #a92020;
    color: #fff;
    padding: 5px 15px;
    border: none;
    border-radius: 5px;
    cursor: pointer;
}
.submit:hover {
    background-color: #c80303;
}
</style>
</head>
<body>
    <center><h2>Date of Donate</h2></center>
    <div class="container">
    <form action="dateofdonate" method="post">
        <div>
            <label class="label">Your Id:</label>
            <input class="input" type="text" id="yourid" name="yourid" required>
        </div>
        <div>
            <label class="label">Date of Donate:</label>
            <input class="input" type="date" id="dod" name="dod" required>
            <span class="error" id="dobError"></span>
        </div>
        <div>
            <label class="label">Blood Bank Id:</label>
            <input class="input" type="number" id="bbid" name="bbid" required>
        </div>
        <div>
            <center><input  type="submit" value="save" class="submit"></center>
        </div>
</body>
</html>