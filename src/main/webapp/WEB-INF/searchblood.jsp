<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Search Blood</title>
<style>
.container {
    padding: 10px;
    border-radius: 5px;
    border: 2px solid #a92020;
    box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    width: 250px;
    margin: 0 auto;
    height:37vh;
    background-color: #edecec;
}
.input {
    padding: 10px;
    margin-bottom: 10px;
    border: 1px solid #a92020;
    border-radius: 5px;
    width: 55%;
    height:7vh;
    font-size:8px;
}
.label {
    display: inline-block;
    width: 30%;
    font-size: 14px;
    
}
.input[type="radio"] {
    width: auto;
    margin-left: 10px;
    height:4vh;
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
    <center><h2>Search Blood</h2></center>
    <div class="container">
    <form action="searchsave" method="get">
        <div>
            <label class="label">Blood Group:</label>
            <select class="input" id="bloodgroup" name="bloodgroup" required>
                <option value="A">A</option>
                <option value="B">B</option>
                <option value="AB">AB</option>
                <option value="O">O</option>
            </select>
        </div>
        <div>
            <label class="label">RH:</label>
            <input class="input" type="radio" id="rhpositive" name="rh" value="+Ve" required> +Ve
            <input class="input" type="radio" id="rhnegative" name="rh" value="-Ve" required> -Ve
        </div>
        <div>
            <label class="label">District:</label>
            <select class="input" id="district" name="district" required>
                <option value="">Select District</option>
                            <option value="Ahmednagar">Ahmednagar</option>
                            <option value="Akola">Akola</option>
                            <option value="Amravati">Amravati</option>
                            <option value="Aurangabad">Aurangabad</option>
                            <option value="Beed">Beed</option>
                            <option value="Buldhana">Buldhana</option>
                            <option value="Chandrapur">Chandrapur</option>
                            <option value="Dhule">Dhule</option>
                            <option value="Gadchiroli">Gadchiroli</option>
                            <option value="Gondia">Gondia</option>
                            <option value="Hingoli">Hingoli</option>
                            <option value="Jalgaon">Jalgaon</option>
                            <option value="Jalna">Jalna</option>
                            <option value="Kolhapur">Kolhapur</option>
                            <option value="Latur">Latur</option>
                            <option value="Mumbai City">Mumbai City</option>
                            <option value="Mumbai Suburban">Mumbai Suburban</option>
                            <option value="Nagpur">Nagpur</option>
                            <option value="Nanded">Nanded</option>
                            <option value="Nandurbar">Nandurbar</option>
                            <option value="Osmanabad">Osmanabad</option>
                            <option value="Palghar">Palghar</option>
                            <option value="Parbhani">Parbhani</option>
                            <option value="Pune">Pune</option>
                            <option value="Raigad">Raigad</option>
                            <option value="Ratnagiri">Ratnagiri</option>
                            <option value="Sangli">Sangli</option>
                            <option value="Satara">Satara</option>
                            <option value="Sindhudurg">Sindhudurg</option>
                            <option value="Solapur">Solapur</option>
                            <option value="Thane">Thane</option>
                            <option value="Wardha">Wardha</option>
                            <option value="Washim">Washim</option>
            </select>
        </div>
        <div>
            <center><input type="submit" value="Search" class="submit"></center>
        </div>
    </form>
    </div>
</body>
</html>
