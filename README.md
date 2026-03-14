# 🌾 Rural Farmer Portal

<div align="center">

![Banner](https://img.shields.io/badge/🌾-Rural%20Farmer%20Portal-2d8a4e?style=for-the-badge)
![Java](https://img.shields.io/badge/Java-JSP%20%2F%20Servlet-007396?style=for-the-badge&logo=java&logoColor=white)
![MySQL](https://img.shields.io/badge/MySQL-Database-4479A1?style=for-the-badge&logo=mysql&logoColor=white)
![Apache Tomcat](https://img.shields.io/badge/Apache-Tomcat-F8DC75?style=for-the-badge&logo=apache-tomcat&logoColor=black)
![MVC](https://img.shields.io/badge/Architecture-MVC-ff6600?style=for-the-badge)

**A Java-based web portal designed to empower rural farmers with crop info,
mandi prices, weather updates & government schemes — all in one place.**

*Developed by **Narayan Prasad Maurya***

</div>

---

## 🌟 About The Project

**Rural Farmer Portal** is a full-stack web application built to bridge the information gap for Indian farmers. It provides real-time access to crop details, daily mandi prices, weather forecasts, government schemes, and farmer support services — helping farmers make smarter decisions.

> *"Empowering every farmer with the right information at the right time."*

---

## ✨ Features

| Feature | Description |
|---------|-------------|
| 🌱 **Crop Information** | Detailed info on Rice, Wheat, Maize, Cotton, Mandi & more |
| 💰 **Mandi Prices** | Daily market prices for crops |
| 🌤️ **Weather Updates** | Local weather forecasts for farmers |
| 🏛️ **Govt. Schemes** | Latest government schemes & subsidies |
| 👤 **Farmer Profile** | Register, login & manage personal profile |
| 🔒 **Change Password** | Secure password management |
| 📞 **Contact Support** | Farmer support & helpline |
| 🔐 **Authentication** | Secure login & registration system |

---

## 🛠️ Tech Stack

| Layer | Technology |
|-------|-----------|
| **Frontend** | HTML5, CSS3, JSP, JavaScript |
| **Backend** | Java, JSP, Servlets |
| **Architecture** | MVC (Model-View-Controller) |
| **Database** | MySQL |
| **Server** | Apache Tomcat / TomEE |
| **IDE** | Apache NetBeans IDE 28 |
| **Libraries** | mysql-connector-j-8.3.0, json-20240303 |

---

## 📁 Project Structure

```
RuralFarmerPortal/
│
├── web/                          ← Web Pages (Frontend)
│   ├── css/
│   │   └── style.css
│   ├── images/
│   │   ├── hero.jpg
│   │   ├── farm1.jpg ~ farm7.jpg
│   │   ├── crop.jpg
│   │   ├── mandi.jpg
│   │   ├── maize.jfif
│   │   ├── cotton.jfif
│   │   ├── rice.jfif
│   │   ├── wheat.jfif
│   │   ├── weather.jpg
│   │   ├── Disease.png
│   │   ├── Government.png
│   │   └── support.png
│   │
│   ├── index.jsp                 ← Home / Landing Page
│   ├── login.jsp                 ← Farmer Login
│   ├── register.jsp              ← New Farmer Registration
│   ├── dashboard.jsp             ← Farmer Dashboard
│   ├── profile.jsp               ← Farmer Profile
│   ├── editProfile.jsp           ← Edit Profile
│   ├── changePassword.jsp        ← Change Password
│   ├── crops.jsp                 ← All Crops Info
│   ├── rice.jsp                  ← Rice Details
│   ├── wheat.jsp                 ← Wheat Details
│   ├── maize.jsp                 ← Maize Details
│   ├── cotton.jsp                ← Cotton Details
│   ├── mandi.jsp                 ← Mandi Prices
│   ├── weather.jsp               ← Weather Info
│   ├── schemes.jsp               ← Govt. Schemes
│   └── contact.jsp               ← Contact & Support
│
├── src/
│   ├── controller/               ← Servlet Controllers
│   │   ├── LoginServlet.java
│   │   ├── RegisterServlet.java
│   │   ├── LogoutServlet.java
│   │   ├── EditProfileServlet.java
│   │   ├── ChangePasswordServlet.java
│   │   ├── CropServlet.java
│   │   ├── MandiServlet.java
│   │   ├── WeatherServlet.java
│   │   └── GovtSchemeServlet.java
│   │
│   ├── dao/                      ← Data Access Layer
│   │   ├── FarmerDAO.java
│   │   ├── CropDAO.java
│   │   ├── MandiDAO.java
│   │   └── GovtSchemeDAO.java
│   │
│   ├── model/                    ← POJO Models
│   │   ├── Farmer.java
│   │   ├── Crop.java
│   │   ├── MandiPrice.java
│   │   └── GovtScheme.java
│   │
│   └── util/
│       └── DBConnection.java     ← Database Connection
│
├── build.xml
└── README.md
```

---

## ⚙️ Setup & Installation

### Prerequisites
- Java JDK 21+
- Apache Tomcat / TomEE
- MySQL Server 8.0+
- NetBeans IDE (recommended)
- `mysql-connector-j-8.3.0.jar`
- `json-20240303.jar`

### 1. Clone the Repository
```bash
git clone https://github.com/narayan1483/RuralFarmerPortal.git
cd RuralFarmerPortal
```

### 2. Database Setup
```sql
CREATE DATABASE rural_farmer_portal;
USE rural_farmer_portal;

-- Farmers table
CREATE TABLE farmers (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    username VARCHAR(50) UNIQUE NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    village VARCHAR(100),
    district VARCHAR(100),
    state VARCHAR(100)
);

-- Crops table
CREATE TABLE crops (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100),
    season VARCHAR(50),
    description TEXT,
    care_tips TEXT
);

-- Mandi prices table
CREATE TABLE mandi_prices (
    id INT AUTO_INCREMENT PRIMARY KEY,
    crop_name VARCHAR(100),
    market VARCHAR(100),
    price DECIMAL(10,2),
    date DATE
);

-- Govt schemes table
CREATE TABLE govt_schemes (
    id INT AUTO_INCREMENT PRIMARY KEY,
    scheme_name VARCHAR(200),
    description TEXT,
    benefits TEXT,
    eligibility TEXT,
    link VARCHAR(300)
);
```

### 3. Configure Database Connection
Edit `src/util/DBConnection.java`:
```java
private static final String URL  = "jdbc:mysql://localhost:3306/rural_farmer_portal";
private static final String USER = "your_mysql_username";
private static final String PASS = "your_mysql_password";
```

### 4. Add Required JARs
Add to project libraries:
- `mysql-connector-j-8.3.0.jar`
- `json-20240303.jar`

### 5. Deploy on Tomcat
- Open project in **NetBeans IDE**
- Right-click → **Clean and Build**
- Run on **Apache Tomcat**
- Open: `http://localhost:8080/RuralFarmerPortal/`

---

## 📸 Screenshots

> 📌 All screenshots are stored in `web/images/` folder in the repository.

### 🔐 Login Page
![Login Page](https://raw.githubusercontent.com/narayan1483/RuralFarmerPortal/master/web/images/login.png)

---

### 📝 Farmer Registration
![Register Page](https://raw.githubusercontent.com/narayan1483/RuralFarmerPortal/master/web/images/register.png)

---

### 🏠 Farmer Dashboard
![Dashboard](https://raw.githubusercontent.com/narayan1483/RuralFarmerPortal/master/web/images/inside_loginpage.png)

---

### 👤 My Profile & Change Password
![Profile](https://raw.githubusercontent.com/narayan1483/RuralFarmerPortal/master/web/images/changeprofile.png)

---

### 🌤️ Weather Update — Raipur
![Weather](https://raw.githubusercontent.com/narayan1483/RuralFarmerPortal/master/web/images/weather.png)

---

## 🌱 Crop Pages

The portal includes dedicated pages for major Indian crops:

| Crop | Season | Details |
|------|--------|---------|
| 🌾 **Rice** | Kharif | Cultivation tips, varieties, disease info |
| 🌿 **Wheat** | Rabi | Sowing guide, irrigation, harvesting |
| 🌽 **Maize** | Kharif/Rabi | Growth stages, pest control |
| 🪴 **Cotton** | Kharif | Soil prep, picking, market info |

---

## 🔐 User Flow

```
Landing Page (index.jsp)
        │
        ├──► Register (register.jsp) ──► LoginServlet ──► Dashboard
        │
        └──► Login (login.jsp) ──────► LoginServlet ──► Dashboard
                                                              │
                                    ┌─────────────────────────┤
                                    │                         │
                               View Profile              Browse Crops
                               Edit Profile              Mandi Prices
                               Change Password           Weather Info
                                                         Govt Schemes
                                                         Contact
```

---

## 🚀 Future Plans

- [ ] Real-time mandi prices via API integration
- [ ] SMS/WhatsApp alerts for price changes
- [ ] Hindi & regional language support
- [ ] Mobile responsive PWA version
- [ ] Crop disease detection using AI/ML
- [ ] Farmer-to-farmer community forum
- [ ] Direct market selling feature
- [ ] Weather alerts & crop advisory

---

## 👨‍💻 Developer

<div align="center">

**Narayan Prasad Maurya**

*Full Stack Java Developer | JSP | Servlet | MySQL*

🌾 *Built with care for India's farming community* 🇮🇳

</div>

---

## 📄 License

This project is developed for educational and social purposes.  
© 2026 Narayan Prasad Maurya. All rights reserved.

---

<div align="center">

🌾 **Jai Kisan · Jai Hind** 🌾

⭐ *If this project helped you, please give it a star on GitHub!* ⭐

</div>
