<%-- 
    Document   : Calzado
    Created on : 26/07/2017, 12:48:30 AM
    Author     : Leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Utils.Conexion"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Proyecto.Dao.*"%>
<%@page import="Proyecto.Bean.*"%>
<!DOCTYPE html>

<%
    HttpSession misesion = request.getSession();
    if (misesion.getAttribute("User") == null) {%>
<script>location.replace("index.jsp");</script>
<% } else { %>

<%!
    BeanCliente BE = new BeanCliente();

%>
<%
    BE = (BeanCliente) misesion.getAttribute("User");

    Conexion cnx = new Conexion();
    Connection conn = null;
    Statement puente = null;
    ResultSet rs = null;

    boolean encontrado = false;
    boolean listo = false;

    conn = cnx.ObtenerConexion();
    puente = conn.createStatement();


%>
<html lang="en">


    <head>

        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Machine Space</title>

        <!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/shop-homepage.css" rel="stylesheet">

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->

    </head>

    <body>

        <!-- Navigation -->
        <nav class="navbar navbar-inverse navbar-fixed-top" role="navigation">
            <div class="container">
                <!-- Brand and toggle get grouped for better mobile display -->
                <div class="navbar-header">
                    <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
                        <span class="sr-only">Toggle navigation</span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                        <span class="icon-bar"></span>
                    </button>
                    <a class="navbar-brand" href="AdminCatalogo.jsp">Catalogo</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">
                        <li>
                            <a href="Publicar.jsp">Publica Un Anuncio</a>
                        </li>
                        <li>
                            <a href="#">Mis Favoritos</a>
                        </li>
                        <li>
                            <a href="#">Mis Anuncios</a>
                        </li>
                        <li>
                            <a href="#">Mis Mensajes</a>
                        </li>
                        <li>
                            <a href="Editar_Datos_Cliente.jsp">Mi Perfil</a>
                        </li>
                        <li>
                            <a></a>
                        </li>
                        <li>
                            <a></a>
                        </li>
                        <li>
                            <a></a>
                        </li>
                        <li>
                            <a></a>
                        </li>
                        <li>
                            <a></a>
                        </li>
                        <li>
                            <a></a>
                        </li>
                        
                         <li>
                            <label  style="color:white" aligh="center">Bienvenido :<br> <%=BE.getNombre() + " "%><%=BE.getApellido() + " "%><%=BE.getRol()%></label>
                        </li>
                        <li>
                            <a></a>
                        </li>
                        <li>
                            <button name="btnCerrarSesion" id="btnCerrarSesion" class="btn btn-danger" onclick="Cerrar()">Cerrar Sesion</button>
                        </li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

        <!-- Page Content -->
        <div class="container">

            <div class="row">

                <div class="col-md-3">
                    <p class="lead">Categorias</p>
                    <div class="list-group">
                        <a href="Gimnasio.jsp" class="list-group-item">Gimnasio</a>
                        <a href="Ropa.jsp" class="list-group-item">Ropa</a>
                        <a href="Calzado.jsp" class="list-group-item">Calzado</a>
                        <a href="Accesorios.jsp" class="list-group-item">Accesorios</a>
                    </div>
                </div>

                    <%
                        Conexion Cnx = new Conexion();
                        Connection Conn = null;
                        Statement Puente = null;
                        ResultSet Rs = null;
                        Conn = Cnx.ObtenerConexion();
                        Puente = Conn.createStatement();

                        String CodigoProd = "";
                        String Nombre = "";
                        String Descripcion = "";
                        String Precio = "";
                        String Imagen = "";
                        String Marca = "";

                        try {
                             Rs = Puente.executeQuery("SELECT * FROM producto WHERE Categoria = 'Calzado'");

                            int i = 0;

                            while (Rs.next()) {
                                i++;

                                Nombre = Rs.getString("Nombre");
                                CodigoProd = Rs.getString("CodigoProd");
                                Descripcion = Rs.getString("Descripcion");
                                Precio = Rs.getString("Precio");
                                Imagen = Rs.getString("Imagen");
                                Marca = Rs.getString("Marca");


                    %>

                    
                     <script>

                    function Cerrar() {
                        window.location.href = "index.jsp?cerrar=true";
                    }

                    function noRegresar() {
                        window.location.hash = "no-back-button";
                        window.location.hash = "Again-No-back-button"//chrome;
                        window.onhashchange = function () {
                            window.location.hash = "no-back-button";
                        }

                    }
                </script>
  <div class="col-sm-4 col-lg-4 col-md-4" >
                        <form method="POST" action="Producto.jsp">
                            <div class="row">

                                <div class="col-sm-4 col-lg-4 col-md-4" style="height: 250px;width: 250px">
                                    <div class="thumbnail">
                                        <%                                            
                                            int Salto = 0;
                                        %>  
                                        <img src="IMG/<%=Imagen%>" >
                                        <div class="caption">
                                            <input  type="hidden" name ="CodigoProd" value="<%= CodigoProd%>"> 
                                            <button type="submit" class="btn btn-warning"> <%= Nombre%></button><br>
                                            <h4 class="pull-right">$<%= Precio%></h4><br><br>
                                            <p><%=Marca%></p>
                                        </div>
                                        <div class="ratings">
                                            <p class="pull-right">15 reviews</p>
                                            <p>
                                                <span class="glyphicon glyphicon-star"></span>
                                                <span class="glyphicon glyphicon-star"></span>
                                                <span class="glyphicon glyphicon-star"></span>
                                                <span class="glyphicon glyphicon-star"></span>
                                                <span class="glyphicon glyphicon-star"></span>
                                            </p>
                                        </div>

                                        <br>
                                        <%
                                            Salto++;
                                            if (Salto == 3) {

                                                Salto = 0;
                                            }
                                        %> 
                                    </div>
                                </div>
                            </div>
                        </form>
                        <br><br><br><br><br><br><br><br><br><br><br>
                    </div>

                    <%
                            }
                        } catch (Exception e) {
                            e.printStackTrace();
                        }
                        Puente.close();
                    %>
<%
                    }

                %>
                    <!-- /.container -->

                <div class="container">

                    <hr>

                    <!-- Footer -->
                    <footer>
                        <div class="row">
                            <div class="col-lg-12">
                                <p>MachineSpace</p>
                            </div>
                        </div>
                    </footer>

                </div>
                <!-- /.container -->

                <!-- jQuery -->

                <script src="js/jquery.js"></script>

                <!-- Bootstrap Core JavaScript -->
                <script src="js/bootstrap.min.js"></script>

                </body>

                </html>
