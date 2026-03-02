package dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import model.GovtScheme;
import util.DBConnection;

public class GovtSchemeDAO {

    public static List<GovtScheme> getAllSchemes() {

        List<GovtScheme> list = new ArrayList<>();

        try {
            Connection con = DBConnection.getConnection();
            PreparedStatement ps =
                con.prepareStatement("SELECT * FROM govt_schemes");

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                list.add(new GovtScheme(
                    rs.getString("scheme_name"),
                    rs.getString("benefit"),
                    rs.getString("eligibility"),
                    rs.getString("apply_mode"),
                    rs.getString("official_link")   // 👈 new column added
                ));
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }
}