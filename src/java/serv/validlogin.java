/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serv;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vivek
 */
@WebServlet(name = "validlogin", urlPatterns = {"/validlogin"})
public class validlogin extends HttpServlet {

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
            String lg=request.getParameter("user").toString();
            String ps=request.getParameter("pass").toString();
            String nam,name;
            try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mailserver","root","root");
                Statement s= c.createStatement();
                ResultSet r=s.executeQuery("select * from login where user='"+lg+"' and pass='"+ps+"'");
                if(r.next())
                {
                    nam=r.getString(3);
                    name=r.getString(1);
                    String passw=r.getString(2);
                    javax.servlet.http.HttpSession h=request.getSession();
                    h.setAttribute("uname",nam);
                    h.setAttribute("user1",name);
                    h.setAttribute("user2","ok");
                    h.setAttribute("pass",passw);
                  //  RequestDispatcher rr= request.getRequestDispatcher("index.jsp");
                  //  rr.include(request,response);
                  response.sendRedirect("index.jsp");
                }
                 else
               {
                   //RequestDispatcher rr=request.getRequestDispatcher("index.jsp");
                   //rr.forward(request,response);
                   javax.servlet.http.HttpSession h=request.getSession();
                   h.setAttribute("user2","not");
                   response.sendRedirect("index.jsp");
               }
                response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server   
                response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance   
                response.setDateHeader("Expires", -1); //Causes the proxy cache to see the page as "stale"   
                response.setHeader("Pragma", "no-cache"); 
            } catch (Exception ex) {
                System.out.println(ex);
            }
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
