<%-- 
    Document   : index
    Created on : 5 Jun, 2016, 6:38:11 PM
    Author     : vivek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<style>
  ul#nav li.current1 a
{ color: #FFF;
  background: #0043A8;
  background: -moz-linear-gradient(#43A9FF, #0043A8);
  background: -o-linear-gradient(#43A9FF, #0043A8);
  background: -webkit-linear-gradient(#43A9FF, #0043A8);  
  text-shadow: none;}
    
</style>
<%@include file="header.jsp" %>

<% String lgn;


if(request.getSession().getAttribute("user2")==null)
{
    lgn="";
}
else
{
    lgn=request.getSession().getAttribute("user2").toString();
}
if(lgn.equalsIgnoreCase("ok"))
{
  %>
  <script>
      window.alert("Login Successfull");
      </script>

<%}
else if(lgn.equalsIgnoreCase("not"))
{
%>
<script>
    window.alert("UserId or Password is incorrect ");
    </script>
<%
}
%>




<% String us;


if(request.getSession().getAttribute("users")==null)
{
    us="";
}
else
{
    us=request.getSession().getAttribute("users").toString();
}
if(us.equalsIgnoreCase("ok"))
{
  %>
  <script>
      window.alert("Signup Succesfully");
      </script>

<%}
else if(us.equalsIgnoreCase("not"))
{
%>
<script>
    window.alert("Username Not Available ");
    </script>
<%
}
%>

<div class="content_imagetext">
<div class="content_image">
  
    <video  controls="true" id="video1" autoplay="true" style="float: left; 
  width: 300px;
  height: 150px;
  
 
  ">
                          <source src="video/ice.mp4" type="video/mp4" >
                          Your browser does not support the video tag.
                      </video>
	        </div>
    <p>To Use our Mailing Service Login with given UserName and Password.<br>
        Lets have Voice mail in email that you can use to send your voice in email.<br>
        Better Way of communicating is Video Calling.This Feature provide you to call any of your contact who is o using video calling.<br>
        
                    </p>
		  </div><!--close content_imagetext-->
		  
		  <div class="content_container">
		    <p>In Inbox you can see all unread recieved message with their attachment. To download attachment just click the file name.</p>
		  <!-----	<div class="button_small">
		      <a href="#">Read more</a>
		    </div><!--close button_small-->
		  </div><!--close content_container-->
          <div class="content_container">
		    <p>In Outbox you can see all send message with their attachment .To download attachment just click the link with file name.</p>          
		  	<!--close button_small-->		  
		  </div><!--close content_container-->		
          <div class="content_container">
		    <p>Compose your email by clicking on compose link and you can attach a  file to email Clicking Choose file .</p>          
		  		  
		  </div><!--close content_container-->	
		  
		</div><!--close content_item-->
      </div><!--close content-->   
	</div><!--close site_content-->  	
  </div><!--close main-->
 
    <%
        request.getSession().setAttribute("users", null);
        %>
         <%
        request.getSession().setAttribute("user2", null);
        %>
  <%@include file="footer.jsp" %>
  <!-- javascript at the bottom for fast page loading -->
  <script type="text/javascript" src="js/jquery.js"></script>

</body>
</html>
