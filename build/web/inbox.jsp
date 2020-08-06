<%-- 
    Document   : inbox
    Created on : 6 Jun, 2016, 7:29:49 PM
    Author     : vivek
--%>
<%@page import="java.util.Date" %>
<%@page import="javax.mail.search.SubjectTerm"%>
<%@page import="javax.mail.search.SearchTerm"%>
<%@page import="javax.mail.search.AndTerm"%>
<%@page import="javax.mail.search.FlagTerm"%>
<%@page import="javax.mail.internet.MimeBodyPart"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.Store"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.mail.NoSuchProviderException"%>
<%@page import="java.sql.SQLException"%>
<%@page import="javax.mail.Flags"%>
<%@page import="java.util.Date"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.util.Arrays"%>     
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.Folder"%>
<%@page import="com.sun.mail.pop3.POP3Store"%>
<%@page import="java.util.Properties"%>
<%@page import="javax.mail.Session"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.File"%>
<%@page import="java.io.IOException"%>
<%@page import="javax.mail.Address"%>
<%@page import="javax.mail.Folder"%>
<%@page import="javax.mail.Message"%>
<%@page import="javax.mail.MessagingException"%>
<%@page import="javax.mail.Multipart"%>
<%@page import="javax.mail.NoSuchProviderException"%>
<%@page import=" java.util.Properties"%>
<%@page import="javax.mail.Part"%>
<%@page import="javax.mail.Session"%>
<%@page import="javax.mail.Store"%>
<%@page import="javax.mail.internet.MimeBodyPart"%>
<%@page import="java.sql.Connection"%>



