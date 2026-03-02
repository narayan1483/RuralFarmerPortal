<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Weather Update</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body class="weather-body">

<div class="weather-wrapper">
    <div class="weather-card">
        <h1>🌤 Weather Update</h1>
        <h2>${city}</h2>

        <div class="weather-grid">
            <div class="weather-item">
                🌡 <span>${temp}°C</span>
                <p>Temperature</p>
            </div>

            <div class="weather-item">
                🤒 <span>${feels}°C</span>
                <p>Feels Like</p>
            </div>

            <div class="weather-item">
                💧 <span>${humidity}%</span>
                <p>Humidity</p>
            </div>

            <div class="weather-item">
                ☁ <span>${condition}</span>
                <p>Condition</p>
            </div>
        </div>

        <a href="dashboard.jsp" class="weather-back-btn">← Back to Dashboard</a>
    </div>
</div>

</body>

</html>
