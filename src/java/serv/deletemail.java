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
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vivek
 */
@WebServlet(name = "deletemail", urlPatterns = {"/deletemail"})
public class deletemail extends HttpServlet {

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
            String del=request.getParameter("boxi");
             try
            {
                Class.forName("com.mysql.jdbc.Driver");
                Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mailserver","root","root");
                Statement s= c.createStatement();
                if(del.equalsIgnoreCase("inbox"))
                {
                int r=s.executeUpdate("delete from inbox where user='"+request.getParameter("tuser")+"' and date='"+request.getParameter("tdate")+"'");
                if(r>0)
                {
                    System.out.println("deleted");
                  response.sendRedirect("inbox.jsp");
                }
                 else
               {
                   //RequestDispatcher rr=request.getRequestDispatcher("index.jsp");
                   //rr.forward(request,response);
                   System.out.println("Cant Delete");
                   response.sendRedirect("inbox.jsp");
               }
                }
                
                else if(del.equalsIgnoreCase("outbox"))
                {
                int r=s.executeUpdate("delete from outbox where user='"+request.getParameter("tuser")+"' and date='"+request.getParameter("tdate")+"'");
                if(r>0)
                {
                    System.out.println("deleted");
                  response.sendRedirect("outbox.jsp");
                }
                 else
               {
                   //RequestDispatcher rr=request.getRequestDispatcher("index.jsp");
                   //rr.forward(request,response);
                   System.out.println("Cant Delete");
                   response.sendRedirect("outbox.jsp");
               }
                }
                else
                {
                    out.println("Can't Delete");
                }
                response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server   
                response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance   
                response.setDateHeader("Expires", -1); //Causes the proxy cache to see the page as "stale"   
                response.setHeader("Pragma", "no-cache"); 
            } catch (ClassNotFoundException | SQLException | IOException ex) {
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
