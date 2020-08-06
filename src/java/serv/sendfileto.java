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
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.Date;
import java.util.Properties;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.activation.DataHandler;
import javax.activation.DataSource;
import javax.activation.FileDataSource;
import javax.mail.Authenticator;
import javax.mail.BodyPart;
import javax.mail.Message;
import javax.mail.MessagingException;
import javax.mail.Multipart;
import javax.mail.PasswordAuthentication;
import javax.mail.Session;
import javax.mail.Transport;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeBodyPart;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMultipart;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author vivek
 */
@WebServlet(name = "sendfileto", urlPatterns = {"/sendfileto"})
public class sendfileto extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
     
           
     String hostname = "smtp.gmail.com";
    int port = 2525;
    String username ="" ;
    String password = "";
    public String to;
    public String from;
    java.sql.Timestamp sq;
    public String message;
    public String subject;
    public Date date=new Date();
    public String filename;
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, MessagingException {
        response.setContentType("text/html;charset=UTF-8");
        
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            
              to = request.getParameter("tos");
            from = request.getSession().getAttribute("user1").toString();
            subject = request.getParameter("subject");
            message = request.getParameter("message");
            javax.servlet.http.HttpSession h=request.getSession();
          username= (String) h.getAttribute("user1");
           password= (String) h.getAttribute("pass");
            if(h.getAttribute("files")!=null)
            filename=h.getAttribute("files").toString();
           else
                filename="";
            try
            {
         Properties props = new Properties();
            props.put("mail.smtp.auth", "true");
            props.put("mail.smtp.starttls.enable", "true");
            props.put("mail.smtp.host", hostname);
            props.put("mail.smtp.ssl.trust", "smtp.gmail.com");
            props.put("mail.smtp.port", "587");
         
            
            Session session = Session.getInstance(props,
         new javax.mail.Authenticator() {
            @Override
            protected PasswordAuthentication getPasswordAuthentication() {
               return new PasswordAuthentication(username, password);
            }
         });
            // -- Create a new message --
            Message msg = new MimeMessage(session);
            // -- Set the FROM and TO fields --
            msg.setFrom(new InternetAddress(from+"@gmail.com"));
            msg.setRecipients(Message.RecipientType.TO, InternetAddress.parse(to, false));
            msg.setSubject(subject);
            BodyPart messageBodyPart = new MimeBodyPart();

         // Now set the actual message
         messageBodyPart.setText(message);
         msg.setSentDate(date = new Date());
          java.util.Date utilDate = date;
             sq = new java.sql.Timestamp(utilDate.getTime());
         // Create a multipar message
        Multipart multipart = new MimeMultipart();

         // Set text message part
         multipart.addBodyPart(messageBodyPart);

         // Part two is attachment
         messageBodyPart = new MimeBodyPart();
        if(filename!="")
        {
         DataSource source = new FileDataSource(filename);
         messageBodyPart.setDataHandler(new DataHandler(source));
         messageBodyPart.setFileName(sq.toString()+"vivek");
         multipart.addBodyPart(messageBodyPart);
        }
         // Send the complete message parts
         msg.setContent(multipart);
            // -- Set some other header information --
            msg.setSentDate(date = new Date());
            System.out.println ("Helo");
            // -- Send the message --
            Transport.send(msg);
            
            }
                        catch(MessagingException e)
            {
System.out.println("done");            }

            try
            {
           
          
             System.out.println("Done");
            
            
                /*TODO output your page here. You may use following sample code. */
               Class.forName("com.mysql.jdbc.Driver");
                Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Mailserver","root","root");
                PreparedStatement s = c.prepareStatement("insert into outbox values(?,?,?,?,?,?)");
                
                s.setString(1, from);
                s.setString(2,to);
                
                s.setTimestamp(3,sq);
                
                s.setString(4,subject);
                s.setString(5, message);
                
                s.setString(6,filename);
                s.executeUpdate();
               
                
                response.sendRedirect("index.jsp");
            } catch (ClassNotFoundException | SQLException ex ) {
                out.println(ex);
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
        try {
            processRequest(request, response);
        } catch (MessagingException ex) {
            Logger.getLogger(sendfileto.class.getName()).log(Level.SEVERE, null, ex);
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
        try {
            processRequest(request, response);
        } catch (MessagingException ex) {
            Logger.getLogger(sendfileto.class.getName()).log(Level.SEVERE, null, ex);
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
    private  class SMTPAuthenticator extends Authenticator {

        public SMTPAuthenticator() {
        }
        
        @Override
        public PasswordAuthentication getPasswordAuthentication() {
            // specify your password here
            return new PasswordAuthentication(username, password);
        }
    }

}
