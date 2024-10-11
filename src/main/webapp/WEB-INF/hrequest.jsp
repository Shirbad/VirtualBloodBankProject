<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Request Blood</title>
    <style>
        .container {
            background-color: #edecec;
            padding: 10px;
            border-radius: 5px;
            border: 2px solid #a92020;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
            width: 300px;
            margin: 0 auto;
        }

        .input {
            padding: 8px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            width: 70%;
            display: inline-block;
            height: 10px;
            font-size: 11px;
        }

        .label {
            display: inline-block;
            font-size: 14px;
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
        
        #bloodgroup{
            width:75%;
        }
    </style>
</head>
<body>
    <center><h2>Request Blood</h2></center>
    <div class="container">
        <form  action="hsaverequest" method="post">
            <table>
                <tr>
                    <td class="label">Hospital ID:</td>
                    <td>
                        <input class="input" type="number" id="hospitalId" name="hospitalId">
                        <span class="error" id="hospitalidError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Blood Bank ID:</td>
                    <td>
                        <input class="input" type="number" id="bloodbankId" name="bloodbankId">
                        <span class="error" id="bloodbankidError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Blood Group:</td>
                    <td>
                        <select id="bloodgroup" name="bloodgroup">
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="AB">AB</option>
                            <option value="O">O</option>
                        </select>
                        <span class="error" id="bloodgroupError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">RH:</td>
                    <td>
                        <input type="radio" id="rh_positive" name="rh" value="+Ve">
                        <label for="rh_positive" id="font">+Ve</label>
                        <input type="radio" id="rh_negative" name="rh" value="-Ve">
                        <label for="rh_negative" id="font">-Ve</label>
                        <span class="error" id="rhError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Required No:</td>
                    <td>
                        <input class="input" type="number" id="requiredno" name="requiredno">
                        <span class="error" id="requirednoError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Date:</td>
                    <td>
                        <input class="input" type="date" id="date" name="date" placeholder="mm/dd/yyyy">
                        <span class="error" id="dateError"></span>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp;</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input id="submit" type="submit" value="Request" onclick="fun()"/>&nbsp&nbsp&nbsp
                        <input id="clear" type="reset" value="Clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <script>
        var hospitalid = document.getElementById("hospitalid");
        var bloodbankid = document.getElementById("bloodbankid");
        var bloodgroup = document.getElementById("bloodgroup");
        var rh_positive = document.getElementById("rh_positive");
        var rh_negative = document.getElementById("rh_negative");
        var requiredno = document.getElementById("requiredno");
        var date = document.getElementById("date");

        function fun()
        {
            var hospitalidstr = /^[0-9]+$/;
            var bloodbankidstr = /^[0-9]+$/;
            var bloodgroupstr = /^[A|B|AB|O]+$/;
            var rhstr = /^[+|-]Ve$/;
            var requirednostr = /^[0-9]+$/;
            var datestr = /^(0[1-9]|1[0-2])\/(0[1-9]|1[0-9]|2[0-9]|3[0-1])\/[0-9]{4}$/;

            if (hospitalidstr.test(hospitalid.value)) {
                hospitalidError.innerHTML = "";
            } else {
                hospitalidError.innerHTML = "*Invalid";
            }

            if (bloodbankidstr.test(bloodbankid.value)) {
                bloodbankidError.innerHTML = "";
            } else {
                bloodbankidError.innerHTML = "*Invalid";
            }

            if (bloodgroupstr.test(bloodgroup.value)) {
                bloodgroupError.innerHTML = "";
            } else {
                bloodgroupError.innerHTML = "*Invalid";
            }

            if (rh_positive.checked || rh_negative.checked) {
                rhError.innerHTML = "";
            } else {
                rhError.innerHTML = "*Required";
            }

            if (requirednostr.test(requiredno.value)) {
            	requirednosError.innerHTML = "";
            } else {
            	requirednoError.innerHTML = "*Invalid";
            }

            if (datestr.test(date.value)) {
                dateError.innerHTML = "";
            } else {
                dateError.innerHTML = "*Invalid";
            }

            if (hospitalidError.innerHTML === "" &&
                bloodbankidError.innerHTML === "" &&
                bloodgroupError.innerHTML === "" &&
                rhError.innerHTML === "" &&
                requirednoError.innerHTML === "" &&
                dateError.innerHTML === "") {
                alert("Request Successful");
            }
        }
    </script>
</body>
</html>