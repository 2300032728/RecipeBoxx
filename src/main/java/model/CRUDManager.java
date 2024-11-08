package model;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;

public class CRUDManager {
    Connection con = null;
    PreparedStatement ps = null;

    String driver = "org.postgresql.Driver";
    String url = "jdbc:postgresql://localhost:5432/aoop";
    String dbusername = "postgres";
    String dbpassword = "Pwd@root";

    public String saveData(String rollno, String name, String department) {
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, dbusername, dbpassword);
            ps = con.prepareStatement("insert into student values(?,?,?)");
            ps.setString(1, rollno);
            ps.setString(2, name);
            ps.setString(3, department);
            ps.execute();
            con.close();
            return "Student details have been saved";
        } catch (Exception e) {
            return e.getMessage();
        }
    }

    public String updateData(String rollno, String name, String department) {
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, dbusername, dbpassword);
            ps = con.prepareStatement("update student set name=?, department=? where rollno=?");
            ps.setString(1, name);
            ps.setString(2, department);
            ps.setString(3, rollno);
            ps.execute();
            con.close();
            return "Updated successfully";
        } catch (Exception e) {
            return e.getMessage();
        }
    }

    public String deleteData(String rollno, String name, String department) {
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, dbusername, dbpassword);
            ps = con.prepareStatement("delete from student where rollno=?");
            ps.setString(1, rollno);
            ps.execute();
            con.close();
            return "Deleted successfully";
        } catch (Exception e) {
            return e.getMessage();
        }
    }

    public boolean authenticateUser(String username, String password) {
        boolean isAuthenticated = false;
        try {
            Class.forName(driver);
            con = DriverManager.getConnection(url, dbusername, dbpassword);

          
            String sql = "SELECT * FROM users WHERE username = ? AND password = ?";
            ps = con.prepareStatement(sql);
            ps.setString(1, username);
            ps.setString(2, password);

            ResultSet rs = ps.executeQuery();

            // If a record is found, credentials are correct
            if (rs.next()) {
                isAuthenticated = true;
            }

            rs.close();
            con.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
        return isAuthenticated;
    }
}
