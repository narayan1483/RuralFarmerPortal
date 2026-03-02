package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import model.Farmer;
import util.DBConnection;

public class FarmerDAO {

    // REGISTER
    public static boolean register(String name, String mobile,
                                   String village, String password) {

        try {
            Connection con = DBConnection.getConnection();
            String sql = "INSERT INTO farmers(name, mobile, village, password) VALUES (?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, mobile);
            ps.setString(3, village);
            ps.setString(4, password);

            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // LOGIN
    public static Farmer login(String mobile, String password) {

        Farmer farmer = null;

        try {
            Connection con = DBConnection.getConnection();
            String sql = "SELECT * FROM farmers WHERE mobile=? AND password=?";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, mobile);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            if (rs.next()) {
                farmer = new Farmer(
                        rs.getInt("id"),
                        rs.getString("name"),
                        rs.getString("mobile"),
                        rs.getString("village")
                );
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return farmer;
    }

    // UPDATE PROFILE
    public static boolean updateProfile(int id, String name, String village) {

        try {
            Connection con = DBConnection.getConnection();
            String sql = "UPDATE farmers SET name=?, village=? WHERE id=?";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setString(1, name);
            ps.setString(2, village);
            ps.setInt(3, id);

            ps.executeUpdate();
            return true;

        } catch (Exception e) {
            e.printStackTrace();
            return false;
        }
    }

    // CHANGE PASSWORD
    public static boolean changePassword(int id, String oldPass, String newPass) {

        try {
            Connection con = DBConnection.getConnection();

            String checkSql = "SELECT * FROM farmers WHERE id=? AND password=?";
            PreparedStatement ps1 = con.prepareStatement(checkSql);
            ps1.setInt(1, id);
            ps1.setString(2, oldPass);

            ResultSet rs = ps1.executeQuery();

            if (rs.next()) {

                String updateSql = "UPDATE farmers SET password=? WHERE id=?";
                PreparedStatement ps2 = con.prepareStatement(updateSql);
                ps2.setString(1, newPass);
                ps2.setInt(2, id);

                ps2.executeUpdate();
                return true;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }
}