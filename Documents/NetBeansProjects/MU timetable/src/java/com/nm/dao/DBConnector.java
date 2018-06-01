package com.nm.dao;

import com.nm.bean.lecture_detail;
import com.nm.util.DB_UTIL;
import com.nm.bean.login;
import java.sql.Connection;
import com.nm.bean.user_info;
import java.sql.Date;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import com.nm.bean.theDate;

public class DBConnector {

    DB_UTIL dbUtil = new DB_UTIL();
    theDate date = new theDate();

    public boolean addUserInfo(user_info userSignup, String action) throws SQLException {
        Connection connection = dbUtil.getConnection();
        PreparedStatement ps;
        ps = connection.prepareStatement("INSERT INTO user_info VALUES (NULL, ?, ? ,?, NULL, NULL, ?, ?, ?, NULL, ?, NULL, NULL, ?)");
        ps.setString(1, userSignup.getTitle());
        ps.setString(2, userSignup.getFirst_name());
        ps.setString(3, userSignup.getLast_name());
        ps.setString(4, userSignup.getEmail());
        ps.setString(5, Long.toString(userSignup.getContact()));
        ps.setString(7, userSignup.getRoll_num());
        ps.setString(8, date.getDate());
        if (action.equals("teacher")) {
            ps.setString(6, "T");
        } else {
            ps.setString(6, "S");
        }
        int i = ps.executeUpdate();
        if (i == 1) {
            return true;
        } else {
            return false;
        }
    }

    public boolean addLectureInfo(lecture_detail lecture) throws SQLException {
        Connection connection = dbUtil.getConnection();
        PreparedStatement ps;
        ps = connection.prepareStatement("INSERT INTO lecture_details VALUES ( NULL, ?, ? ,?, NULL, ?, NULL, NULL, NULL, ?, ?)");

        ps.setString(1, lecture.getStart_time());
        ps.setString(2, lecture.getEnd_time());
        ps.setString(3, lecture.getDate());
        ps.setString(4, lecture.getDescription());
        ps.setString(5, lecture.getStatus());
        ps.setString(6, lecture.getTime_stamp());
        int i = ps.executeUpdate();
        if (i == 1) {
            return true;
        } else {
            return false;
        }
    }

    public boolean addLoginInfo(login login) throws SQLException {
        Connection connection = dbUtil.getConnection();
        PreparedStatement ps;
        ps = connection.prepareStatement("INSERT INTO login VALUES ( NULL, ?, ? ,NULL, ? )");

        ps.setString(2, login.getPassword());
        ps.setString(1, login.getUser_name());
        ps.setString(3, date.getDate());

        int i = ps.executeUpdate();
        if (i == 1) {
            return true;
        } else {
            return false;
        }
    }

    public int fetch(String checkusername, String checkpassword) throws SQLException {

        String username = "";
        String password = "";
        Connection conn = null;
        Statement st = null;
        ResultSet rs = null;
        
        try {
            conn = dbUtil.getConnection();
            //String query = "SELECT * FROM login WHERE user_name ='" + checkusername + "'AND password='" + checkpassword + "'";
            String query = "SELECT * from login";
            st = conn.createStatement();
            rs = st.executeQuery(query);
            int i = 0;
            int user_id_fk = -999;
            while (rs.next() && i == 0) {
                username = rs.getString("user_name");
                password = rs.getString("password");
                
                if (username.equals(checkusername) && password.equals(checkpassword)) {
                    user_id_fk = rs.getInt("user_id_fk");
                }
            }
            if (user_id_fk == -999) {
                return 0;
            } else {
                try {

                    Connection connn = dbUtil.getConnection();
                    String query1 = "SELECT * FROM user_info ";
                    Statement st1 = conn.createStatement();
                    ResultSet rs1 = st.executeQuery(query1);
                    String contact_type = "";
                    while (rs1.next()) {
                        System.out.println (user_id_fk + "aaa" + rs1.getInt("id")+ "asa");
                        if (user_id_fk == (rs1.getInt("id"))) {
                            contact_type = rs1.getString("contact_type");
                            System.out.println("sss" + contact_type);
                            break;
                        }

                    }
                    st1.close();
                    conn.close();
                    
                    if (contact_type.equals("T")) {
                        return 1;
                    } else if (contact_type.equals("S")) {
                       
                        return 2;
                    } else {
                        return 0;
                    }
                    
                } catch (Exception e) {
                    
                    System.err.println("Got an exception! ");
                    System.err.println(e.getMessage());
                }

            }

        } catch (Exception e) {

            System.err.println("Got an exception! " + "fetch method");
            System.err.println(e.getMessage());
            return 0;

        }
        return 0;
    }

    

}

//// public void fetchfromteacher(String id) {
//
//      try {
//
//          Connection conn = dbUtil.getConnection();
//        String query = "SELECT * FROM teacher ";
//      Statement st = conn.createStatement();
//    ResultSet rs = st.executeQuery(query);
//  while (rs.next()) {
//    if (id.equals(rs.getString("id"))) {
//      String title = rs.getString("title");
//    String first = rs.getString("first name");
//  String last = rs.getString("last name");
//String subject = rs.getString("subject");
//System.out.println(title);
//System.out.println(first);
//System.out.println(last);
//System.out.println(subject);
// break;
//}
//}
//st.close();
//} catch (Exception e) {
//  System.err.println("Got an exception! ");
//System.err.println(e.getMessage());
//}

    //}
