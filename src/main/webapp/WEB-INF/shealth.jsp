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
    height:32vh;
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
    <center><h2>Health Update of Donor</h2></center>
    <div class="container">
    <form action="saveshealth" Method="post">
        <div>
            <label class="label">Donor Id:</label>
            <input class="input" type="text" id="donorid" name="donorid" required>
        </div>
        <div>
            <label class="label">Status:</label>
            <select class="input"  id="status" name="status" required>
            <option value="">Select Status</option>
            <option value="visible">Visible</option>
            <option value="visible">Not Visible</option></select>
        </div>
        <div>
            <center><input type="submit" class="submit"value="update"/></center>
        </div>
</body>
</html>