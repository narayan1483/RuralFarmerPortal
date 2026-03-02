package dao;

import model.Crop;
import util.DBConnection;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CropDAO {

    public static List<Crop> getAllCrops() {
        List<Crop> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            String sql = "SELECT * FROM crops";
            PreparedStatement ps = con.prepareStatement(sql);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new Crop(
                        rs.getString("crop_name"),
                        rs.getString("season"),
                        rs.getString("fertilizer"),
                        rs.getString("water_requirement")
                ));
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        return list;
    }
}
