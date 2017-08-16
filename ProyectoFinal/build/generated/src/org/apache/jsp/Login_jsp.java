package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import Utils.Conexion;

public final class Login_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    ");

        Conexion Cnx = new Conexion();
        Connection Conn = null;
        Statement Puente = null;
        ResultSet Rs = null;
        Conn = Cnx.ObtenerConexion();
        Puente = Conn.createStatement();
    
      out.write("\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <title>Machine Space</title>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap Core CSS -->\n");
      out.write("        <link href=\"css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom CSS -->\n");
      out.write("        <link href=\"css/shop-homepage.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\">\n");
      out.write("\n");
      out.write("        <script src=\"https://code.jquery.com/jquery-2.2.2.min.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->\n");
      out.write("        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->\n");
      out.write("        <!--[if lt IE 9]>\n");
      out.write("            <script src=\"https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js\"></script>\n");
      out.write("            <script src=\"https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js\"></script>\n");
      out.write("        <![endif]-->\n");
      out.write("\n");
      out.write("    </head>\n");
      out.write("\n");
      out.write("    <body>\n");
      out.write("\n");
      out.write("        <!-- Navigation -->\n");
      out.write("        <nav class=\"navbar navbar-inverse navbar-fixed-top\" role=\"navigation\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <!-- Brand and toggle get grouped for better mobile display -->\n");
      out.write("                <div class=\"navbar-header\">\n");
      out.write("                    <button type=\"button\" class=\"navbar-toggle\" data-toggle=\"collapse\" data-target=\"#bs-example-navbar-collapse-1\">\n");
      out.write("                        <span class=\"sr-only\">Toggle navigation</span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                        <span class=\"icon-bar\"></span>\n");
      out.write("                    </button>\n");
      out.write("                    <a class=\"navbar-brand\" href=\"index.jsp\">Catalogo</a>\n");
      out.write("                </div>\n");
      out.write("                <!-- Collect the nav links, forms, and other content for toggling -->\n");
      out.write("                <div class=\"collapse navbar-collapse\" id=\"bs-example-navbar-collapse-1\">\n");
      out.write("                    <ul class=\"nav navbar-nav\">\n");
      out.write("\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li><li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li><li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Registrarse.jsp\">Registrarse</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Login.jsp\">Ingresar</a>\n");
      out.write("                        </li>\n");
      out.write("\n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-collapse -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /.container -->\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <div class=\"grid\">\n");
      out.write("\n");
      out.write("            <form action=\"ServletLogin\" method=\"post\" class=\"form login\">\n");
      out.write("\n");
      out.write("                <header class=\"login__header\">\n");
      out.write("                    <h3 class=\"login__title\">Login</h3>\n");
      out.write("                </header>\n");
      out.write("\n");
      out.write("                <div class=\"login__body\">\n");
      out.write("\n");
      out.write("                    <div class=\"form__field\">\n");
      out.write("                        <input type=\"email\" placeholder=\"Email\" name=\"textEmail\" required>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    <div class=\"form__field\">\n");
      out.write("                        <input type=\"password\" placeholder=\"Contraseña\" name=\"textCodigo\" required>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                </div>\n");
      out.write("                <footer class=\"login__footer\">                   \n");
      out.write("                    <button id=\"Iniciar\" name=\"Iniciar\" class=\"btn btn-success\">Iniciar\n");
      out.write("                        <input type=\"hidden\" name=\"Iniciar\"></button>\n");
      out.write("                    <p><span class=\"icon icon--info\">?</span><a href=\"Recuperar.jsp\">¿Has Olvidado Tu Contraseña?</a></p>\n");
      out.write("\n");
      out.write("                </footer>\n");
      out.write("            </form>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("\n");
      out.write("        ");
 if (request.getAttribute("error") != null) { 
      out.write("\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${error}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("        ");
 } else {
      out.write("\n");
      out.write("        ");
      out.write((java.lang.String) org.apache.jasper.runtime.PageContextImpl.evaluateExpression("${exito}", java.lang.String.class, (PageContext)_jspx_page_context, null));
      out.write("\n");
      out.write("        ");
 }
      out.write("\n");
      out.write("\n");
      out.write("        <!-- /.container -->\n");
      out.write("\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <hr>\n");
      out.write("\n");
      out.write("            <!-- Footer -->\n");
      out.write("            <footer>\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-lg-12\">\n");
      out.write("                        <p>MachineSpace</p>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </footer>\n");
      out.write("\n");
      out.write("        </div>\n");
      out.write("        <!-- /.container -->\n");
      out.write("\n");
      out.write("        <!-- jQuery -->\n");
      out.write("\n");
      out.write("        <script src=\"js/jquery.js\"></script>\n");
      out.write("\n");
      out.write("        <!-- Bootstrap Core JavaScript -->\n");
      out.write("        <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("</html>");
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
