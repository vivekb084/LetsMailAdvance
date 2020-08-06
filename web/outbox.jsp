<%-- 
    Document   : outbox
    Created on : 6 Jun, 2016, 9:07:23 PM
    Author     : vivek
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    
    
    ul#nav li.current4 a
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
</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content-->  	
<table>
    <tr>
        <td style="width:60px;"><b>Sr. No.</b></td>
      <!----  <td style="text-align:left;width: 150px"><input type="checkbox" name="check"/><b>Select All</b></td>--->
    <td style="width: 150px"><b>To</b></td>
    <td style="width: 150px"><b>Date</b></td>
    <td style="width: 300px"><b>Subject</b></td>
        <td style="width: 150px"><b>File</b></td>
                


    
    <td ><b>Message</b></td>
    <td style="width: 150px"><b>Delete Mail</b></td>
</tr>



<% int i=0;
String from;
if(request.getSession().getAttribute("user1")==null)
{
    from="";
}
else
{
    from=request.getSession().getAttribute("user1").toString();
}

 
    Class.forName("com.mysql.jdbc.Driver");
   Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/Mailserver","root","root");
    Statement s= c.createStatement();   
     String a="select * from outbox where user='"+from+"'";
    ResultSet r=s.executeQuery(a);
 while(r.next())
{
    %>
    <tr>
   <td style="width:60px;"><% out.println(++i);%></td>
    <td style="width: 150px">
        <%
    out.println(r.getString(2));
   %></td>
    <td style="width: 150px">
        <%
    out.println(r.getString(3));
   %></td>
        <td style="width: 300px">
            <%
    out.println(r.getString(4));
    %></td>
        <td style="width: 150px">
            <a href="./filedownload?fil=<%=r.getString(6)%>">
        <%
    out.println("File"+i);
   %>
                    </a>
</td>
<td ><a href="showmail.jsp?tdate=<%=r.getString(3)%>&tuser=<%=r.getString(1)%>&pages=outbo" target="_blank">
            <%out.println(r.getString(5));
            %>
    </a>
        </td>
        
        <td>
            <a href='./deletemail?tdate=<%=r.getString(3)%>&tuser=<%=r.getString(1)%>&boxi=outbox'> <input type="button" name="delete" value="Delete"/></a>
        </td>
     <%};
%>
</tr>
</table>
  </div>

<%@include file="footer.jsp" %>
