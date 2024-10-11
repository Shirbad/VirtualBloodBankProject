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
        background-color: #edecec;
            padding: 10px;
            border-radius: 5px;
            border: 2px solid #a92020;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 320px;
            margin: 0 auto;
        }
       .input {
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 65%;
            display: inline-block;
            height:10px;
            font-size: 11px;
        }
       .label {
            display: inline-block;
            font-size: 15px;
        }
        #submit , #clear {
            background-color: #a92020;
            color: #fff;
            padding: 6px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        #submit:hover,#clear:hover {
            background-color: #c80303;
        }
       .error {
            color: red;
            font-size: 12px;
            text-align: left;
        }
        .textarea {
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 63%;
            display: inline-block;
            height:15px;
        }
        #district , #bloodgroup{
            width:73%;
            height:7vh;
            font-size: 10px;
            align-items: center;
        }
        #font{
            font-size: 15px;
        }
        
    </style>
</head>
<body>
    <center><h2>Donor | Complete your registration</h2></center>
    <div class="container">
        <form action="dsave" method="post">
            <table>
                <tr>
                    <td class="label">User-Id:</td>
                    <td>
                        <input class="input" type="text" id="userid" name="userid" required>
                        <span class="error" id="useridError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Name:</td>
                    <td>
                        <input class="input" type="text" id="fname" name="fname" required>
                        <span class="error" id="fnameError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Date of Birth:</td>
                    <td>
                        <input class="input" type="date" id="dob" name="dob" required>
                        <span class="error" id="dobError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Contact no:</td>
                    <td>
                        <input class="input" type="tel" id="contact" name="contact" required>
                        <span class="error" id="contactError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">AddressLine 1:</td>
                    <td>
                        <textarea class="textarea" id="address" name="address" rows="3" cols="30"></textarea>
                        <span class="error" id="addressError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">District:</td>
                    <td>
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
                        <span class="error" id="districtError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Gender:</td>
                    <td>
                        <input type="radio" id="male" name="gender" value="Male" required>
                        <label for="male" id="font">Male</label>
                        <input type="radio" id="female" name="gender" value="Female" required>
                        <label for="female" id="font">Female</label>
                        <span class="error" id="genderError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Blood Group:</td>
                    <td>
                        <select class="input" id="bloodgroup" name="bloodgroup" required>
                            <option value="">Select Blood Group</option>
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="O">O</option>
                        </select>
                        <span class="error" id="bloodgroupError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">RH:</td>
                    <td>
                        <input type="radio" id="rhpositive" name="rh" value="+Ve" required>
                        <label for="rhpositive" id="font">+Ve</label>
                        <input type="radio" id="rhnegative" name="rh" value="-Ve" required>
                        <label for="rhnegative" id="font">-Ve</label>
                        <span class="error" id="rhError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Weight:</td>
                    <td>
                        <input class="input" type="number" id="weight" name="weight" required>
                        <span class="error" id="weightError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Last Date of Donation:</td>
                    <td>
                        <input class="input" type="date" id="dod" name="dod" required>
                        <span class="error" id="dodError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Frequency:</td>
                    <td>
                        <input class="input" type="text" id="frequency" name="frequency" required>
                        <span class="error" id="frequencyError"></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input  id="submit" type="submit" value="Confirm" onclick="fun()"/>
                        <input  id="clear" type="reset" value="clear"/>
                    </td>
                </tr>
            </table>
        </form>
        </div>

        <script>
            var userid = document.getElementById("userid");
            var fname = document.getElementById("fname");
            var dob = document.getElementById("dob");
            var contact = document.getElementById("contact");
            var address = document.getElementById("address");
            var district = document.getElementById("district");
            var male = document.getElementById("male");
            var female = document.getElementById("female");
            var bloodgroup = document.getElementById("bloodgroup");
            var rhpositive = document.getElementById("rhpositive");
            var rhnegative = document.getElementById("rhnegative");
            var weight = document.getElementById("weight");
            var dod = document.getElementById("dod");
            var frequency = document.getElementById("frequency");
        
           function fun(){
        
                var useridstr = /^[a-zA-Z0-9_]+$/;
                var fnamestr = /^[a-zA-Z ]+$/;
                var contactstr = /^[0-9]{10}$/;
                var addressstr = /^[a-zA-Z0-9\s,]+$/;
                var weightstr = /^[0-9]+$/;
                var frequencystr = /^[a-zA-Z0-9\s,]+$/;
        
                if (useridstr.test(userid.value)) {
                    useridError.innerHTML = "";
                } else {
                    useridError.innerHTML = "*Invalid";
                }
        
                if (fnamestr.test(fname.value)) {
                    fnameError.innerHTML = "";
                } else {
                    fnameError.innerHTML = "*Invalid";
                }
        
                if (dob.value!= "") {
                    dobError.innerHTML = "";
                } else {
                    dobError.innerHTML = "*Required";
                }
        
                if (contactstr.test(contact.value)) {
                    contactError.innerHTML = "";
                } else {
                    contactError.innerHTML = "*Invalid";
                }
        
                if (addressstr.test(address.value)) {
                    addressError.innerHTML = "";
                } else {
                    addressError.innerHTML = "*Invalid";
                }
        
                if (district.value!= "") {
                    districtError.innerHTML = "";
                } else {
                    districtError.innerHTML = "*Required";
                }
        
                if (male.checked || female.checked) {
                    genderError.innerHTML = "";
                } else {
                    genderError.innerHTML = "*Required";
                }
        
                if (bloodgroup.value!= "") {
                    bloodgroupError.innerHTML = "";
                } else {
                    bloodgroupError.innerHTML = "*Required";
                }
        
                if (rhpositive.checked || rhnegative.checked) {
                    rhError.innerHTML = "";
                } else {
                    rhError.innerHTML = "*Required";
                }
        
                if (weightstr.test(weight.value)) {
                    weightError.innerHTML = "";
                } else {
                    weightError.innerHTML = "*Invalid";
                }
        
                if (dod.value!= "") {
                    dodError.innerHTML = "";
                } else {
                    dodError.innerHTML = "*Required";
                }
        
                if (frequencystr.test(frequency.value)) {
                    frequencyError.innerHTML = "";
                } else {
                    frequencyError.innerHTML = "*Invalid";
                }
        
                if (useridError.innerHTML === "" &&
                    fnameError.innerHTML === "" &&
                    dobError.innerHTML === "" &&
                    contactError.innerHTML === "" &&
                    addressError.innerHTML === "" &&
                    districtError.innerHTML === "" &&
                    genderError.innerHTML === "" &&
                    bloodgroupError.innerHTML === "" &&
                    rhError.innerHTML === "" &&
                    weightError.innerHTML === "" &&
                    dodError.innerHTML === "" &&
                    frequencyError.innerHTML === "") {
                    alert("Registration Successful");
                }
            }
        </script>
</body>
</html>

