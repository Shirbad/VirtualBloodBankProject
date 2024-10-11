<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Hospital Registration</title>
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
            height: 10px;
            font-size: 11px;
        }

        .label {
            display: inline-block;
            font-size: 15px;
        }

        #submit, #clear {
            background-color: #a92020;
            color: #fff;
            padding: 6px 16px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        #submit:hover, #clear:hover {
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
            height: 15px;
        }

        #district, #bloodgroup {
            width: 73%;
            height: 7vh;
            font-size: 10px;
            align-items: center;
        }

        #font {
            font-size: 15px;
        }
    </style>
</head>
<body>
    <center><h2>Hospital | Complete your registration</h2></center>
    <div class="container">
        <form id="registrationForm" action="hsaveregister" method="post">
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
                    <td class="label">Name of MD:</td>
                    <td>
                        <input class="input" type="text" id="mdname" name="mdname" required>
                        <span class="error" id="mdnameError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">MD no:</td>
                    <td>
                        <input class="input" type="text" id="mdno" name="mdno" required>
                        <span class="error" id="mdnoError"></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input id="submit" type="submit" value="Confirm" onclick="validateForm()">
                        <input id="clear" type="reset" value="Clear">
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <script>
        const form = document.getElementById('registrationForm');
        const userid = document.getElementById("userid");
        const fname = document.getElementById("fname");
        const contact = document.getElementById("contact");
        const address = document.getElementById("address");
        const district = document.getElementById("district");
        const mdname = document.getElementById("mdname");
        const mdno = document.getElementById("mdno");

        const useridError = document.getElementById("useridError");
        const fnameError = document.getElementById("fnameError");
        const contactError = document.getElementById("contactError");
        const addressError = document.getElementById("addressError");
        const districtError = document.getElementById("districtError");
        const mdnameError = document.getElementById("mdnameError");
        const mdnoError = document.getElementById("mdnoError");

        function validateForm() {
            let isValid = true;

            const useridstr = /^[a-zA-Z0-9_]+$/;
            const fnamestr = /^[a-zA-Z ]+$/;
            const contactstr = /^[0-9]{10}$/;
            const addressstr = /^[a-zA-Z0-9\s,]+$/;

            if (!useridstr.test(userid.value)) {
                useridError.innerHTML = "*Invalid";
                isValid = false;
            } else {
                useridError.innerHTML = "";
            }

            if (!fnamestr.test(fname.value)) {
                fnameError.innerHTML = "*Invalid";
                isValid = false;
            } else {
                fnameError.innerHTML = "";
            }

            if (!contactstr.test(contact.value)) {
                contactError.innerHTML = "*Invalid";
                isValid = false;
            } else {
                contactError.innerHTML = "";
            }

            if (!addressstr.test(address.value)) {
                addressError.innerHTML = "*Invalid";
                isValid = false;
            } else {
                addressError.innerHTML = "";
            }

            if (district.value === "") {
                districtError.innerHTML = "*Required";
                isValid = false;
            } else {
                districtError.innerHTML = "";
            }

            if (mdname.value === "") {
                mdnameError.innerHTML = "*Required";
                isValid = false;
            } else {
                mdnameError.innerHTML = "";
            }

            if (mdno.value === "") {
                mdnoError.innerHTML = "*Required";
                isValid = false;
            } else {
                mdnoError.innerHTML = "";
            }

            if (isValid) {
                alert("Registration Successful");
                
            }
        }
    </script>
</body>
</html>