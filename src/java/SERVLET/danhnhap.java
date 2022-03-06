/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SERVLET;

import CLASS.Product;
import CLASS.category;
import CLASS.useraccount;
import connection.mysqlservlet;
import control.buttonmysql;
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
@WebServlet(name = "danhnhap", urlPatterns = {"/danhnhap"})
public class danhnhap extends HttpServlet {

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
            out.println("<title>Servlet danhnhap</title>");            
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet danhnhap at " + request.getContextPath() + "</h1>");
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
         String username=request.getParameter("username");
         String password=request.getParameter("password");
         useraccount user=null;
                List<Product> list = null;
                List<category> listc = null;
        try {
            Connection conn =mysqlservlet.getConnection();
            
           
           user= buttonmysql.getUser(username,password);
      
			list = buttonmysql.queryProduct(conn);
                       listc=buttonmysql.getcategory(conn);
                       
        } catch (SQLException ex) {
            Logger.getLogger(danhnhap.class.getName()).log(Level.SEVERE, null, ex);
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(danhnhap.class.getName()).log(Level.SEVERE, null, ex);
        }
         if(user==null){
                            request.getRequestDispatcher("/DANGNHAP.jsp").forward(request, response);
                        }else{
                       
                      
                      HttpSession session= request.getSession();
              session.setAttribute("acc", user);
              session.setMaxInactiveInterval(100);
           request.setAttribute("productList", list);
           request.setAttribute("category", listc);
           RequestDispatcher dispatcher = getServletContext().getRequestDispatcher("/Product.jsp");
        dispatcher.forward(request, response);
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
