package SERVLET;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */


import control.buttonmysql;
import connection.mysqlservlet;
import CLASS.useraccount;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.sql.SQLException;
import java.sql.*;
import javax.servlet.RequestDispatcher;
/**
 *
 * @author USER
 */
@WebServlet(name="login2",urlPatterns=("/login2"))
public class login2 extends HttpServlet {

  
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet login2</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet login2 at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }

  
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
         
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    
        Connection con;
      try{
          con=mysqlservlet.getConnection();
          String username=request.getParameter("username");
          String gender=request.getParameter("gender");
          String password=request.getParameter("password");
          useraccount user=new useraccount(username,gender,password);
          buttonmysql.insertaccount(con,user);

          request.setAttribute("username", username);
          request.getRequestDispatcher("/newjsp.jsp").forward(request, response);
//RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/newjsp.jsp");
//        dispatcher.forward(request, response);
      }catch (SQLException ex) {
          Logger.getLogger(login2.class.getName()).log(Level.SEVERE, null, ex);
      } catch (ClassNotFoundException ex) {
          Logger.getLogger(login2.class.getName()).log(Level.SEVERE, null, ex);
      }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
