package dao;

import model.MandiPrice;
import util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class MandiDAO {

    public static List<MandiPrice> getAllPrices() {
        List<MandiPrice> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            String sql = "SELECT * FROM mandi_prices ORDER BY price_date DESC";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                MandiPrice m = new MandiPrice(
                        rs.getInt("id"),
                        rs.getString("crop_name"),
                        rs.getString("market"),
                        rs.getInt("price"),
                        rs.getDate("price_date")
                );
                list.add(m);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
