<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Blood Donation Facts</title>
    <style>
        body {
            font-family: 'Verdana', sans-serif;
            background-color: #f3f4f6;
            margin: 0;
            padding: 0;
            color: #444;
        }

        h1 {
            margin: 0;
            font-size: 32px;
            color: #a92020;
            padding: 20px;
            position: relative;
            text-align: center;
            transition: color 0.3s ease-in-out;
        }

        h1:after {
	        content: "";
	        position: absolute;
	        width: 0;
	        height: 3px;
	        background-color: #a92020;
	        bottom: -10px;
	        left: 50%;
	        transform: translateX(-50%);
	        transition: width 0.4s ease-in-out;
        }

        h1:hover:after {
	        width: 150px;
        }

        h1:hover {
	        color: #d12929;
        }

        .container {
            max-width: 1200px;
            margin: 0 auto;
            padding: 20px;
        }

        .facts-grid {
            display: grid;
            grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
            gap: 20px;
            justify-content: center;
        }

        .fact-item {
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 15px;
            background-color: white;
            border-radius: 8px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
        }

        .fact-item:hover {
            transform: translateY(-10px);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .fact-icon {
            font-size: 50px;
            color: #a92020;
            margin-bottom: 15px;
            transition: color 0.3s ease;
        }

        .fact-item:hover .fact-icon {
            color: #e74c3c;
        }

        .fact-item h3 {
            font-size: 20px;
            color: #a92020;
            margin-bottom: 10px;
            text-align: center;
        }

        .fact-item p {
            font-size: 15px;
            color: #555;
            text-align: center;
        }

        .fact-item p:hover {
            color: #333;
        }

        @media (max-width: 780px) {
            h1 {
                font-size: 24px;
            }
            .fact-item {
                padding: 15px;
            }
            .fact-item h3 {
                font-size: 18px;
            }
            .fact-item p {
                font-size: 12px;
            }
        }
    </style>
</head>
<body>

    <h1>Amazing Blood Donation Facts</h1>
    
    <div class="container">
        <div class="facts-grid">

            <div class="fact-item">
                <div class="fact-icon">💉</div>
                <h3>Donation Saves 3 Lives</h3>
                <p>One pint of blood can save up to three lives. Donating blood is one of the most impactful ways to help others.</p>
            </div>

            <div class="fact-item">
                <div class="fact-icon">🩸</div>
                <h3>Blood Every 2 Seconds</h3>
                <p>In the U.S. alone, someone needs blood every two seconds. Blood donation is essential to meet this demand.</p>
            </div>

            <div class="fact-item">
                <div class="fact-icon">🚫</div>
                <h3>Blood Can't Be Manufactured</h3>
                <p>There’s no artificial substitute for human blood. The only source is volunteer donors like you.</p>
            </div>

            <div class="fact-item">
                <div class="fact-icon">🆘</div>
                <h3>Universal Donor</h3>
                <p>People with O-negative blood are universal donors, meaning their blood can be used in emergencies for any patient.</p>
            </div>

            <div class="fact-item">
                <div class="fact-icon">🔄</div>
                <h3>Type O is in Demand</h3>
                <p>Type O blood is most commonly requested by hospitals. It’s always in demand for emergency transfusions.</p>
            </div>

            <div class="fact-item">
                <div class="fact-icon">⏳</div>
                <h3>Short Shelf Life</h3>
                <p>Red blood cells can be stored for just 42 days, while platelets last only 5 days. Regular donations are vital.</p>
            </div>

            <div class="fact-item">
                <div class="fact-icon">🔥</div>
                <h3>Burns Calories</h3>
                <p>Did you know? Donating one pint of blood can help you burn about 650 calories!</p>
            </div>

            <div class="fact-item">
                <div class="fact-icon">🆎</div>
                <h3>Rare Blood Types</h3>
                <p>Less than 1% of the population has AB-negative blood, the rarest blood type, which makes donors extremely valuable.</p>
            </div>

            <div class="fact-item">
                <div class="fact-icon">💪</div>
                <h3>Boosts Health</h3>
                <p>Regular blood donation is linked to reduced risk of heart disease and lower cholesterol levels.</p>
            </div>

            <div class="fact-item">
                <div class="fact-icon">🛡️</div>
                <h3>Prevents Iron Overload</h3>
                <p>Donating blood helps reduce excess iron in your body, which can protect you from certain health conditions.</p>
            </div>

            <div class="fact-item">
                <div class="fact-icon">🌊</div>
                <h3>Plasma Saves Lives</h3>
                <p>Plasma, the liquid part of blood, is often used to treat burn victims, trauma patients, and those with chronic conditions.</p>
            </div>

        </div>
    </div>

</body>
</html>
    