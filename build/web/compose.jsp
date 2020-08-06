<%-- 
    Document   : compose
    Created on : 3 Jun, 2016, 3:30:40 PM
    Author     : vivek
--%>

<%@ include file="header.jsp"%>
<style>
    ul#nav li.current3 a
    { color: #FFF;
      background: #0043A8;
      background: -moz-linear-gradient(#43A9FF, #0043A8);
      background: -o-linear-gradient(#43A9FF, #0043A8);
      background: -webkit-linear-gradient(#43A9FF, #0043A8);  
      text-shadow: none;}
    #stop{
        display:none
    }

</style>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <script>
$(document).ready(function(){
    $("#start").click(function(){
        $("#start").hide();
                $("#stop").show();

    });
        
});
</script>
<script>
    
    function abc(){
    document.getElementById("pa").innerHTML="Start Recording...";
    
    }
</script>
<% 
                if(request.getSession().getAttribute("uname")==null)
                {
                    response.sendRedirect("index.jsp");
                }
            %>
<div class="form_settings">
    <h1>Create Your E-mail</h1>
    <p style="padding-bottom: 15px;">Use it to send emails with attachment.Type email id to which you need to send email and subject and message in given field and click send.</p>   
    <form method="post" action="./sendfileto                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                        ">

        <p><span>To</span><input class="contact" type="text" name="tos" value="" /></p>
        <p><span>Subject</span><input class="contact" type="text" name="subject" value="" /></p>
        <p><span>Message</span><textarea class="contact textarea" rows="8" cols="50" name="message"></textarea></p>

        <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="submitted" value="Send" /></p>
    </form>
    <%  String r=request.getParameter("record");
        String s=request.getParameter("tvi");
        if (s != null && s.equalsIgnoreCase("done")) {
        r=null;
    %>
    <h4>File Uploaded Successfully</h4>
    <% } else if (r != null && r.equalsIgnoreCase("success")) {
s=null;
    %>
    <h4>Audio Recorded Successfully</h4>
    <% } else {
r=null;
s=null;
    %>
    <form method="post" action="./savefile" enctype="multipart/form-data">
        <p><span>Attachment</span> <input type="file" name="fileatt" value="Choose file" /></p>
        <p style="padding-top: 15px"><span>&nbsp;</span><input class="submit" type="submit" name="upload" value="Upload file" /></p>

    </form>
    <a href="./voiceto?st=start"><button onclick="abc();" id="start" >Voice Mail</button></a>
    <a href="./voiceto?st=stop"><button id="stop" >Stop</button></a>

   <p id="pa"></p>

    <%}
       %>
  

</div><!--close form_settings-->
</div><!--close content_item-->
</div><!--close content-->   
</div><!--close site_content-->  	
</div><!--close main-->
<%@include file="footer.jsp" %>