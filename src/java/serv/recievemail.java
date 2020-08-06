/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package serv;

import com.sun.mail.pop3.POP3Store;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.Date;
import java.util.Properties;
import javax.mail.Flags;
import javax.mail.Folder;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.NoSuchProviderException;
import javax.mail.Session;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vivek
 */
@WebServlet(name = "recievemail", urlPatterns = {"/recievemail"})
public class recievemail extends HttpServlet {

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
        String from;
        String address;
        Date date;
        String subject;
        String to;
        String msg;
        String pop3Host = "cakelycakes.com";
	String storeType = "pop3";
	String user = "bigcakes";
	String password = "bigcakes";
        
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            /* TODO output your page here. You may use following sample code. */
             Properties props = new Properties();
        props.setProperty("mail.store.protocol", "imaps");
       
            try {
			Properties properties = new Properties();
			properties.put("mail.pop3.host", pop3Host);
			Session emailSession = Session.getDefaultInstance(properties);

			POP3Store emailStore = (POP3Store) emailSession.getStore(storeType);
			emailStore.connect(user, password);

			Folder emailFolder = emailStore.getFolder("INBOX");
			emailFolder.open(Folder.READ_WRITE);

			Message[] messages = emailFolder.getMessages();
                 for (Message message : messages) {
                     subject= message.getSubject();
                     from=Arrays.toString(message.getFrom());
                     date=message.getReceivedDate();
                     to=Arrays.toString(message.getRecipients(Message.RecipientType.TO));
                     msg= message.getContent().toString();
                     try {
                /* TODO output your page here. You may use following sample code. */
                Class.forName("com.mysql.jdbc.Driver");
                Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/MailServer", "root", "root");
                PreparedStatement s = c.prepareStatement("insert into inbox values(?,?,?,?,?)");
                s.setString(1, from);
                s.setString(2, to);
                s.setDate(3, (java.sql.Date) date);
                s.setString(4, subject);
                s.setString(5, msg);
                message.setFlag(Flags.Flag.DELETED, true);
            } catch (ClassNotFoundException | SQLException ex) {
                System.out.println(ex);
            }
                     
                 }
                 emailFolder.close(true);

			emailFolder.close(false);
			emailStore.close();
		} catch (NoSuchProviderException e) {
			System.out.println(e);
		} catch (MessagingException | IOException e) {
			System.out.println(e);
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
