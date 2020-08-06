<%-- 
    Document   : showmail
    Created on : 20 Jun, 2016, 4:34:29 PM
    Author     : vivek
--%>

<%@page import="java.sql.SQLException"%>
<%@page import="java.io.IOException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    
    <%
        String da=request.getParameter("tdate");
         String tu=request.getParameter("tuser");
          String pagesp=request.getParameter("pages");
          String a="";
       
          if(da==null)
          {
              da="";
              System.out.println("DAtge us problem");
          }
          else if(tu==null)
          {
              tu="";
              System.out.println("user us problem");
          }
          else if(pagesp==null)
          {
              pagesp="";
              System.out.println("page  s problem");
          }
         Class.forName("com.mysql.jdbc.Driver");
   Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mailserver","root","root");
    Statement s= c.createStatement();   
    if(pagesp.equalsIgnoreCase("inbo"))
    {
   a="select * from inbox where user='"+tu+"' and date='"+da+"'";
   System.out.println("inbo");
    }
    else if(pagesp.equalsIgnoreCase("outbo"))
    {
         a="select * from outbox where user='"+tu+"' and date='"+da+"'";
            System.out.println("outbo");

    }
    
    ResultSet r=s.executeQuery(a);
        
       
        if(r.next())
        {
           
        %>
    
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>E-Mail</title>
    </head>
    <body>
        <h4>From </h4><%=r.getString(1)%>
        <br>
        <br>
        <h5>Subject</h5><%=r.getString(4)%>
        <br>
        <br>
        <br>
        <br>
        <br>
        <h6>Message</h6> <%=r.getString(5)%>
        
    </body>
    <%
}else
{
%>
<h1>Message Has Been Deleted</h1>
<%
}

  %>
</html>
