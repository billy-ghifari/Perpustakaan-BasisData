package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Koneksi2 {

    public static void main(String[] args) {
        Connection connect = null;
        try {
            Class.forName("org.mariadb.jdbc.Driver");
            connect = DriverManager.getConnection("jdbc:mariadb://localhost:3308/db_perpustakaan" + "?user=root&password=root");

            if (connect != null) {
                System.out.println("Database Connected.");
            } else {
                System.out.println("Database Connect Failed.");
            }
        } catch (Exception e) {    // TODO Auto-generated catch block
            e.printStackTrace();
        }
        // Close
        try {
            if (connect != null) {
                connect.close();
            }
        } catch (SQLException e) {    // TODO Auto-generated catch block
            e.printStackTrace();
        }
    }
}
