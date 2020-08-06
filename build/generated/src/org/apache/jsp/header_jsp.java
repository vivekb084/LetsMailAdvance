package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class header_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html> \n");
      out.write("<html>\n");
      out.write("    <style>\n");
      out.write("        \n");
      out.write("        .body{\n");
      out.write("\tmargin-top: -80px;\n");
      out.write("\t\n");
      out.write("\tmargin-left: 200px;\n");
      out.write("\twidth: 950px;\n");
      out.write("\theight: 500px;\n");
      out.write("\tbackground-color: #ADADAD;\n");
      out.write("\tbackground-size: cover;\n");
      out.write("\t-webkit-filter: blur(5px);\n");
      out.write("\tz-index:3;\n");
      out.write("        opacity: 1;\n");
      out.write("        background-image: url(\"images/3.jpg\");\n");
      out.write("}\n");
      out.write("\n");
      out.write("\n");
      out.write(".header{\n");
      out.write("\tposition: absolute;\n");
      out.write("        margin-top: -120px;\n");
      out.write("\ttop: calc(50% - 35px);\n");
      out.write("\tleft: calc(50% - 255px);\n");
      out.write("\tz-index: 2;\n");
      out.write("        \n");
      out.write("}\n");
      out.write("\n");
      out.write(".header div{\n");
      out.write("\tfloat: left;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tfont-family: 'Exo', sans-serif;\n");
      out.write("\tfont-size: 35px;\n");
      out.write("\tfont-weight: 200;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".header div span{\n");
      out.write("\tcolor: #5379fa !important;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login{\n");
      out.write("    margin-top: -120px;\n");
      out.write("\tposition: absolute;\n");
      out.write("\ttop: calc(50% - 75px);\n");
      out.write("\tleft: calc(50% - 50px);\n");
      out.write("\theight: 150px;\n");
      out.write("\twidth: 350px;\n");
      out.write("\tpadding: 10px;\n");
      out.write("\tz-index: 2;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=text]{\n");
      out.write("\twidth: 250px;\n");
      out.write("\theight: 30px;\n");
      out.write("\tbackground: transparent;\n");
      out.write("\tborder: 1px solid rgba(255,255,255,0.6);\n");
      out.write("\tborder-radius: 2px;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tfont-family: 'Exo', sans-serif;\n");
      out.write("\tfont-size: 16px;\n");
      out.write("\tfont-weight: 400;\n");
      out.write("\tpadding: 4px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=password]{\n");
      out.write("\twidth: 250px;\n");
      out.write("\theight: 30px;\n");
      out.write("\tbackground: transparent;\n");
      out.write("\tborder: 1px solid rgba(255,255,255,0.6);\n");
      out.write("\tborder-radius: 2px;\n");
      out.write("\tcolor: #fff;\n");
      out.write("\tfont-family: 'Exo', sans-serif;\n");
      out.write("\tfont-size: 16px;\n");
      out.write("\tfont-weight: 400;\n");
      out.write("\tpadding: 4px;\n");
      out.write("\tmargin-top: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=submit]{\n");
      out.write("\twidth: 260px;\n");
      out.write("\theight: 35px;\n");
      out.write("\tbackground: #fff;\n");
      out.write("\tborder: 1px solid #fff;\n");
      out.write("\tcursor: pointer;\n");
      out.write("\tborder-radius: 2px;\n");
      out.write("\tcolor: #a18d6c;\n");
      out.write("\tfont-family: 'Exo', sans-serif;\n");
      out.write("\tfont-size: 16px;\n");
      out.write("\tfont-weight: 400;\n");
      out.write("\tpadding: 6px;\n");
      out.write("\tmargin-top: 10px;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=submit]:hover{\n");
      out.write("\topacity: 0.8;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=submit]:active{\n");
      out.write("\topacity: 0.6;\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=text]:focus{\n");
      out.write("\toutline: none;\n");
      out.write("\tborder: 1px solid rgba(255,255,255,0.9);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=password]:focus{\n");
      out.write("\toutline: none;\n");
      out.write("\tborder: 1px solid rgba(255,255,255,0.9);\n");
      out.write("}\n");
      out.write("\n");
      out.write(".login input[type=submit]:focus{\n");
      out.write("\toutline: none;\n");
      out.write("}\n");
      out.write("\n");
      out.write("::-webkit-input-placeholder{\n");
      out.write("   color: rgba(255,255,255,0.6);\n");
      out.write("}\n");
      out.write("\n");
      out.write("::-moz-input-placeholder{\n");
      out.write("   color: rgba(255,255,255,0.6);\n");
      out.write("}\n");
      out.write("#form1\n");
      out.write("{\n");
      out.write("    position: absolute; \n");
      out.write("    display:none;\n");
      out.write("    z-index: 10;\n");
      out.write("}\n");
      out.write("#form2\n");
      out.write("{\n");
      out.write("    position: absolute; \n");
      out.write("    display:none;\n");
      out.write("    z-index: 10;\n");
      out.write("}\n");
      out.write("\n");
      out.write("</style>\n");
      out.write("\n");
      out.write("<head>\n");
      out.write("  <title>Let's Mail</title>\n");
      out.write("  <meta name=\"description\" content=\"website description\" />\n");
      out.write("  <meta name=\"keywords\" content=\"website keywords, website keywords\" />\n");
      out.write("  <meta http-equiv=\"content-type\" content=\"text/html; charset=windows-1252\" />\n");
      out.write("  <link rel=\"stylesheet\" type=\"text/css\" href=\"css/style.css\" />\n");
      out.write("  <!-- modernizr enables HTML5 elements and feature detects -->\n");
      out.write("  <script\n");
      out.write("  src=\"js/form.js\">\n");
      out.write("          </script>\n");
      out.write(" <script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("    $(\".forms\").click(function(){\n");
      out.write("        $(\"#form1\").show();\n");
      out.write("    });\n");
      out.write("        \n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("<script>\n");
      out.write("$(document).ready(function(){\n");
      out.write("    $(\".formss\").click(function(){\n");
      out.write("        $(\"#form2\").show();\n");
      out.write("    });\n");
      out.write("        \n");
      out.write("});\n");
      out.write("</script>\n");
      out.write("\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<body>\n");
      out.write("    <div id=\"form1\">\n");
      out.write("        <div class=\"body\" style=\"opacity:1;\"></div>  \n");
      out.write("\t\t\n");
      out.write("        <div class=\"header\" style=\"opacity:1\">\n");
      out.write("\t\t\t<div>Login  <span>Form  </span></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<br>\n");
      out.write("\t\t<div class=\"login\">\n");
      out.write("                                       \n");
      out.write("                    <form method=\"post\" action=\"./validlogin\">\n");
      out.write("                        \n");
      out.write("                        <input type=\"text\" placeholder=\"username\" name=\"user\"/><br>\n");
      out.write("\t\t\t\t<input type=\"password\" placeholder=\"password\" name=\"pass\"/><br>\n");
      out.write("                                <input type=\"submit\" name=\"submit\" value=\"Login\"/>\n");
      out.write("                        \n");
      out.write("\t\t\t\t\n");
      out.write("                    </form>\n");
      out.write("           \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("     <div id=\"form2\">\n");
      out.write("        <div class=\"body\" style=\"opacity:1;\"></div>  \n");
      out.write("\t\t\n");
      out.write("        <div class=\"header\" style=\"opacity:1\">\n");
      out.write("\t\t\t<div>SignUp  <span>Form  </span></div>\n");
      out.write("\t\t</div>\n");
      out.write("\t\t<br>\n");
      out.write("\t\t<div class=\"login\">\n");
      out.write("                                       \n");
      out.write("                    <form method=\"post\" action=\"./register\">\n");
      out.write("                        <input type=\"text\" name=\"nam\" placeholder=\"Name\"/><br>\n");
      out.write("                        <input type=\"text\" placeholder=\"Username\" name=\"user\"/><br>\n");
      out.write("\t\t\t\t<input type=\"password\" placeholder=\"Password\" name=\"pass\"/><br>\n");
      out.write("                                <input type=\"submit\" name=\"submit\" value=\"SignUp\"/>\n");
      out.write("                        \n");
      out.write("\t\t\t\t\n");
      out.write("                    </form>\n");
      out.write("           \n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("\t\t</div>\n");
      out.write("</div>\n");
      out.write("    \n");
      out.write("    \n");
      out.write("                \n");
      out.write("  <div id=\"main\">\n");
      out.write("    <header>\n");
      out.write("\t  <div id=\"banner\">\n");
      out.write("               \n");
      out.write("\t    <div id=\"welcome\">\n");
      out.write("\t      <h3>Let's Mail<span> YourMailService</span></h3>\n");
      out.write("             </div><!--close welcome-->\n");
      out.write("             \n");
      out.write("\t    <div id=\"welcome_slogan\">\n");
      out.write("\t      <h3>Better way of Communication</h3>\n");
      out.write("              <div style=\"font-size: 30px;color: blue;margin-left: 600px;margin-top: -80px;\">\n");
      out.write("                  \n");
      out.write("              ");

              if(request.getSession().getAttribute("uname")!=null)
                {
            
      out.write("\n");
      out.write("           Welcome \n");
      out.write("                    ");
      out.print(session.getAttribute("uname"));
      out.write("\n");
      out.write("             \n");
      out.write("               ");

                   }

      out.write("\n");
      out.write("              </div>\n");
      out.write("\t    </div><!--close welcome_slogan-->\t\t\t\n");
      out.write("\t  </div><!--close banner-->\n");
      out.write("    </header>\n");
      out.write("\n");
      out.write("\t<nav>\n");
      out.write("\t  <div id=\"menubar\">\n");
      out.write("        <ul id=\"nav\">\n");
      out.write("          <li class=\"current1\"><a href=\"index.jsp\">Home</a></li>\n");
      out.write("          ");
 
                if(request.getSession().getAttribute("uname")==null)
                {
            
      out.write("\n");
      out.write("          <li class=\"forms\"><a>Login</a></li>\n");
      out.write("          <li class=\"formss\"><a>Register</a></li>\n");
      out.write("          ");

                   }
                   else
{

                
      out.write("\n");
      out.write("          <li class=\"current2\"><a href=\"inbox.jsp\">Inbox</a></li>\n");
      out.write("          <li class=\"current3\"><a href=\"compose.jsp\">Compose</a></li>\n");
      out.write("          <li class=\"current4\"><a href=\"outbox.jsp\">Sent</a></li>\n");
      out.write("          <li><a href=\"logout.jsp\">LogOut</a> </li>\n");
      out.write("\n");
      out.write("       \n");
      out.write("                ");

                }
                
      out.write("\n");
      out.write("        </ul>\n");
      out.write("      </div><!--close menubar-->\t\n");
      out.write("    </nav>\t\n");
      out.write("    \n");
      out.write("\t<div id=\"site_content\">\t\n");
      out.write("\n");
      out.write("      <div class=\"slideshow\">\n");
      out.write("\t    <ul class=\"slideshow\">\n");
      out.write("         <li><img width=\"100%\" height=\"250\" src=\"images/2.jpg\" alt=\"\" style=\" opacity: 0.9   ;\" /></li>\n");
      out.write("                <li><img width=\"900\" height=\"250\" src=\"images/1.jpg\" alt=\"\" style=\" opacity: 1;\" /></li>\n");
      out.write("        </ul> \n");
      out.write("\t  </div>\t\n");
      out.write("\t\n");
      out.write("\t  <div id=\"content\">\n");
      out.write("        <div class=\"content_item\">\n");
      out.write("\t\t  <h1>Welcome To Let's Mail</h1> \n");
      out.write("                  <p>Tired of  Other Mail service.<br>Try Let's Mail.<br>We provide Email with File Attachment and Voice Mailing and Video chat.All you have to do is just Login.<br>\n");
      out.write("                  We Provide a secure method of sending mails and focus on your privacy.</p>   \t\t\n");
      out.write("\t\t  \n");
      out.write("\t\t  \n");
      out.write("\t\t    \n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
