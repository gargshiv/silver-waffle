package Servlet;
import com.nm.bean.user_info;
import com.nm.dao.DBConnector;
import com.nm.bean.login;
import com.nm.bean.theDate;
import com.nm.bean.lecture_detail;
import com.nm.bean.subject;
import java.io.IOException;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

public class Model_View_Controller_Pattern extends HttpServlet{
    DBConnector mydbConnect = new DBConnector();

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
       
        String action = request.getParameter("action");
        user_info userSignup = new user_info();
        login login = new login();
        theDate date = new theDate();
        lecture_detail lecture = new lecture_detail();
        subject subject = new subject ();
        List<lecture_detail> lectures = new ArrayList<>();
        if (action.equalsIgnoreCase("student")) {

            userSignup.setTitle(request.getParameter("Title"));
            userSignup.setFirst_name(request.getParameter("firstName"));
            userSignup.setLast_name(request.getParameter("lastName"));
            userSignup.setContact(Long.parseLong(request.getParameter("Contactnumber").trim()));
            userSignup.setRoll_num(request.getParameter("regID"));
            userSignup.setEmail(request.getParameter("Email"));
            userSignup.setTime_stamp(date.getDate());
            
            login.setUser_name(request.getParameter("Username"));
            login.setPassword(request.getParameter("Password"));
            
            try {
                boolean result1;
                result1 = mydbConnect.addUserInfo(userSignup, action);
                boolean result2 = mydbConnect.addLoginInfo(login);
            } catch (Exception ex) {
                Logger.getLogger(Model_View_Controller_Pattern.class.getName()).log(Level.SEVERE, null, ex);
            }

        } else if (action.equalsIgnoreCase("teacher")) {
            try {
            userSignup.setTitle(request.getParameter("Title"));
            userSignup.setFirst_name(request.getParameter("firstName"));
            userSignup.setLast_name(request.getParameter("lastName"));
            userSignup.setContact(Long.parseLong(request.getParameter("Contactnumber").trim()));
            userSignup.setRoll_num(request.getParameter("regID"));
            userSignup.setEmail(request.getParameter("Email"));
            userSignup.setTime_stamp(date.getDate());
            
            login.setUser_name(request.getParameter("Username"));
            login.setPassword(request.getParameter("Password"));
            
            boolean result = mydbConnect.addUserInfo(userSignup, action);
            boolean result2 = mydbConnect.addLoginInfo(login);
            } catch (SQLException e) {
                Logger.getLogger(Model_View_Controller_Pattern.class.getName()).log(Level.SEVERE, null, e);
            }
        } else if (action.equals("lecture")) {
            try {
                
                lecture.setStart_time(request.getParameter("start_time"));
                lecture.setEnd_time(request.getParameter("end_time"));
                lecture.setTime_stamp(date.getDate());
                lecture.setStatus("A");
                lecture.setDescription(request.getParameter("note"));
                subject.setSubject(request.getParameter("Subject"));
                subject.setTime_stamp (date.getDate());
                boolean result = mydbConnect.addLectureInfo(lecture);
            } catch (SQLException e) {
                Logger.getLogger(Model_View_Controller_Pattern.class.getName()).log(Level.SEVERE, null, e);
            }

        } else if (action.equals("login")) {
            int connect_me = 0;
            try {
                 connect_me = mydbConnect.fetch(request.getParameter("username"), request.getParameter("password"));
                //lectures = mydbConnect.getLecture(login);
                System.out.println("please" + connect_me);
            } catch (SQLException ex) {
                Logger.getLogger(Model_View_Controller_Pattern.class.getName()).log(Level.SEVERE, null, ex);
            }
            if (connect_me == 0) {
                response.sendRedirect("/timetable/login.jsp");
            } else {
                if (connect_me == 2) {
                    request.setAttribute("login", login);
                    
                    request.getRequestDispatcher("/STUDENT_CALENDAR.jsp").forward(request, response);
                } else if (connect_me == 1) {
                  request.setAttribute("login", login);
                    request.setAttribute("lecture", lectures);
                    request.getRequestDispatcher("/TEACHER_CALENDAR.jsp").forward(request, response);
                   
                }
            }
        }
    }

}
