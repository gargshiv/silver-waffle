/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.nm.util;

import com.mysql.jdbc.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import com.mysql.jdbc.Connection;
import com.mysql.jdbc.Statement;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DB_UTIL {
    

    
    private static Connection con;
    private static final String Driver = "com.mysql.jdbc.Driver";
    private static final String ConnectionString = "jdbc:mysql://localhost/mu_db1";
    private static final String user = "root";
    private static final String pwd = "root";
   
  public static Connection getConnection() throws SQLException {
        try {
            Class.forName(Driver);
        } catch (ClassNotFoundException ex) {
            System.out.println(ex.getMessage());
            con.close();
        }      
        con = (Connection) DriverManager.getConnection(ConnectionString, user, pwd);
        return con;
    }


}//end JDBCExample
    

