<%-- 
    Document   : header
    Created on : 5 Jun, 2016, 6:39:15 PM
    Author     : vivek
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html> 
<html>
    <style>
        
        .body{
	margin-top: -80px;
	
	margin-left: 200px;
	width: 950px;
	height: 500px;
	background-color: #ADADAD;
	background-size: cover;
	-webkit-filter: blur(5px);
	z-index:3;
        opacity: 1;
        background-image: url("images/3.jpg");
}


.header{
	position: absolute;
        margin-top: -120px;
	top: calc(50% - 35px);
	left: calc(50% - 255px);
	z-index: 2;
        
}

.header div{
	float: left;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 35px;
	font-weight: 200;
}

.header div span{
	color: #5379fa !important;
}

.login{
    margin-top: -120px;
    margin-left: 30px;
	position: absolute;
	top: calc(50% - 75px);
	left: calc(50% - 50px);
	height: 150px;
	width: 350px;
	padding: 10px;
	z-index: 2;
}

.login input[type=text]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
}

.login input[type=password]{
	width: 250px;
	height: 30px;
	background: transparent;
	border: 1px solid rgba(255,255,255,0.6);
	border-radius: 2px;
	color: #fff;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 4px;
	margin-top: 10px;
}

.login input[type=submit]{
	width: 260px;
	height: 35px;
	background: #fff;
	border: 1px solid #fff;
	cursor: pointer;
	border-radius: 2px;
	color: #a18d6c;
	font-family: 'Exo', sans-serif;
	font-size: 16px;
	font-weight: 400;
	padding: 6px;
	margin-top: 10px;
}

.login input[type=submit]:hover{
	opacity: 0.8;
}

.login input[type=submit]:active{
	opacity: 0.6;
}

.login input[type=text]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=password]:focus{
	outline: none;
	border: 1px solid rgba(255,255,255,0.9);
}

.login input[type=submit]:focus{
	outline: none;
}

::-webkit-input-placeholder{
   color: rgba(255,255,255,0.6);
}

::-moz-input-placeholder{
   color: rgba(255,255,255,0.6);
}
#form1
{
    position: absolute; 
    display:none;
    z-index: 10;
}
#form2
{
    position: absolute; 
    display:none;
    z-index: 10;
}

</style>

<head>
  <title>Let's Mail</title>
  <meta name="description" content="website description" />
  <meta name="keywords" content="website keywords, website keywords" />
  <meta http-equiv="content-type" content="text/html; charset=windows-1252" />
  <link rel="stylesheet" type="text/css" href="css/style.css" />
  <!-- modernizr enables HTML5 elements and feature detects -->
  <script
  src="js/form.js">
          </script>
 <script>
$(document).ready(function(){
    $(".forms").click(function(){
        $("#form1").show();
    });
        
});
</script>
<script>
$(document).ready(function(){
    $(".formss").click(function(){
        $("#form2").show();
    });
        
});
</script>

</head>



<body>
    <div id="form1">
        <div class="body" style="opacity:1;"></div>  
		
        <div class="header" style="opacity:1">
			<div>Login  <span>Form  </span></div>
		</div>
		<br>
		<div class="login">
                                       
                    <form method="post" action="./validlogin">
                        
                        <input type="text" placeholder="Username" name="user"/><br>
				<input type="password" placeholder="Password" name="pass"/><br>
                                <input type="submit" name="submit" value="Login"/>
                        
				
                    </form>
           
                    
                    
		</div>
</div>
    
     <div id="form2">
        <div class="body" style="opacity:1;"></div>  
		
        <div class="header" style="opacity:1">
			<div>SignUp  <span>Form  </span></div>
		</div>
		<br>
		<div class="login">
                                       
                    <form method="post" action="./register">
                        <input type="text" name="nam" placeholder="Name"/><br><br>
                        <input type="text" placeholder="Username" name="user"/><br>
				<input type="password" placeholder="Password" name="pass"/><br>
                                <input type="submit" name="submit" value="SignUp"/>
                        
				
                    </form>
           
                    
                    
		</div>
</div>
    
    
                
  <div id="main">
    <header>
	  <div id="banner">
               
	    <div id="welcome">
	      <h3>Let's Mail<span> YourMailService</span></h3>
             </div><!--close welcome-->
             
	    <div id="welcome_slogan">
	      <h3>Better way of Communication</h3>
              <div style="font-size: 30px;color: blue;margin-left: 600px;margin-top: -80px;">
                  
              <%
              if(request.getSession().getAttribute("uname")!=null)
                {
            %>
           Welcome 
                    <%=session.getAttribute("uname")%>
             
               <%
                   }
%>
              </div>
	    </div><!--close welcome_slogan-->			
	  </div><!--close banner-->
    </header>

	<nav>
	  <div id="menubar">
        <ul id="nav">
          <li class="current1"><a href="index.jsp">Home</a></li>
          <% 
                if(request.getSession().getAttribute("uname")==null)
                {
            %>
          <li class="forms"><a>Login</a></li>
          <li class="formss"><a>Register</a></li>
          <%
                   }
                   else
{

                %>
          <li class="current2"><a href="inbox.jsp">Inbox</a></li>
          <li class="current3"><a href="compose.jsp">Compose</a></li>
          <li class="current4"><a href="outbox.jsp">Sent</a></li>
          <li><a href="logout.jsp">LogOut</a> </li>

       
                <%
                }
                %>
        </ul>
      </div><!--close menubar-->	
    </nav>	
    
	<div id="site_content">	

      <div class="slideshow">
	    <ul class="slideshow">
                <li><img  class="abcd" width="100%" height="250" src="images/2.jpg" alt="" style=" opacity: 1   ;" /></li>
                <li><img  class="abcd"width="900" height="250" src="images/1.jpg" alt="" style=" opacity: 1;" /></li>
        </ul> 
	  </div>	
	<style>
.abcd {display:none;}
</style>
<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("abcd");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";  
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1;}  
    x[myIndex-1].style.display = "block";  
    setTimeout(carousel, 2000); // Change image every 2 seconds
}
</script>
	  <div id="content">
        <div class="content_item">
		  <h1>Welcome To Let's Mail</h1> 
                  <p>Tired of  Other Mail service.<br>Try Let's Mail.<br>We provide Email with File Attachment and Voice Mailing and Video chat.All you have to do is just Login.<br>
                  We Provide a secure method of sending mails and focus on your privacy.</p>   		
		  
		  
		    
