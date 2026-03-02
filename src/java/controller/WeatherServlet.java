package controller;

import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import org.json.JSONArray;
import org.json.JSONObject;

public class WeatherServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // 1️⃣ City (later DB / session se bhi le sakte ho)
        String city = "Raipur";

        // 2️⃣ OpenWeather API Key
        String apiKey = "ceb151f25ebc741c0f7c125826f88088";

        // 3️⃣ API URL
        String urlStr =
                "https://api.openweathermap.org/data/2.5/weather?q="
                + city + "&units=metric&appid=" + apiKey;

        // 4️⃣ HTTP Connection
        URL url = new URL(urlStr);
        HttpURLConnection con = (HttpURLConnection) url.openConnection();
        con.setRequestMethod("GET");

        // 5️⃣ Read response
        BufferedReader br = new BufferedReader(
                new InputStreamReader(con.getInputStream()));

        StringBuilder result = new StringBuilder();
        String line;
        while ((line = br.readLine()) != null) {
            result.append(line);
        }
        br.close();

        // 6️⃣ JSON Parsing (IMPORTANT PART)
        JSONObject obj = new JSONObject(result.toString());

        JSONObject main = obj.getJSONObject("main");
        JSONArray weatherArray = obj.getJSONArray("weather");
        JSONObject weather = weatherArray.getJSONObject(0);

        double temp = main.getDouble("temp");
        double feels = main.getDouble("feels_like");
        int humidity = main.getInt("humidity");
        String condition = weather.getString("main");

        // 7️⃣ Send data to JSP
        request.setAttribute("city", city);
        request.setAttribute("temp", temp);
        request.setAttribute("feels", feels);
        request.setAttribute("humidity", humidity);
        request.setAttribute("condition", condition);

        // 8️⃣ Forward to weather.jsp
        RequestDispatcher rd = request.getRequestDispatcher("weather.jsp");
        rd.forward(request, response);
    }
}
