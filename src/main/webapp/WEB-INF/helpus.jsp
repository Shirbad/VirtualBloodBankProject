<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Help Us | Virtual Blood Bank</title>
    <style>
        @import url('https://fonts.googleapis.com/css2?family=Roboto:wght@400;500;700&display=swap');

        body {
            font-family: 'Roboto', sans-serif;
            background-color: #f4f6f8;
            margin: 0;
            padding: 0;
            color: #444;
        }
         h1 {
            font-size: 30px;
            margin: 0;
            padding:10px;
            position: relative;
	        transition: color 0.3s ease-in-out;
            color:#a92020
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
	        width: 15%;
        }

        h1:hover {
	        color: #d12929;
        }
        .section-title {
            text-align: center;
            margin: 40px 0 20px;
        }

        .section-title h2 {
            font-size: 20px;
            color: #333;
        }

        .section-title p {
            font-size: 15px;
            color: #666;
            margin-top: 10px;
        }

        .cards-container {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            max-width: 1100px;
            margin: 0 auto;
            padding: 0 20px;
        }

        .card {
            background-color: white;
            padding: 30px;
            border-radius: 12px;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.15);
        }

        .card h3 {
            font-size: 18px;
            color: #8a1f1f;
            margin-bottom: 10px;
        }

        .card p {
            font-size: 15px;
            color: #666;
        }

        .contact-container {
            background-color: #fff;
            padding: 10px 30px;
            border-top: 1px solid #e0e0e0;
            max-width: 500px;
            border-radius: 12px;
            margin: 50px auto;
            box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
        }

        .contact-container h2 {
            text-align: center;
            font-size: 28px;
            color: #333;
        }

        .contact-container p {
            text-align: center;
            font-size: 15px;
            color: #666;
            margin: 10px 0;
        }

        .contact-container .contact-details {
            text-align: center;
            margin-top: 30px;
        }

        .contact-container .contact-details p {
            margin: 5px 0;
            font-size: 15px;
            color: #444;
        }

        .form-container {
            max-width: 600px;
            margin: 30px auto;
            padding: 20px;
            background-color: #f9f9f9;
            border-radius: 8px;
           box-shadow: 0 2px 4px 5px rgba(0, 0, 0, 0.1);
        }

        .form-container form {
            display: flex;
            flex-direction: column;
        }

        .form-container label {
            font-size: 15px;
            margin-bottom: 8px;
            color: #444;
        }

        .form-container input,
        .form-container textarea {
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 4px;
            font-size: 12px;
        }

        .form-container textarea {
            height: 130px;
            resize: vertical;
        }

        .form-container button {
            width:50%;
            padding: 10px;
            background-color: #8a1f1f;
            color: white;
            border: none;
            border-radius: 4px;
            font-size: 15px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .form-container button:hover {
            background-color: #d32e2e;
        }

    </style>
</head>
<body>

    <center>
        <h1>Help Us</h1>
    </center>
    

    <div class="section-title">
        <h2>How Can You Help?</h2>
        <p>Choose from the following options to support our efforts in saving lives.</p>
    </div>

    <div class="cards-container">
        <div class="card">
            <h3>Donate Blood</h3>
            <p>Register as a blood donor and help save lives by donating blood regularly.</p>
        </div>
        <div class="card">
            <h3>Spread Awareness</h3>
            <p>Share the importance of blood donation with your friends, family, and community.</p>
        </div>
        <div class="card">
            <h3>Volunteer</h3>
            <p>Join our team as a volunteer and assist with organizing blood donation drives and events.</p>
        </div>
        <div class="card">
            <h3>Fundraise</h3>
            <p>Support our efforts by raising funds to help us improve our services and reach more people.</p>
        </div>
        
    </div>

    <div class="contact-container">
        <h2>Contact Us</h2>
        <p>If you have any questions, feel free to reach out to us at:</p>
        <div class="contact-details">
            <p><strong>Phone:</strong> +1 (555) 123-4567</p>
            <p><strong>Email:</strong> info@virtualbloodbank.org</p>
            <p><strong>Address:</strong> 234 Blood Donation st., Nagpur, India</p>
        </div>

        <div class="form-container">
            <form action="contactus" method="POST" target="_top">
                <label for="name">Your Name</label>
                <input type="text" id="name" name="name" placeholder="Enter your name" required>

                <label for="email">Your Email</label>
                <input type="email" id="email" name="email" placeholder="Enter your email" required>

                <label for="subject">Subject</label>
                <input type="text" id="subject" name="subject" placeholder="Enter the subject" required>

                <label for="message">Your Message</label>
                <textarea id="message" name="message" placeholder="Enter your message" required></textarea>

               <center><button type="submit">Submit</button></center> 
            </form>
        </div>
    </div>

</body>
</html>
