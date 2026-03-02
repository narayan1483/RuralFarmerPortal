<%@ page import="model.Farmer" %>

<%
Farmer farmer = (Farmer) session.getAttribute("farmer");
%>

<!DOCTYPE html>
<html>
<head>
    <title>Rural Farmer Help Portal</title>
    <link rel="stylesheet" href="css/style.css">
  <style>
.hero{
    height:80vh;
    display:flex;
    justify-content:center;
    align-items:center;
    background-size:cover;
    background-position:center;
    position:relative;
    transition:background-image 1.5s ease-in-out;
}

.hero::before{
    content:"";
    position:absolute;
    top:0;
    left:0;
    width:100%;
    height:100%;
    background:rgba(0,0,0,0.35); /* dark overlay */
}

.hero-content{
    position:relative;
    z-index:2;
    color:white;
}
</style>


</head>
<body>
    <div class="navbar">
    <h1> Rural Farmer Portal</h1>
    <div>
        <a href="login.jsp">Login</a>
        <a href="register.jsp">Register</a>
        <a href="contact.jsp">Contact</a>
    </div>
</div>

<section class="hero">
    <div class="hero-content">
        <h2>Empowering Farmers with Knowledge</h2>
        <p>Crop guidance, weather updates, mandi prices & government schemes</p>
        <a href="register.jsp" class="btn">Get Started</a>
    </div>
</section>
    
   
 
    
    
 <section class="services">
    <h2>Our Services</h2>

    <div class="cards">

        <!-- Crop Guidance -->
        <a href="<%= (farmer == null ? "#" : "crops.jsp") %>"
           <% if (farmer == null) { %>
           onclick="alert('Please Login / Register First'); window.location='register.jsp'; return false;"
           <% } %>
           style="text-decoration:none; color:inherit;">
            <div class="card">
                <img src="images/crop.jpg">
                <h3>Crop Guidance</h3>
                <p>Learn about different crops, seasons, soil types, irrigation methods, and fertilizer tips.</p>
            </div>
        </a>

        <!-- Weather -->
        <a href="<%= (farmer == null ? "#" : "weather.jsp") %>"
           <% if (farmer == null) { %>
           onclick="alert('Please Login / Register First'); window.location='register.jsp'; return false;"
           <% } %>
           style="text-decoration:none; color:inherit;">
            <div class="card">
                <img src="images/weather.jpg">
                <h3>Weather Updates</h3>
                <p>Get current weather conditions, rainfall forecasts, and multi-day weather predictions.</p>
            </div>
        </a>

        <!-- Support -->
        <a href="<%= (farmer == null ? "#" : "contact.jsp") %>"
           <% if (farmer == null) { %>
           onclick="alert('Please Login / Register First'); window.location='register.jsp'; return false;"
           <% } %>
           style="text-decoration:none; color:inherit;">
            <div class="card">
                <img src="images/support.png">
                <h3>Support</h3>
                <p>Get village-level support and connect with our helpline for agricultural assistance.</p>
            </div>
        </a>

        <!-- Mandi -->
        <a href="<%= (farmer == null ? "#" : "mandi.jsp") %>"
           <% if (farmer == null) { %>
           onclick="alert('Please Login / Register First'); window.location='register.jsp'; return false;"
           <% } %>
           style="text-decoration:none; color:inherit;">
            <div class="card">
                <img src="images/mandi.jpg">
                <h3>Mandi Prices</h3>
                <p>Check current market prices for your crops across different mandis.</p>
            </div>
        </a>

        <!-- Disease -->
        <a href="<%= (farmer == null ? "#" : "disease.jsp") %>"
           <% if (farmer == null) { %>
           onclick="alert('Please Login / Register First'); window.location='register.jsp'; return false;"
           <% } %>
           style="text-decoration:none; color:inherit;">
            <div class="card">
                <img src="images/Disease.png">
                <h3>Disease Solutions</h3>
                <p>Identify crop diseases and get prevention methods in simple language.</p>
            </div>
        </a>

        <!-- Government -->
        <a href="<%= (farmer == null ? "#" : "schemes") %>"
           <% if (farmer == null) { %>
           onclick="alert('Please Login / Register First'); window.location='register.jsp'; return false;"
           <% } %>
           style="text-decoration:none; color:inherit;">
            <div class="card">
                <img src="images/Government.png">
                <h3>Government Schemes</h3>
                <p>Learn about schemes, eligibility, benefits, and how to apply.</p>
            </div>
        </a>

    </div>
</section>
    
    
    
    
    <!-- ===== Featured Crops Section ===== -->

<section class="featured-crops">

    <h2 class="section-title">Featured Crops</h2>

    <div class="crop-grid">

       <a href="rice.jsp" class="crop-box">
    <img src="images/rice.jfif">
    <h3>Rice</h3>
</a>

<a href="wheat.jsp" class="crop-box">
    <img src="images/wheat.jfif">
    <h3>Wheat</h3>
</a>

<a href="cotton.jsp" class="crop-box">
    <img src="images/cotton.jfif">
    <h3>Cotton</h3>
</a>

<a href="maize.jsp" class="crop-box">
    <img src="images/maize.jfif">
    <h3>Maize</h3>
</a>

    </div>

</section>




       <footer class="footer">
    <p>© 2026 Rural Farmer Help Portal. All rights reserved.</p>
    <span>Empowering rural farmers with technology and knowledge</span>
</footer>

    <script>
const images = [
        

    "images/farm1.jpg",
    "images/farm2.jpg",
    "images/farm3.jpg",
    "images/farm6.jpg",
    "images/farm7.png"

];

let index = 0;
const hero = document.querySelector(".hero");

function changeBackground(){
    hero.style.backgroundImage = "url('" + images[index] + "')";
    index = (index + 1) % images.length;
}

changeBackground(); // first image load
setInterval(changeBackground, 4000); // change every 4 sec
</script>


</body>
</html>
