package connection;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */



import java.sql.DriverManager;
import java.sql.SQLException;
import java.sql.*;
/**
 *
 * @author USER
 */
public class mysqlservlet {
    public static Connection getConnection() throws ClassNotFoundException,SQLException {
    String hostname="localhost";
    String dbname="data";
    String username="root";
    String password="";
    return getConnection(hostname,dbname,username,password);
    }

    private static Connection getConnection(String hostname, String dbname, String username, String password) 
            throws ClassNotFoundException, SQLException {
     Class.forName("com.mysql.jdbc.Driver");
     String connectionurl="jdbc:mysql://"+hostname+":3306/"+dbname;
     Connection con=   DriverManager.getConnection(connectionurl,username,password);
        return con;
    }
}
