<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Blood Bag Form</title>
    <style>
        body {
            padding: 8px;
        }
        .container {
            background-color: #edecec;
            padding: 8px;
            border-radius: 5px;
            border: 2px solid #a92020;
            box-shadow: 0 2px 5px rgba(238, 9, 9, 0.1);
            width: 320px;
            margin: 0 auto;
        }
        .form-table {
            width: 100%;
            border-collapse: collapse;
        }
        .form-table td {
            padding: 5px 0;
        }
        .label {
            text-align: left;
            font-size: 13px;
            width: 25%;
        }
        .input {
            padding: 8px;
            border: 1px solid #a92020;
            border-radius: 5px;
            width: 70%;
            box-sizing: border-box;
        }
        #status{
            width: 70%;
            height: 8vh;
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
    <center><h2>Add Blood Bag</h2></center>
    <div class="container">
        <form class="form" action="savebloodbag" method="post" >
            <table class="form-table">
                <tr>
                    <td class="label"><label for="bloodbankid">Bloodbank Id:</label></td>
                    <td>
                        <input class="input" type="number" id="bloodbankid" name="bloodbankid" required>
                        <span class="error" id="bloodbankidError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="donorid">Donor Id:</label></td>
                    <td>
                        <input class="input" type="text" id="donorid" name="donorid" required>
                        <span class="error" id="donoridError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="bloodgroup">Blood Group:</label></td>
                    <td>
                        <select class="input" id="bloodgroup" name="bloodgroup" required>
                            <option value="A">A</option>
                            <option value="B">B</option>
                            <option value="AB">AB</option>
                            <option value="O">O</option>
                        </select>
                        <span class="error" id="bloodgroupError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">RH :</td>
                    <td>
                        <input type="radio" id="rhpos" name="rh" value="positive" required> +Ve
                        <input type="radio" id="rhneg" name="rh" value="negative"> -Ve
                        <span class="error" id="rhError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="hb">HB:</label></td>
                    <td>
                        <input class="input" type="text" id="hb" name="hb" required>
                        <span class="error" id="hbError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="hiv">HIV:</label></td>
                    <td>
                        <input class="input" type="text" id="hiv" name="hiv" required>
                        <span class="error" id="hivError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="hsbag">HSBag:</label></td>
                    <td>
                        <input class="input" type="text" id="hsbag" name="hsbag" required>
                        <span class="error" id="hsbagError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="hcv">HCV:</label></td>
                    <td>
                        <input class="input" type="text" id="hcv" name="hcv" required>
                        <span class="error" id="hcvError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="vdrl">VDRL:</label></td>
                    <td>
                        <input class="input" type="text" id="vdrl" name="vdrl" required>
                        <span class="error" id="vdrlError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="expiry-date">Expiry Date:</label></td>
                    <td>
                        <input class="input" type="date" id="expirydate" name="expirydate" required>
                        <span class="error" id="expirydateError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="mp-mf">MP_MF:</label></td>
                    <td>
                        <input class="input" type="text" id="mpmf" name="mpmf" required>
                        <span class="error" id="mpmfError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="bp">BP:</label></td>
                    <td>
                        <input class="input" type="text" id="bp" name="bp" required>
                        <span class="error" id="bpError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label"><label for="status">Status:</label></td>
                    <td>
                        <select class="input" id="status" name="status" required>
                            <option value="Available">Available</option>
                            <option value="Not Available">Not Available</option>
                        </select>
                        <span class="error" id="statusError"></span>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input type="submit" id="submit" value="Confirm" onclick="fun()">
                    </td>
                </tr>
            </table>
        </form>
    </div>
    <script>
    var bloodbankId = document.getElementById("bloodbankid");
    var donorId = document.getElementById("donorid");
    var hb = document.getElementById("hb");
    var hiv = document.getElementById("hiv");
    var hsbag = document.getElementById("hsbag");
    var hcv = document.getElementById("hcv");
    var vdrl = document.getElementById("vdrl");
    var expiryDate = document.getElementById("expirydate");
    var bp = document.getElementById("bp");
    var bloodgroup = document.getElementById("bloodgroup");
    var rhpos = document.getElementById("rhpos");
    var rhneg = document.getElementById("rhneg");
    var status = document.getElementById("status");
    
    var bloodbankIdError = document.getElementById("bloodbankidError");
    var donorIdError = document.getElementById("donoridError");
    var hbError = document.getElementById("hbError");
    var hivError = document.getElementById("hivError");
    var hsbagError = document.getElementById("hsbagError");
    var hcvError = document.getElementById("hcvError");
    var vdrlError = document.getElementById("vdrlError");
    var expiryDateError = document.getElementById("expirydateError");
    var bpError = document.getElementById("bpError");
    var bloodgroupError = document.getElementById("bloodgroupError");
    var rhError = document.getElementById("rhError");
    var statusError = document.getElementById("statusError");
    
    function fun(){}

    var bloodbankIdstr = /^[0-9]+$/;
    var donorIdstr = /^[A-Za-z0-9]+$/;
    var hbstr = /^[0-9]+(\.[0-9]+)?$/;
    var hivstr = /^[A-Za-z]+$/;
    var bpstr = /^[0-9/]+$/;
   
    if (bloodbankIdstr.test(bloodbankId.value)) {
        bloodbankIdError.innerHTML = "";
    } else {
        bloodbankIdError.innerHTML = "*Invalid";
    }
    
    if (donorIdstr.test(donorId.value)) {
        donorIdError.innerHTML = "";
    } else {
        donorIdError.innerHTML = "*Invalid";
        isValid = false;
    }
    
    if (hbstr.test(hb.value)) {
        hbError.innerHTML = "";
    } else {
        hbError.innerHTML = "*Invalid";
        isValid = false;
    }
    
    if (hivstr.test(hiv.value)) {
        hivError.innerHTML = "";
    } else {
        hivError.innerHTML = "*Invalid";
        isValid = false;
    }
    
    if (hsbag.value !== "") {
        hsbagError.innerHTML = "";
    } else {
        hsbagError.innerHTML = "*Required";
        isValid = false;
    }
    
    if (hcv.value !== "") {
        hcvError.innerHTML = "";
    } else {
        hcvError.innerHTML = "*Required";
        isValid = false;
    }
    
    if (vdrl.value !== "") {
        vdrlError.innerHTML = "";
    } else {
        vdrlError.innerHTML = "*Required";
        isValid = false;
    }
    
    if (expiryDate.value !== "") {
        expiryDateError.innerHTML = "";
    } else {
        expiryDateError.innerHTML = "*Required";
        isValid = false;
    }
    
    if (bpstr.test(bp.value)) {
        bpError.innerHTML = "";
    } else {
        bpError.innerHTML = "*Invalid";
        isValid = false;
    }

    if (bloodgroup.value !== "") {
        bloodgroupError.innerHTML = "";
    } else {
        bloodgroupError.innerHTML = "*Required";
        isValid = false;
    }
    
    if (rhpos.checked || rhneg.checked) {
        rhError.innerHTML = "";
    } else {
        rhError.innerHTML = "*Required";
        isValid = false;
    }
    
    if (status.value !== "") {
        statusError.innerHTML = "";
    } else {
        statusError.innerHTML = "*Required";
        isValid = false;
    }

    if(bloodbankIdError.innerHTML=== ""&& donorIdError.innerHTML === ""&&  hbError.innerHTML === "" && hivError.innerHTML === "" && hsbagError.innerHTML === "" && hcvError.innerHTML === "" && vdrlError.innerHTML === "" && expiryDateError.innerHTML === "" && bpError.innerHTML === "" && bloodgroupError.innerHTML === "" && rhError.innerHTML === "" && statusError.innerHTML === "")
    {
        alert("Form Submitted Successfully");
    }
    }
    </script>
</body>
</html>
