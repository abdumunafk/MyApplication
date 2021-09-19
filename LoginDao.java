package com.view;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "LoginDao", urlPatterns = {"/LoginDao"})
public class LoginDao extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, SQLException {
        response.setContentType("text/html;charset=UTF-8");

        
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
          PrintWriter out = response.getWriter();
                  
     String uname =request.getParameter("user");
     String npass =request.getParameter("pass");
        
     try {
             Connection con;
             Class.forName("org.apache.derby.jdbc.ClientDriver");
             con=DriverManager.getConnection("jdbc:derby://localhost:1527/Abdul","Munaf","1234");
     
             System.out.println("connected");
          
             String sql = "select * from MUNAF.REGISTERS where uname=? and npass=?";
             PreparedStatement ps=con.prepareStatement(sql);
             
             ps.setString(1, uname);
             ps.setString(2, npass);
             
             String unameDB="";
             String npassDB="";
             
             ResultSet rs = ps.executeQuery();
             
             if(rs.next())
             {
                 unameDB = rs.getString("uname");
                 npassDB = rs.getString("npass");
             
                 if((uname.equals(unameDB))&&(npass.equals(npassDB)))
                 {
                     RequestDispatcher rd = request.getRequestDispatcher("Link.jsp");
                     rd.forward(request, response);
                 }
             }
             else
             {
                  RequestDispatcher rd = request.getRequestDispatcher("UserLogin.jsp");
                     rd.forward(request, response);
             }
             
        }   catch (ClassNotFoundException | SQLException e) {
               System.out.println("Error in DB : "+e.getMessage());
            }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (SQLException ex) {
            Logger.getLogger(LoginDao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }
}