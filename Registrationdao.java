/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.view;

import java.io.IOException;
import static java.lang.System.out;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;
/**
 *
 * @author nivas
 */
@WebServlet(name = "Registrationdao", urlPatterns = {"/Registrationdao"})
public class Registrationdao extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, ClassNotFoundException {
        response.setContentType("text/html;charset=UTF-8");
        
        String uname=request.getParameter("username");
        String email=request.getParameter("email");
        String npass=request.getParameter("npass");
        String rpass=request.getParameter("rpass");
        String phone=request.getParameter("phone");
        
        try{
            Class.forName("org.apache.derby.jdbc.ClientDriver");
            Connection con=DriverManager.getConnection("jdbc:derby://localhost:1527/Abdul","Munaf","1234");
             
             System.out.println("connected");
             
             String sql ="insert into MUNAF.REGISTERS(uname,email,npass,rpass,phone) values(?,?,?,?,?)";
             PreparedStatement ps=con.prepareStatement(sql);
             
             ps.setString(1,uname);
             ps.setString(2,email);
             ps.setString(3,npass);
             ps.setString(4,rpass);
             ps.setString(5,phone);
             
             ps.executeUpdate();
             RequestDispatcher rds=request.getRequestDispatcher("UserLogin.jsp");
             rds.forward(request,response);
           
        }
        catch(SQLException e){
            out.println("Error in DB : "+e.getMessage());
        }
    }
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Registrationdao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(Registrationdao.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
