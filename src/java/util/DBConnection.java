package util;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBConnection {

    public static Connection getConnection() {

        Connection con = null;

        try {
            Class.forName("com.mysql.cj.jdbc.Driver");

            con = DriverManager.getConnection(
                "jdbc:mysql://localhost:3306/farmer_portal?useSSL=false&allowPublicKeyRetrieval=true",
                "root",
                ""   // password
            );

            System.out.println("DB Connected Successfully");

        } catch (Exception e) {
            System.out.println("DB ERROR: " + e.getMessage());
            e.printStackTrace();
        }

        return con;
    }
}
