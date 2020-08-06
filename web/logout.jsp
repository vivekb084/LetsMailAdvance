<%-- 
    Document   : logout
    Created on : 2 Jun, 2016, 4:24:22 PM
    Author     : vivek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
 <head>
        <script>
            window.history.forward();
    function noBack()
    {window.history.forward();
    }
            </script>
    </head>
    <body onload="noBack();" onpageshow="if (event.persisted) noBack();" onload="">
        
    </body>
</html>
<%
session.setAttribute("uname", "");
    session.setAttribute("uname", null);
    session.removeValue("uname");
    session.removeAttribute("uname");
    session.setAttribute("user1", "");
    session.setAttribute("user1", null);
    session.removeValue("user1");
    session.removeAttribute("user1");
    session.removeAttribute("user2");
    session.removeAttribute("users");
    session.removeAttribute("pass");
    session.invalidate();
    session=null;
    response.setHeader("Cache-Control", "no-cache"); //Forces caches to obtain a new copy of the page from the origin server   
response.setHeader("Cache-Control", "no-store"); //Directs caches not to store the page under any circumstance   
	response.setDateHeader("Expires", -1); //Causes the proxy cache to see the page as "stale"   
response.setHeader("Pragma", "no-cache"); 
  //  RequestDispatcher rr = request.getRequestDispatcher("index.jsp");
                  //  rr.forward(request, response);
                  response.sendRedirect("index.jsp");
                    %>