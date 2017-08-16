package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.util.ArrayList;
import Proyecto.Dao.*;
import Proyecto.Bean.*;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Connection;
import Utils.Conexion;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
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
      out.write("                        \n");
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
      out.write("                            <a href=\"\"></a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Registrarse.jsp\">Registrarse</a>\n");
      out.write("                        </li>\n");
      out.write("                        <li>\n");
      out.write("                            <a href=\"Login.jsp\">Ingresar</a>\n");
      out.write("                        </li>\n");
      out.write("                                              \n");
      out.write("                    </ul>\n");
      out.write("                </div>\n");
      out.write("                <!-- /.navbar-collapse -->\n");
      out.write("            </div>\n");
      out.write("            <!-- /.container -->\n");
      out.write("        </nav>\n");
      out.write("\n");
      out.write("\n");
      out.write("        <!-- Page Content -->\n");
      out.write("        <div class=\"container\">\n");
      out.write("\n");
      out.write("            <div class=\"row\">\n");
      out.write("\n");
      out.write("                <div class=\"col-md-3\">\n");
      out.write("                    <p class=\"lead\">Categorias</p>\n");
      out.write("                    <div class=\"list-group\">\n");
      out.write("                        <a href=\"indexGimnasio.jsp\" class=\"list-group-item\">Gimnasio</a>\n");
      out.write("                        <a href=\"indexRopa.jsp\" class=\"list-group-item\">Ropa</a>\n");
      out.write("                        <a href=\"indexCalzado.jsp\" class=\"list-group-item\">Calzado</a>\n");
      out.write("                        <a href=\"indexAccesorios.jsp\" class=\"list-group-item\">Accesorios</a>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("\n");
      out.write("                <div class=\"col-md-9\">\n");
      out.write("\n");
      out.write("                    <div class=\"row carousel-holder\">\n");
      out.write("\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <div id=\"carousel-example-generic\" class=\"carousel slide\" data-ride=\"carousel\">\n");
      out.write("                                <ol class=\"carousel-indicators\">\n");
      out.write("                                    <li data-target=\"#carousel-example-generic\" data-slide-to=\"0\" class=\"active\"></li>\n");
      out.write("                                    <li data-target=\"#carousel-example-generic\" data-slide-to=\"1\"></li>\n");
      out.write("                                    <li data-target=\"#carousel-example-generic\" data-slide-to=\"2\"></li>\n");
      out.write("                                </ol>\n");
      out.write("                                <div class=\"carousel-inner\">\n");
      out.write("                                    <div class=\"item active\">\n");
      out.write("                                        <center><img class=\"slide-image\" src=\"IMG/Colombia.jpg\" alt=\"\" style=\"height: 200px;width: 200px\"></center>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"item\">\n");
      out.write("                                        <center><img class=\"slide-image\" src=\"IMG/Gorra.jpg\" alt=\"\" style=\"height: 200px;width: 200px\"></center>\n");
      out.write("                                    </div>\n");
      out.write("                                    <div class=\"item\">\n");
      out.write("                                        <center><img class=\"slide-image\" src=\"IMG/Guayos.jpg\" alt=\"\" style=\"height: 200px;width: 200px\"></center>\n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                                <a class=\"left carousel-control\" href=\"#carousel-example-generic\" data-slide=\"prev\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-chevron-left\"></span>\n");
      out.write("                                </a>\n");
      out.write("                                <a class=\"right carousel-control\" href=\"#carousel-example-generic\" data-slide=\"next\">\n");
      out.write("                                    <span class=\"glyphicon glyphicon-chevron-right\"></span>\n");
      out.write("                                </a>\n");
      out.write("                            </div>\n");
      out.write("                        </div>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    ");

                        Conexion Cnx = new Conexion();
                        Connection Conn = null;
                        Statement Puente = null;
                        ResultSet Rs = null;
                        Conn = Cnx.ObtenerConexion();
                        Puente = Conn.createStatement();

                        String CodigoProd = "";
                        String Nombre = "";
                        String Descripcion = "";
                        double Precio = 0;
                        String Imagen = "";
                        String Marca = "";

                        try {
                            Rs = Puente.executeQuery("SELECT * FROM producto");

                            int i = 0;

                            while (Rs.next()) {
                                i++;

                                Nombre = Rs.getString("Nombre");
                                CodigoProd = Rs.getString("CodigoProd");
                                Descripcion = Rs.getString("Descripcion");
                                Precio = Rs.getDouble("Precio");
                                Imagen = Rs.getString("Imagen");
                                Marca = Rs.getString("Marca");


                    
      out.write("\n");
      out.write("\n");
      out.write("                    <div class=\"col-sm-4 col-lg-4 col-md-4\" >\n");
      out.write("                        <form method=\"POST\" action=\"indexProducto.jsp\">\n");
      out.write("                            <div class=\"row\">\n");
      out.write("\n");
      out.write("                                <div class=\"col-sm-4 col-lg-4 col-md-4\" style=\"height: 250px;width: 250px\">\n");
      out.write("                                    <div class=\"thumbnail\">\n");
      out.write("                                        ");
                                            
                                            int Salto = 0;
                                        
      out.write("  \n");
      out.write("                                        <img src=\"IMG/");
      out.print(Imagen);
      out.write("\" >\n");
      out.write("                                        <div class=\"caption\">\n");
      out.write("                                            <input  type=\"hidden\" name =\"CodigoProd\" value=\"");
      out.print( CodigoProd);
      out.write("\"> \n");
      out.write("                                            <button type=\"submit\" class=\"btn btn-warning\"> ");
      out.print( Nombre);
      out.write("</button><br>\n");
      out.write("                                            <h4 class=\"pull-right\">$");
      out.print( Precio);
      out.write("</h4><br><br>\n");
      out.write("                                            <p>");
      out.print(Marca);
      out.write("</p>\n");
      out.write("                                        </div>\n");
      out.write("                                        <div class=\"ratings\">\n");
      out.write("                                            <p class=\"pull-right\">15 reviews</p>\n");
      out.write("                                            <p>\n");
      out.write("                                                <span class=\"glyphicon glyphicon-star\"></span>\n");
      out.write("                                                <span class=\"glyphicon glyphicon-star\"></span>\n");
      out.write("                                                <span class=\"glyphicon glyphicon-star\"></span>\n");
      out.write("                                                <span class=\"glyphicon glyphicon-star\"></span>\n");
      out.write("                                                <span class=\"glyphicon glyphicon-star\"></span>\n");
      out.write("                                            </p>\n");
      out.write("                                        </div>\n");
      out.write("\n");
      out.write("                                        <br>\n");
      out.write("                                        ");

                                            Salto++;
                                            if (Salto == 3) {

                                                Salto = 0;
                                            }
                                        
      out.write(" \n");
      out.write("                                    </div>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                        <br><br><br><br><br><br><br><br><br><br><br>\n");
      out.write("                    </div>\n");
      out.write("\n");
      out.write("                    ");

                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        Puente.close();
                    
      out.write("\n");
      out.write("\n");
      out.write("                    <!-- /.container -->\n");
      out.write("\n");
      out.write("                    <div class=\"container\">\n");
      out.write("\n");
      out.write("                        <hr>\n");
      out.write("\n");
      out.write("                        <!-- Footer -->\n");
      out.write("                        <footer>\n");
      out.write("                            <div class=\"row\">\n");
      out.write("                                <div class=\"col-lg-12\">\n");
      out.write("                                    <p>MachineSpace</p>\n");
      out.write("                                </div>\n");
      out.write("                            </div>\n");
      out.write("                        </footer>\n");
      out.write("\n");
      out.write("                    </div>\n");
      out.write("                    <!-- /.container -->\n");
      out.write("\n");
      out.write("                    <!-- jQuery -->\n");
      out.write("\n");
      out.write("                    <script src=\"js/jquery.js\"></script>\n");
      out.write("\n");
      out.write("                    <!-- Bootstrap Core JavaScript -->\n");
      out.write("                    <script src=\"js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("                    </body>\n");
      out.write("\n");
      out.write("                    </html>\n");
      out.write("\n");
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
