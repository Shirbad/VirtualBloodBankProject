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
             width: 400px;
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
             font-size: 14px;
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
             height: 15px;
         }
         #district {
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
    <center><h2>Blood Bank | Registration Form</h2></center>
    <div class="container">
        <form action="bbsave" method="post">
            <table>
                <tr>
                    <td class="label">User_id:</td>
                    <td>
                        <input class="input" type="text" id="userid" name="userid" required>
                        <span class="error" id="useridError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Name:</td>
                    <td>
                        <input class="input" type="text" id="name" name="name" required>
                        <span class="error" id="nameError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Contact no:</td>
                    <td>
                        <input class="input" type="text" id="contact" name="contactNo" required>
                        <span class="error" id="contactError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">AddressLine 1:</td>
                    <td>
                        <textarea class="textarea" id="address" name="addressLine1" rows="3" cols="30"></textarea>
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
                    <td class="label">Name of Incharger:</td>
                    <td>
                        <input class="input" type="text" id="incharger_name" name="inchargerName" required>
                        <span class="error" id="inchargerNameError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Incharger phone no:</td>
                    <td>
                        <input class="input" type="text" id="incharger_phone" name="inchargerPhone" required>
                        <span class="error" id="inchargerPhoneError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Blood component separation facility:</td>
                    <td>
                        <input type="radio" id="blood_component_yes" name="bloodComponentSeparationFacility" value="Yes" required>
                        <label for="blood_component_yes" id="font">Yes</label>
                        <input type="radio" id="blood_component_no" name="bloodComponentSeparationFacility" value="No" required>
                        <label for="blood_component_no" id="font">No</label>
                        <span class="error" id="bloodComponentError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Attached to any storage unit:</td>
                    <td>
                        <input type="radio" id="storage_unit_yes" name="attachedToStorageUnit" value="Yes" required>
                        <label for="storage_unit_yes" id="font">Yes</label>
                        <input type="radio" id="storage_unit_no" name="attachedToStorageUnit" value="No" required>
                        <label for="storage_unit_no" id="font">No</label>
                        <span class="error" id="storageUnitError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">License no:</td>
                    <td>
                        <input class="input" type="text" id="license_no" name="licenseNo" required>
                        <span class="error" id="licenseNoError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">License status:</td>
                    <td>
                        <input type="radio" id="license_valid" name="licenseStatus" value="Valid" required>
                        <label for="license_valid" id="font">Valid</label>
                        <input type="radio" id="license_not_valid" name="licenseStatus" value="Not Valid" required>
                        <label for="license_not_valid" id="font">Not Valid</label>
                        <span class="error" id="licenseStatusError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Validity upto:</td>
                    <td>
                        <input class="input" type="date" id="validity_upto" name="validityUpto" required>
                        <span class="error" id="validityUptoError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Reporting period:</td>
                    <td>
                        <input class="input" type="text" id="reporting_period" name="reportingPeriod" required>
                        <span class="error" id="reportingPeriodError"></span>
                    </td>
                </tr>
                <tr>
                    <td class="label">Supported by NACO:</td>
                    <td>
                        <input type="radio" id="supported_yes" name="supportedByNACO" value="Yes" required>
                        <label for="supported_yes" id="font">Yes</label>
                        <input type="radio" id="supported_no" name="supportedByNACO" value="No" required>
                        <label for="supported_no" id="font">No</label>
                        <span class="error" id="supportedNacoError"></span>
                    </td>
                </tr>
                <tr>
                    <td>&nbsp</td>
                </tr>
                <tr>
                    <td colspan="2" style="text-align: center;">
                        <input  id="submit" type="submit" value="Confirm" onclick="fun()"/>&nbsp&nbsp&nbsp
                        <input  id="clear" type="reset" value="clear"/>
                    </td>
                </tr>
            </table>
        </form>
    </div>

    <script>
        var userid = document.getElementById("userid");
        var name = document.getElementById("name");
        var contact = document.getElementById("contact");
        var address = document.getElementById("address");
        var district = document.getElementById("district");
        var incharger_name = document.getElementById("incharger_name");
        var incharger_phone = document.getElementById("incharger_phone");
        var blood_component_yes = document.getElementById("blood_component_yes");
        var blood_component_no = document.getElementById("blood_component_no");
        var storage_unit_yes = document.getElementById("storage_unit_yes");
        var storage_unit_no = document.getElementById("storage_unit_no");
        var license_no = document.getElementById("license_no");
        var license_valid = document.getElementById("license_valid");
        var license_not_valid = document.getElementById("license_not_valid");
        var validity_upto = document.getElementById("validity_upto");
        var reporting_period = document.getElementById("reporting_period");
        var supported_yes = document.getElementById("supported_yes");
        var supported_no = document.getElementById("supported_no");

        function fun()
        {
            var useridstr = /^[a-zA-Z0-9_]+$/;
            var namestr = /^[a-zA-Z ]+$/;
            var contactstr = /^[0-9]{10}$/;
            var addressstr = /^[a-zA-Z0-9\s,]+$/;
            var inchargernamestr = /^[a-zA-Z ]+$/;
            var inchargerphonestr = /^[0-9]{10}$/;
            var licensenosstr = /^[a-zA-Z0-9]+$/;
            var reportingperiodstr = /^[a-zA-Z0-9\s,]+$/;

            if (useridstr.test(userid.value)) {
                useridError.innerHTML = "";
            } else {
                useridError.innerHTML = "*Invalid";
            }

            if (namestr.test(name.value)) {
                nameError.innerHTML = "";
            } else {
                nameError.innerHTML = "*Invalid";
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

            if (district.value != "") {
                districtError.innerHTML = "";
            } else {
                districtError.innerHTML = "*Required";
            }

            if (inchargernamestr.test(incharger_name.value)) {
                inchargerNameError.innerHTML = "";
            } else {
                inchargerNameError.innerHTML = "*Invalid";
            }

            if (inchargerphonestr.test(incharger_phone.value)) {
                inchargerPhoneError.innerHTML = "";
            } else {
                inchargerPhoneError.innerHTML = "*Invalid";
            }

            if (blood_component_yes.checked || blood_component_no.checked) {
                bloodComponentError.innerHTML = "";
            } else {
                bloodComponentError.innerHTML = "*Required";
            }

            if (storage_unit_yes.checked || storage_unit_no.checked) {
                storageUnitError.innerHTML = "";
            } else {
                storageUnitError.innerHTML = "*Required";
            }

            if (licensenosstr.test(license_no.value)) {
                licenseNoError.innerHTML = "";
            } else {
                licenseNoError.innerHTML = "*Invalid";
            }

            if (license_valid.checked || license_not_valid.checked) {
                licenseStatusError.innerHTML = "";
            } else {
                licenseStatusError.innerHTML = "*Required";
            }

            if (validity_upto.value != "") {
                validityUptoError.innerHTML = "";
            } else {
                validityUptoError.innerHTML = "*Required";
            }

            if (reportingperiodstr.test(reporting_period.value)) {
                reportingPeriodError.innerHTML = "";
            } else {
                reportingPeriodError.innerHTML = "*Invalid";
            }

            if (supported_yes.checked || supported_no.checked) {
                supportedNacoError.innerHTML = "";
            } else {
                supportedNacoError.innerHTML = "*Required";
            }

            if (useridError.innerHTML === "" &&
                nameError.innerHTML === "" &&
                contactError.innerHTML === "" &&
                addressError.innerHTML === "" &&
                districtError.innerHTML === "" &&
                inchargerNameError.innerHTML === "" &&
                inchargerPhoneError.innerHTML === "" &&
                bloodComponentError.innerHTML === "" &&
                storageUnitError.innerHTML === "" &&
                licenseNoError.innerHTML === "" &&
                licenseStatusError.innerHTML === "" &&
                validityUptoError.innerHTML === "" &&
                reportingPeriodError.innerHTML === "" &&
                supportedNacoError.innerHTML === "") {
                alert("Registration Successful");
            }
        }
    </script>
</body>
</html>