<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Bank Registration</title>
    <style>
        .container {
            background-color: #edecec;
            padding: 10px;
            border-radius: 5px;
            border: 2px solid #a92020;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 290px;
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
    <center><h2>Stock Manager | Complete your registration</h2></center>
    <div class="container">
        <form id="registrationForm" action="seditprofile" method="post">
        <input type="hidden" name="userid"  value="${Stock.userid}"/>
            <table>
           
                <tr>
                    <td class="label">Bloodbank ID:</td>
                    <td>
                        <input class="input" type="number" id="bloodbankId" name="bloodbankId"value="${Stock.bloodbankId } "required>
                        <span class="error" id="bloodbankIdError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Name:</td>
                    <td>
                        <input class="input" type="text" id="name" name="name" value="${Stock.name }"required>
                        <span class="error" id="nameError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">DOB:</td>
                    <td>
                        <input class="input" type="date" id="dob" name="dob" value="${Stock.dob}"required>
                        <span class="error" id="dobError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">PhoneNo:</td>
                    <td>
                        <input class="input" type="tel" id="phoneNo" name="phoneNo"value="${Stock.phoneNo }" required>
                        <span class="error" id="phoneNoError"></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input id="submit" type="submit" value="Confirm" onclick="fun()">
                        <input id="clear" type="reset" value="Clear">
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <script>
        var form = document.getElementById('registrationForm');
        var bloodbankId = document.getElementById("bloodbankId");
        var name = document.getElementById("name");
        var dob = document.getElementById("dob");
        var phoneNo = document.getElementById("phoneNo");

        var bloodbankIdError = document.getElementById("bloodbankIdError");
        var nameError = document.getElementById("nameError");
        var dobError = document.getElementById("dobError");
        var phoneNoError = document.getElementById("phoneNoError");

        function fun(){

            var bloodbankIdstr = /^[0-9]+$/;
            var namestr = /^[a-zA-Z ]+$/;
            var phonenostr = /^[0-9]{10}$/;


            
            if (bloodbankIdstr.test(bloodbankId.value)) {
                bloodbankIdError.innerHTML = "";
            } else {
                bloodbankIdError.innerHTML = "*Invalid";
            }

            if (namestr.test(name.value)) {
                nameError.innerHTML = "";
            } else {
                nameError.innerHTML = "*Invalid";
            }

            if (phonenostr.test(phoneNo.value)) {
                phoneNoError.innerHTML = "";
            } else {
                phoneNoError.innerHTML = "*Invalid";
            }

            if (bloodbankIdError.innerHTML === ""&&
                    nameError.innerHTML === "" &&
                    phoneNoError.innerHTML === "" ) {
                alert("Registration Successful");
            }
        }
    </script>
</body>
</html>