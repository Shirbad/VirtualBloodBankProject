<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>About Us - Virtual Blood Bank</title>
<style>
body {
	font-family: 'Arial', sans-serif;
	background-color: #fff;
	color: #333;
	padding: 7px;
	transition: all 0.3s ease-in-out;
}

.container {
	width: 90%;
	margin: auto;
	padding: 10px;
	box-shadow: 0 2px 4px 5px rgba(0, 0, 0, 0.1);
	transition: all 0.3s ease-in-out;
	border-radius: 8px;;
}

h1 {
	color: #a92020;
	font-size: 27px;
	text-align: center;
	position: relative;
	transition: color 0.3s ease-in-out;
}

h1:after {
	content: "";
	position: absolute;
	width: 0;
	height: 2px;
	background-color: #a92020;
	bottom: -5px;
	left: 0;
	right: 0;
	margin: 0 auto;
	transition: all 0.4s ease-in-out;
}

h1:hover:after {
	width: 50%;
}

h1:hover {
	color: #d12929;
}

h2 {
    color: #a92020;
    margin-top: 20px;
    font-size: 20px;
    display: flex;
    justify-content: center;
}

h2:hover {
    color: #d12929;
    transform: scale(1.1);
    text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.2);
}

p {
	font-size: 15px;
	line-height: 1.5;
	color: #666;
}

.services ul {
	list-style-type: none;
	padding: 0;
}

.services li {
	background-color: #f9f9f9;
	border-left: 5px solid #a92020;
	padding: 10px;
	margin-bottom: 5px;
	font-size: 15px;
	transition: transform 0.3s ease-in-out;
}

.services li:hover {
	transform: translateX(10px);
	background-color: #fdfdfd;
}

a {
	color: #a92020;
}
</style>
</head>
<body>
	<h1>About Virtual Blood Bank</h1>
	<div class="container">
		<div class="about">
			<p>The Virtual Blood Bank is a dedicated platform aimed at saving
				lives by connecting blood donors with recipients effortlessly. Our
				mission is to simplify and facilitate the blood donation process to
				ensure no one in need goes without this critical resource.</p>
		</div>

		<div class="mission">
			<h2>Our Mission</h2>
			<p>To enhance the health and wellbeing of communities by ensuring
				timely access to safe and vital blood supplies. We strive to bridge
				the gap between blood donors and recipients through our advanced,
				user-friendly platform. Our commitment extends beyond mere
				connections—we aim to educate the community about the importance of
				regular blood donation and how it can save lives every day.</p>
		</div>

		<div class="services">
			<h2>Services We Offer</h2>
			<ul>
				<li>Streamlined Donor Registration Process</li>
				<li>Comprehensive Search for Blood Availability</li>
				<li>Detailed Blood Donation History Tracking</li>
				<li>Locate Nearest Blood Banks with Ease</li>
			</ul>
		</div>

		<div class="importance">
			<h2>Why Donate Blood?</h2>
			<p>Every blood donation can save up to three lives. Join our
				community of donors and help us make a difference today!</p>
		</div>
	</div>
</body>
</html>
