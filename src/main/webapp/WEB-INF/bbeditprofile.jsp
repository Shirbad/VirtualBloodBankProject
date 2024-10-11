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
	width: 355px;
	margin: 0 auto;
}

.input {
	padding: 8px;
	margin-bottom: 10px;
	border: 1px solid #a92020;
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

#submit, #clear {
	background-color: #a92020;
	color: #fff;
	padding: 5px 15px;
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
	border: 1px solid #a92020;
	border-radius: 5px;
	width: 63%;
	display: inline-block;
	height: 15px;
}

#district, #bloodgroup {
	width: 73%;
	height: 8vh;
	font-size: 10px;
	align-items: center;
}

#font {
	font-size: 15px;
}
</style>
</head>
<body>

	<center>
		<h2>Blood Bank | EditProfile</h2>
	</center>
	<div class="container">
		<form action="bbeditprofile" method="post">
			<input type="hidden" name="userid" value="${bloodBank.userid}" />
			<table>
				<tr>
					<td class="label">Name:</td>
					<td><input class="input" type="text" id="fname" name="name"
						value="${bloodBank.name}" required> <span class="error"
						id="fnameError"></span></td>
				</tr>
				<tr>
					<td class="label">Contact no:</td>
					<td><input class="input" type="text" id="contact"
						name="contactNo" value="${bloodBank.contactNo}" required>
						<span class="error" id="contactError"></span></td>
				</tr>
				<tr>
					<td class="label">AddressLine 1:</td>
					<td><textarea class="textarea" id="address"
							name="addressLine1" rows="3" cols="30">${bloodBank.addressLine1}</textarea>
						<span class="error" id="addressError"></span></td>
				</tr>
				<tr>
					<td class="label">District:</td>
					<td><select class="input" id="district" name="district"
						required>
							<option value="">Select District</option>
							<option value="Ahmednagar"
								${bloodBank.district == 'Ahmednagar' ? 'selected' : ''}>Ahmednagar</option>
							<option value="Akola"
								${bloodBank.district == 'Akola' ? 'selected' : ''}>Akola</option>
							<option value="Amravati"
								${bloodBank.district == 'Amravati' ? 'selected' : ''}>Amravati</option>
							<option value="Aurangabad"
								${bloodBank.district == 'Aurangabad' ? 'selected' : ''}>Aurangabad</option>
							<option value="Beed"
								${bloodBank.district == 'Beed' ? 'selected' : ''}>Beed</option>
							<option value="Buldhana"
								${bloodBank.district == 'Buldhana' ? 'selected' : ''}>Buldhana</option>
							<option value="Chandrapur"
								${bloodBank.district == 'Chandrapur' ? 'selected' : ''}>Chandrapur</option>
							<option value="Dhule"
								${bloodBank.district == 'Dhule' ? 'selected' : ''}>Dhule</option>
							<option value="Gadchiroli"
								${bloodBank.district == 'Gadchiroli' ? 'selected' : ''}>Gadchiroli</option>
							<option value="Gondia"
								${bloodBank.district == 'Gondia' ? 'selected' : ''}>Gondia</option>
							<option value="Hingoli"
								${bloodBank.district == 'Hingoli' ? 'selected' : ''}>Hingoli</option>
							<option value="Jalgaon"
								${bloodBank.district == 'Jalgaon' ? 'selected' : ''}>Jalgaon</option>
							<option value="Jalna"
								${bloodBank.district == 'Jalna' ? 'selected' : ''}>Jalna</option>
							<option value="Kolhapur"
								${bloodBank.district == 'Kolhapur' ? 'selected' : ''}>Kolhapur</option>
							<option value="Latur"
								${bloodBank.district == 'Latur' ? 'selected' : ''}>Latur</option>
							<option value="Mumbai City"
								${bloodBank.district == 'Mumbai City' ? 'selected' : ''}>Mumbai
								City</option>
							<option value="Mumbai Suburban"
								${bloodBank.district == 'Mumbai Suburban' ? 'selected' : ''}>Mumbai
								Suburban</option>
							<option value="Nagpur"
								${bloodBank.district == 'Nagpur' ? 'selected' : ''}>Nagpur</option>
							<option value="Nanded"
								${bloodBank.district == 'Nanded' ? 'selected' : ''}>Nanded</option>
							<option value="Nandurbar"
								${bloodBank.district == 'Nandurbar' ? 'selected' : ''}>Nandurbar</option>
							<option value="Osmanabad"
								${bloodBank.district == 'Osmanabad' ? 'selected' : ''}>Osmanabad</option>
							<option value="Palghar"
								${bloodBank.district == 'Palghar' ? 'selected' : ''}>Palghar</option>
							<option value="Parbhani"
								${bloodBank.district == 'Parbhani' ? 'selected' : ''}>Parbhani</option>
							<option value="Pune"
								${bloodBank.district == 'Pune' ? 'selected' : ''}>Pune</option>
							<option value="Raigad"
								${bloodBank.district == 'Raigad' ? 'selected' : ''}>Raigad</option>
							<option value="Ratnagiri"
								${bloodBank.district == 'Ratnagiri' ? 'selected' : ''}>Ratnagiri</option>
							<option value="Sangli"
								${bloodBank.district == 'Sangli' ? 'selected' : ''}>Sangli</option>
							<option value="Satara"
								${bloodBank.district == 'Satara' ? 'selected' : ''}>Satara</option>
							<option value="Sindhudurg"
								${bloodBank.district == 'Sindhudurg' ? 'selected' : ''}>Sindhudurg</option>
							<option value="Solapur"
								${bloodBank.district == 'Solapur' ? 'selected' : ''}>Solapur</option>
							<option value="Thane"
								${bloodBank.district == 'Thane' ? 'selected' : ''}>Thane</option>
							<option value="Wardha"
								${bloodBank.district == 'Wardha' ? 'selected' : ''}>Wardha</option>
							<option value="Washim"
								${bloodBank.district == 'Washim' ? 'selected' : ''}>Washim</option>
					</select> <span class="error" id="districtError"></span></td>
				</tr>
				<tr>
					<td class="label">Name of Incharger:</td>
					<td><input class="input" type="text" id="incharger_name"
						name="inchargerName" value="${bloodBank.inchargerName}" required>
						<span class="error" id="inchargerNameError"></span></td>
				</tr>
				<tr>
					<td class="label">Incharger phone no:</td>
					<td><input class="input" type="tel" id="incharger_phone"
						name="inchargerPhone" value="${bloodBank.inchargerPhone}" required>
						<span class="error" id="inchargerPhoneError"></span></td>
				</tr>
				<tr>
					<td class="label">Blood component separation facility:</td>
					<td><input type="radio" id="blood_component_yes"
						name="bloodComponentSeparationFacility" value="Yes"
						${bloodBank.bloodComponentSeparationFacility == 'Yes' ? 'checked' : ''}
						required> <label for="blood_component_yes" id="font">Yes</label>
						<input type="radio" id="blood_component_no"
						name="bloodComponentSeparationFacility" value="No"
						${bloodBank.bloodComponentSeparationFacility == 'No' ? 'checked' : ''}
						required> <label for="blood_component_no" id="font">No</label>
						<span class="error" id="bloodComponentError"></span></td>
				</tr>
				<tr>
					<td class="label">Attached to any storage unit:</td>
					<td><input type="radio" id="storage_unit_yes"
						name="attachedToStorageUnit" value="Yes"
						${bloodBank.attachedToStorageUnit == 'Yes' ? 'checked' : ''}
						required> <label for="storage_unit_yes" id="font">Yes</label>
						<input type="radio" id="storage_unit_no"
						name="attachedToStorageUnit" value="No"
						${bloodBank.attachedToStorageUnit == 'No' ? 'checked' : ''}
						required> <label for="storage_unit_no" id="font">No</label>
						<span class="error" id="storageUnitError"></span></td>
				</tr>
				<tr>
					<td class="label">License no:</td>
					<td><input class="input" type="text" id="license_no"
						name="licenseNo" value="${bloodBank.licenseNo}" required>
						<span class="error" id="licenseNoError"></span></td>
				</tr>
				<tr>
					<td class="label">License status:</td>
					<td><input type="radio" id="license_valid"
						name="licenseStatus"
						${bloodBank.licenseStatus == 'Valid' ? 'checked' : ''}
						value="Valid" required> <label for="license_valid"
						id="font">Valid</label> <input type="radio" id="license_not_valid"
						name="licenseStatus" value="Not Valid"
						${bloodBank.licenseStatus == 'Not Valid' ? 'checked' : ''}
						required> <label for="license_not_valid" id="font">Not
							Valid</label> <span class="error" id="licenseStatusError"></span></td>
				</tr>
				<tr>
					<td class="label">Validity upto:</td>
					<td><input class="input" type="date" id="validity_upto"
						name="validityUpto" value="${bloodBank.validityUpto}" required>
						<span class="error" id="validityUptoError"></span></td>
				</tr>
				<tr>
					<td class="label">Reporting period:</td>
					<td><input class="input" type="text" id="reporting_period"
						name="reportingPeriod" value="${bloodBank.reportingPeriod}"
						required> <span class="error" id="reportingPeriodError"></span>
					</td>
				</tr>
				<tr>
					<td class="label">Supported by NACO:</td>
					<td><input type="radio" id="supported_yes"
						name="supportedByNACO" value="Yes"
						${bloodBank.supportedByNACO == 'Yes' ? 'checked' : ''} required>
						<label for="supported_yes" id="font">Yes</label> <input
						type="radio" id="supported_no" name="supportedByNACO" value="No"
						${bloodBank.supportedByNACO == 'No' ? 'checked' : ''} required>
						<label for="supported_no" id="font">No</label> <span class="error"
						id="supportedNacoError"></span></td>
				</tr>
				<tr>
					<td>&nbsp</td>
				</tr>
				<tr>
					<td colspan="2">
						<center>
							<input id="submit" type="submit" value="Confirm" onclick="fun()" />&nbsp&nbsp&nbsp
							<input id="clear" type="reset" value="clear" />
						</center>
					</td>
				</tr>
			</table>
		</form>
	</div>

	<script>
		var fname = document.getElementById("fname");
		var contact = document.getElementById("contact");
		var address = document.getElementById("address");
		var district = document.getElementById("district");
		var incharger_name = document.getElementById("incharger_name");
		var incharger_phone = document.getElementById("incharger_phone");
		var blood_component_yes = document
				.getElementById("blood_component_yes");
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

		function fun() {

			var fnamestr = /^[a-zA-Z ]+$/;
			var contactstr = /^[0-9]{10}$/;
			var addressstr = /^[a-zA-Z0-9\s,]+$/;
			var inchargernamestr = /^[a-zA-Z ]+$/;
			var inchargerphonestr = /^[0-9]{10}$/;
			var licensenosstr = /^[a-zA-Z0-9]+$/;
			var reportingperiodstr = /^[0-9]+$/;

			if (fnamestr.test(fname.value)) {
				fnameError.innerHTML = "";
			} else {
				fnameError.innerHTML = "*Invalid";
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

			if (fnameError.innerHTML === "" && contactError.innerHTML === ""
					&& addressError.innerHTML === ""
					&& districtError.innerHTML === ""
					&& inchargerNameError.innerHTML === ""
					&& inchargerPhoneError.innerHTML === ""
					&& bloodComponentError.innerHTML === ""
					&& storageUnitError.innerHTML === ""
					&& licenseNoError.innerHTML === ""
					&& licenseStatusError.innerHTML === ""
					&& validityUptoError.innerHTML === ""
					&& reportingPeriodError.innerHTML === ""
					&& supportedNacoError.innerHTML === "") {
				alert("Registration Successful");
			}
		}
	</script>
</body>
</html>