<style>
    table,th,td{
        border: 1px solid buttonhighlight;
        text-align: center;
        color: black;
        font-size: 16px;
    }

    table{
        border-collapse:collapse;
        width: 100%;
    }

    th{
        height: 50px;

    }


    ul#nav li.current2 a
    { color: #FFF;
      background: #0043A8;
      background: -moz-linear-gradient(#43A9FF, #0043A8);
      background: -o-linear-gradient(#43A9FF, #0043A8);
      background: -webkit-linear-gradient(#43A9FF, #0043A8);  
      text-shadow: none;}

</style>



<%@include file="header.jsp" %>
<% 
                if(request.getSession().getAttribute("uname")==null)
                {
                    response.sendRedirect("index.jsp");
                }
            %>
            
            <%
    
        String from;
        String address;
        Date date;
        String subject;
        String fileName="";
        String to;
        String msg;
       String attachFiles;
       String savepath="/home/vivek/NetBeansProjects/MailServer2/MyFolder";
        
       String host = "pop.gmail.com";// change accordingly
      String storeType = "pop3";
      String user = session.getAttribute("user1").toString();// change accordingly
      String password = session.getAttribute("pass").toString();// change accordingly
      String port="995";
      String messageContent;
      String contentType;
      
       try {

      //create properties field
      Properties properties = new Properties();

      properties.put("mail.pop3.host", host);
      properties.put("mail.pop3.port", "995");
      properties.put("mail.pop3.starttls.enable", "true");
      Session emailSession = Session.getDefaultInstance(properties);
  
      //create the POP3 store object and connect with the pop server
      Store store = emailSession.getStore("pop3s");

      store.connect(host, user, password);

      //create the folder object and open it
      Folder emailFolder = store.getFolder("INBOX");
      emailFolder.open(Folder.READ_ONLY);

      // retrieve the messages from the folder in an array and print it
      Message[] messages = emailFolder.getMessages();

      for (int i = 0, n = messages.length; i < n; i++) {
         Message message = messages[i];
        
         subject= message.getSubject();
         from=message.getFrom()[0].toString();
         msg=message.getContent().toString();
         date=message.getSentDate();
         contentType=message.getContentType();
         attachFiles="";
         messageContent="";
         System.out.println("Hello vivek");
         to=session.getAttribute("user1").toString();

         if (contentType.contains("multipart")) {
					// content may contain attachments
					Multipart multiPart = (Multipart) message.getContent();
					
						MimeBodyPart part = (MimeBodyPart) multiPart.getBodyPart(0);
						if (Part.ATTACHMENT.equalsIgnoreCase(part.getDisposition())) {
							// this part is attachment
							 fileName = part.getFileName();
							attachFiles += fileName + ", ";
							part.saveFile( File.separator + fileName);
						} else {
							// this part may be the message content
							messageContent = part.getContent().toString();
                                                }
					

					if (attachFiles.length() > 1) {
						attachFiles = attachFiles.substring(0, attachFiles.length() - 2);
					}
				} else if (contentType.contains("text/plain")
						|| contentType.contains("text/html")) {
					Object content = message.getContent();
					if (content != null) {
						messageContent = content.toString();
					}
				}
         
            java.util.Date utilDate = date;
            java.sql.Timestamp sq = new java.sql.Timestamp(utilDate.getTime());
             System.out.println("Hello vivekbindfk");
           
               Class.forName("com.mysql.jdbc.Driver");
                Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Mailserver", "root", "root");
                PreparedStatement s = c.prepareStatement("insert into inbox values(?,?,?,?,?,?)");
                s.setString(1, to);
                s.setString(2, from);
               s.setTimestamp(3, sq);
                s.setString(4, subject);
                s.setString(5, msg);
                s.setString(6,File.separator + fileName);
                s.executeUpdate();
                System.out.println(File.separator + fileName);
                  }
      

      //close the store and folder objects
      emailFolder.close(false);
      store.close();                                                                                                                                                                                                                                                                                                                                                                                                                                            
      

      } catch (NoSuchProviderException e) {
         e.printStackTrace();
      } catch (MessagingException e) {
         e.printStackTrace();
      } catch(SQLException ex)
      {
          System.out.println(ex);
      }
              
%>
            
</div><!--close content_item-->
</div><!--close content-->   
</div><!--close site_content-->  	
<table>
<tr>
    <td style="width:60px;"><b>Sr. No.</b></td>
    <!----  <td style="text-align:left;width: 150px"><input type="checkbox" name="check"/><b>Select All</b></td>--->
    <td style="width: 150px"><b>From</b></td>
    <td style="width: 150px"><b>Date</b></td>
    <td style="width: 300px"><b>Subject</b></td>
    <td ><b>Message</b></td>
</tr>



<% int i = 0;
    Class.forName("com.mysql.jdbc.Driver");
    Connection c = DriverManager.getConnection("jdbc:mysql://localhost:3306/Mailserver", "root", "root");
    Statement s = c.createStatement();
    String a = "select * from inbox where user='" + session.getAttribute("user1") + "'";
    ResultSet r = s.executeQuery(a);
    while (r.next()) {
%>
<tr>
    <td style="width:60px;"><% out.println(++i);%></td>
    <!---- <td style="text-align:left;width: 150px"><input type="checkbox" name="check"/></td>---->
    <td style="width: 150px">
        <%
            out.println(r.getString(2));
        %></td>
    <td style="width: 150px">
        <%
            out.println(r.getString(3));
        %></td>x
      <td style="width: 300px">
            <%
    out.println(r.getString(4));
    %></td>
        <td style="width: 150px">
            <a href="<%=r.getString(6)%>">
        <%
    out.println(r.getString(6));
   %>
                    </a>
</td>
        <td ><a href="showmail.jsp?tdate=<%=r.getString(3)%>&tuser=<%=r.getString(1)%>&pages=inbo" target="_blank">
            <%out.println(r.getString(5));
            %>
    </a>
        </td>
        
    <td>
        <a href='./deletemail?tdate=<%=r.getString(3)%>&tuser=<%=r.getString(1)%>&boxi=inbox'> <input type="button" name="delete" value="Delete"/></a>
    </td>
    <%};
    %>
</tr>
</table>

</div>

<%@include file="footer.jsp" %>
