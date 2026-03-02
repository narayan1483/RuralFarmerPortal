<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Farmer Registration</title>
    <link rel="stylesheet" href="css/style.css">
</head>

<body class="auth-body">
    
   
<div class="auth-container">

    <div class="auth-card">

        <!-- LEFT INFO PANEL -->
        <div class="auth-left">
            <h1>🌾 Rural Farmer Portal</h1>
            <p>
                Register once <br>
                Get support, crops info <br>
                and government schemes
            </p>
        </div>

        <!-- RIGHT FORM PANEL -->
        <div class="auth-right">
            <h2>Farmer Registration</h2>

            <form action="<%= request.getContextPath() %>/register" method="post">

                <input type="text" name="name" placeholder="👤 Full Name" required>

                <input type="text" name="mobile" placeholder="📱 Mobile Number" required>

                <input type="text" name="village" placeholder="🏡 Village" required>

                <input type="password" name="password" placeholder="🔒 Password" required>

                <button type="submit">Register</button>
            </form>

            <p class="auth-link">
                Already registered?
                <a href="login.jsp">Login here</a>
            </p>
        </div>

    </div>

</div>
          

</body>
</html>
