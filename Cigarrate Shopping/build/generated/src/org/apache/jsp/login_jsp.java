package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta charset=\"UTF-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1.0\">\n");
      out.write("        <title>LOGIN</title>\n");
      out.write("        <link rel=\"shortcut icon\" type=\"image/x-icon\" href=\"img/logo.jpg\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css\">\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/jquery@3.5.1/dist/jquery.slim.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js\"></script>\n");
      out.write("        <script src=\"https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("        <style type=\"text/css\">\n");
      out.write("\n");
      out.write("            @import url('https://fonts.googleapis.com/css?family=Poppins:400,500,600,700&display=swap');\n");
      out.write("            /*Reset CSS*/\n");
      out.write("            * {\n");
      out.write("                padding: 0;\n");
      out.write("                margin: 0;\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                font-family: 'Poppins', sans-serif;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            body {\n");
      out.write("                box-sizing: border-box;\n");
      out.write("                justify-content: center;\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("                background-color: #000;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .container-max {\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .content-max,\n");
      out.write("            h1,\n");
      out.write("            h2,\n");
      out.write("            h3,\n");
      out.write("            h4,\n");
      out.write("            h5,\n");
      out.write("            ul,\n");
      out.write("            li,\n");
      out.write("            p {\n");
      out.write("                margin: 0;\n");
      out.write("                padding: 0;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /*END RESET*/\n");
      out.write("            /*CSS FOR HEADER*/\n");
      out.write("            .header {\n");
      out.write("                background: #000;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /*LOGO*/\n");
      out.write("            .logo {\n");
      out.write("                padding: 15px 0px 15px 30px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .logo img {\n");
      out.write("                font-size: 25px;\n");
      out.write("                color: #fff;\n");
      out.write("                height: 50px;\n");
      out.write("                width: 50px;\n");
      out.write("                text-align: center;\n");
      out.write("                background: #000;\n");
      out.write("                box-sizing: content-box;\n");
      out.write("                transition: all 0.3s ease;\n");
      out.write("                margin-left: 20px;\n");
      out.write("                border-radius: 20px;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /*END   LOGO*/\n");
      out.write("            /*NAVBAV*/\n");
      out.write("            .header-menu {\n");
      out.write("\n");
      out.write("                padding: 28px 0px;\n");
      out.write("                float: left;\n");
      out.write("                text-align: center;\n");
      out.write("                border-radius: 20px;\n");
      out.write("                padding-right: 40px;\n");
      out.write("                font-family: \"Poppins\", sans-serif;\n");
      out.write("            }\n");
      out.write("            .header-menu ul{\n");
      out.write("                list-style: none;\n");
      out.write("            }\n");
      out.write("            .header-menu li {\n");
      out.write("                float: left;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .header-menu li a {\n");
      out.write("                display: flex;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .header-menu a {\n");
      out.write("                border-radius: 40px;\n");
      out.write("                padding: 15px;\n");
      out.write("                color: #fff;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            .header-menu a:hover {\n");
      out.write("                background-color: #fff;\n");
      out.write("                color: #000;\n");
      out.write("                text-decoration: none;\n");
      out.write("            }\n");
      out.write("            .logoshop{\n");
      out.write("                color: #fff;\n");
      out.write("            }\n");
      out.write("\n");
      out.write("            /*END NAVBAR*/\n");
      out.write("            /*CSS FOR LOGIN*/\n");
      out.write("            ::placeholder { /* Chrome, Firefox, Opera, Safari 10.1+ */\n");
      out.write("                color: #fff;\n");
      out.write("                opacity: 1; /* Firefox */\n");
      out.write("            }\n");
      out.write("            .loginform{\n");
      out.write("                margin-top: 150px;\n");
      out.write("            }\n");
      out.write("            input {\n");
      out.write("                background: #000;\n");
      out.write("                border: 2px solid #ae04aa;\n");
      out.write("                border-radius: 25px;\n");
      out.write("                padding: 8px 17px;\n");
      out.write("                color: #fff;\n");
      out.write("            }\n");
      out.write("            input:active,input:hover{\n");
      out.write("                border: 2px solid chartreuse;\n");
      out.write("                padding: 8px 55px;\n");
      out.write("            }\n");
      out.write("            .loginform button{\n");
      out.write("                background-color: #000;\n");
      out.write("                color: #fff;\n");
      out.write("                border: 2px solid #ae04aa;\n");
      out.write("                border-radius: 15px;\n");
      out.write("                padding: 5px;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .loginform button:hover {\n");
      out.write("                background-color: #ae04aa;\n");
      out.write("\n");
      out.write("            }\n");
      out.write("            .inputbox {\n");
      out.write("                margin:15px;\n");
      out.write("            }\n");
      out.write("            /**/\n");
      out.write("        </style>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <!--This is HEADER-->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "module/header.jsp", out, false);
      out.write("\n");
      out.write("            <!--END HEADER-->\n");
      out.write("\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"loginform\" align=\"center\">\n");
      out.write("                    <h3>");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${requestScope.err}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("</h3>\n");
      out.write("                <form action=\"login\" method=\"post\">\n");
      out.write("                    <div class=\"inputbox\">\n");
      out.write("                        <input type=\"text\" name=\"email\" placeholder=\"E-mail\">\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"inputbox\">\n");
      out.write("                        <input type=\"password\" name=\"password\" placeholder=\"Password\">\n");
      out.write("                    </div>\n");
      out.write("                    <button type=\"submit\">Log In</button>\n");
      out.write("                    <a class=\"notyet\" href=\"signup\">No account yet ?</a>\n");
      out.write("                </form>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
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
