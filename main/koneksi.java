package main;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class koneksi {

    private static Connection mysqlconfig;

    public static Connection configDB() throws SQLException {
        try {
            String url = "jdbc:mysql://localhost:3308/db_perpustakaan"; //url database
            String user = "root"; //user database
            String pass = "root"; //password database
            Class.forName("org.mariadb.jdbc.Driver");
            mysqlconfig = DriverManager.getConnection(url, user, pass);
        } catch (Exception e) {
            System.out.println("koneksi gagal " + e.getMessage()); //perintah menampilkan error pada koneksi
        }
        return mysqlconfig;
    }

}
