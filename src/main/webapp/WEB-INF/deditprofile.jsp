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
            border: 1px solid #a92020;
            border-radius: 5px;
            width: 65%;
            display: inline-block;
            height:10px;
            font-size: 11px;
        }
       .label {
            display: inline-block;
            font-size: 14px;
        }
        #submit , #clear {
            background-color: #a92020;
            color: #fff;
            padding: 5px 15px;
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
            border: 1px solid #a92020;
            border-radius: 5px;
            width: 63%;
            display: inline-block;
            height:15px;
        }
        #district , #bloodgroup{
            width:73%;
            height:8vh;
            font-size: 10px;
            align-items: center;
        }
        #font{
            font-size: 15px;
        }
        
    </style>
</head>
<body>
    <center><h2>Donor | Edit Your Profile</h2></center>
    <div class="container">
        <form action="deditProfile" method="post">
        <input type="hidden" name="userid" value="${donor.userid}"/>
            <table>
                <tr>
                    <td class="label">Name:</td>
                    <td>
                        <input class="input" type="text" id="fname" name="fname" value="${donor.fname}"required>
                        <span class="error" id="fnameError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Date of Birth:</td>
                    <td>
                        <input class="input" type="date" id="dob" name="dob" value="${donor.dob}" required>
                        <span class="error" id="dobError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Contact no:</td>
                    <td>
                        <input class="input" type="tel" id="contact" name="contact" value="${donor.contact}" required>
                        <span class="error" id="contactError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">AddressLine 1:</td>
                    <td>
                        <textarea class="textarea" id="address" name="address" rows="3" cols="30">${donor.address}</textarea>
                        <span class="error" id="addressError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label" >District:</td>
                    <td>
                        <select class="input" id="district" name="district" required>
                            <option value="">Select District</option>
                            <option value="Ahmednagar" ${donor.district == 'Ahmednagar' ? 'selected' : ''}>Ahmednagar</option>
                            <option value="Akola" ${donor.district == 'Akola' ? 'selected' : ''}>Akola</option>
                            <option value="Amravati" ${donor.district == 'Amravati' ? 'selected' : ''}>Amravati</option>
                            <option value="Aurangabad" ${donor.district == 'Aurangabad' ? 'selected' : ''}>Aurangabad</option>
                            <option value="Beed" ${donor.district == 'Beed' ? 'selected' : ''}>Beed</option>
                            <option value="Buldhana" ${donor.district == 'Buldhana' ? 'selected' : ''}>Buldhana</option>
                            <option value="Chandrapur" ${donor.district == 'Chandrapur' ? 'selected' : ''}>Chandrapur</option>
                            <option value="Dhule" ${donor.district == 'Dhule' ? 'selected' : ''}>Dhule</option>
                            <option value="Gadchiroli" ${donor.district == 'Gadchiroli' ? 'selected' : ''}>Gadchiroli</option>
                            <option value="Gondia" ${donor.district == 'Gondia' ? 'selected' : ''}>Gondia</option>
                            <option value="Hingoli" ${donor.district == 'Hingoli' ? 'selected' : ''}>Hingoli</option>
                            <option value="Jalgaon"${donor.district == 'Jalgaon' ? 'selected' : ''}>Jalgaon</option>
                            <option value="Jalna" ${donor.district == 'Jalna' ? 'selected' : ''}>Jalna</option>
                            <option value="Kolhapur"${donor.district == 'Kolhapur' ? 'selected' : ''}>Kolhapur</option>
                            <option value="Latur"${donor.district == 'Latur' ? 'selected' : ''}>Latur</option>
                            <option value="Mumbai City"${donor.district == 'Mumbai City' ? 'selected' : ''}>Mumbai City</option>
                            <option value="Mumbai Suburban" ${donor.district == 'Mumbai Suburban' ? 'selected' : ''}>Mumbai Suburban</option>
                            <option value="Nagpur" ${donor.district == 'Nagpur' ? 'selected' : ''}>Nagpur</option>
                            <option value="Nanded" ${donor.district == 'Nanded' ? 'selected' : ''}>Nanded</option>
                            <option value="Nandurbar"${donor.district == 'Nandurbar' ? 'selected' : ''}>Nandurbar</option>
                            <option value="Osmanabad"${donor.district == 'Osmanabad' ? 'selected' : ''}>Osmanabad</option>
                            <option value="Palghar" ${donor.district == 'Palghar' ? 'selected' : ''}>Palghar</option>
                            <option value="Parbhani"${donor.district == 'Parbhani' ? 'selected' : ''}>Parbhani</option>
                            <option value="Pune"${donor.district == 'Pune' ? 'selected' : ''}>Pune</option>
                            <option value="Raigad"${donor.district == 'Raigad' ? 'selected' : ''}>Raigad</option>
                            <option value="Ratnagiri"${donor.district == 'Ratnagiri' ? 'selected' : ''}>Ratnagiri</option>
                            <option value="Sangli"${donor.district == 'Sangli' ? 'selected' : ''}>Sangli</option>
                            <option value="Satara"${donor.district == 'Satara' ? 'selected' : ''}>Satara</option>
                            <option value="Sindhudurg"${donor.district == 'Sindhudurg' ? 'selected' : ''}>Sindhudurg</option>
                            <option value="Solapur"${donor.district == 'Solapur' ? 'selected' : ''}>Solapur</option>
                            <option value="Thane"${donor.district == 'Thane' ? 'selected' : ''}>Thane</option>
                            <option value="Wardha"${donor.district == 'Wardha' ? 'selected' : ''}>Wardha</option>
                            <option value="Washim"${donor.district == 'Washim' ? 'selected' : ''}>Washim</option>
                        </select>
                        <span class="error" id="districtError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Gender:</td>
                    <td>
                        <input type="radio" id="male" name="gender" value="Male"${donor.gender == 'Male' ? 'checked' : ''} required>
                        <label for="male" id="font">Male</label>
                        <input type="radio" id="female" name="gender" value="Female"${donor.gender == 'Female' ? 'checked' : ''} required>
                        <label for="female" id="font">Female</label>
                        <span class="error" id="genderError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Blood Group:</td>
                    <td>
                        <select class="input" id="bloodgroup" name="bloodgroup" required>
                            <option value="">Select Blood Group</option>
                            <option value="A"${donor.bloodgroup == 'A' ? 'selected' : ''}>A</option>
                            <option value="B"${donor.bloodgroup == 'B' ? 'selected' : ''}>B</option>
                            <option value="O"${donor.bloodgroup == 'O' ? 'selected' : ''}>O</option>
                        </select>
                        <span class="error" id="bloodgroupError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">RH:</td>
                    <td>
                        <input type="radio" id="rhpositive" name="rh" value="+Ve" ${donor.rh == '+Ve' ? 'checked' : ''} required>
                        <label for="rhpositive" id="font">+Ve</label>
                        <input type="radio" id="rhnegative" name="rh" value="-Ve"${donor.rh == '-Ve' ? 'checked' : ''} required>
                        <label for="rhnegative" id="font">-Ve</label>
                        <span class="error" id="rhError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Weight:</td>
                    <td>
                        <input class="input" type="number" id="weight" name="weight" value="${donor.weight}" srequired>
                        <span class="error" id="weightError" ></span>
                    </td>
                </tr>   
                <tr>
                    <td colspan="2">
                        <center>
                            <input type="submit" id="submit"  value ="Updateprofile" onclick="fun()"/>&nbsp&nbsp
                            <input type="submit" id="clear"  value ="clear" />
                        </center>
                    </td>
                </tr>
            </table>
        </form>
        </div>

        <script>
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
        
           function fun(){
        
                var fnamestr = /^[a-zA-Z ]+$/;
                var contactstr = /^[0-9]{10}$/;
                var addressstr = /^[a-zA-Z0-9\s,]+$/;
                var weightstr = /^[0-9]+$/;
                
                
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
                if (fnameError.innerHTML === "" &&
                    dobError.innerHTML === "" &&
                    contactError.innerHTML === "" &&
                    addressError.innerHTML === "" &&
                    districtError.innerHTML === "" &&
                    genderError.innerHTML === "" &&
                    bloodgroupError.innerHTML === "" &&
                    rhError.innerHTML === "" &&
                    weightError.innerHTML === "") {
                    alert("Updated  Successful");
                }
            }
        </script>
</body>
</html>

