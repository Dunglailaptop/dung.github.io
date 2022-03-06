package SERVLET;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

import CLASS.Product;
import CLASS.category;
import control.buttonmysql;
import connection.mysqlservlet;
import CLASS.useraccount;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 *
 * @author USER
 */
@WebServlet(name="loginserver",urlPatterns = {"/loginserver"})
public class loginserver extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginserver</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginserver at " + request.getContextPath() + "</h1>");
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
        String errorString = null;
		List<Product> list = null;
                List<category> listc = null;
                
        Connection con;
      try{
          con=mysqlservlet.getConnection();
          String username=request.getParameter("username");
          String gender=request.getParameter("gender");
          String password=request.getParameter("password");
          useraccount usr=new useraccount(username,password);
         
      
           useraccount user= new useraccount(buttonmysql.findUser(con,username,password));
           Connection conn =mysqlservlet.getConnection();
			list = buttonmysql.queryProduct(conn);
                       listc=buttonmysql.getcategory(conn);
          if(user!=null){
              HttpSession session= request.getSession();
              session.setAttribute("acc", user);
            
           request.setAttribute("username","chao ban" +user.getUserName());
           request.setAttribute("productList", list);
           request.setAttribute("category", listc);
           RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Product.jsp");
        dispatcher.forward(request, response);
          }else
          {
               response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet loginserver</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet loginserver at " + request.getContextPath() + "</h1>");
            out.println("</body>");
            out.println("</html>");
          }
          }
      }catch (SQLException ex) {
          Logger.getLogger(login2.class.getName()).log(Level.SEVERE, null, ex);
      } catch (ClassNotFoundException ex) {
          Logger.getLogger(login2.class.getName()).log(Level.SEVERE, null, ex);
      }
        
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
        	processRequest(request, response);
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
