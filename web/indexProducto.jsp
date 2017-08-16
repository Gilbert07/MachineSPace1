<%-- 
    Document   : indexProducto
    Created on : 8/08/2017, 07:09:17 PM
    Author     : Leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Proyecto.Dao.*"%>
<%@page import="Proyecto.Bean.*"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="Utils.Conexion"%>
<!DOCTYPE html>
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
                    <a class="navbar-brand" href="index.jsp">Catalogo</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">

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
                        </li><li>
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
                            <a href="Registrarse.jsp">Registrarse</a>
                        </li>
                        <li>
                            <a href="Login.jsp">Ingresar</a>
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
                        <a href="indexGimnasio.jsp" class="list-group-item">Gimnasio</a>
                        <a href="indexRopa.jsp" class="list-group-item">Ropa</a>
                        <a href="indexCalzado.jsp" class="list-group-item">Calzado</a>
                        <a href="indexAccesorios.jsp" class="list-group-item">Accesorios</a>
                    </div>
                </div>

                <div class="col-md-9">

                    <div class="thumbnail">
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
                            double Precio = 0;
                            String Imagen = "";
                            String Marca = "";

                            CodigoProd = request.getParameter("CodigoProd");

                            try {

                                Rs = Puente.executeQuery("SELECT * FROM producto WHERE CodigoProd = '" + CodigoProd + "'");

                                int i = 0;

                                while (Rs.next()) {
                                    i++;
                                    Nombre = Rs.getString("Nombre");
                                    CodigoProd = Rs.getString("CodigoProd");
                                    Descripcion = Rs.getString("Descripcion");
                                    Precio = Rs.getDouble("Precio");
                                    Imagen = Rs.getString("Imagen");
                                    Marca = Rs.getString("Marca");


                        %>
                        <img class="img-responsive" src="IMG/<%=Imagen%>" alt="" >
                        <div class="caption-full">
                            <h4 class="pull-right">$<%= Precio%></h4>
                            <h4><a href="#"><%= Nombre%></a>
                                <h4><a href="#"><%= Marca%></a>
                                </h4>
                                <p><%=Descripcion%> <a target="_blank" href="http://bootsnipp.com"></a>.</p>
                                <p>
                                    <strong><a href="http://maxoffsky.com/code-blog/laravel-shop-tutorial-1-building-a-review-system/"></a>
                                    </strong></p>
                                <p>
                                </p>
                        </div>
                        <div class="ratings">
                            <p class="pull-right">3 reviews</p>
                            <p>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star-empty"></span>
                                4.0 stars
                            </p>
                        </div>
                        <%

                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }

                        %>                        
                    </div>
                    <div class="well">
                        <form method="post" class="form-horizontal"  action="ServletCalificar">                      
                            <div class="col-md-4">
                                <textarea id="Comentario" name="Comentario" type="" placeholder="Opina" class="form-control" style="height: 60px;width: 560px" required Disabled></textarea>    
                            </div><br>

                            <div class="text-right">
                                <label class="col-md-3 control-label" for="Publicar"></label>
                                <div class="col-md-3">
                                    <button id="Publicar" name="Publicar" class="btn btn-success" Disabled>Publicar
                                        <input type="hidden" name="textOpcion" value="1"></button><br><br>
                                    <label>Debes <a href="Login.jsp">Iniciar Sesion </a>Para Poder Opinar</label>
                                </div>
                            </div>
                        </form> <br><br>

                        <% if (request.getAttribute("error") != null) { %>
                        ${error}
                        <% } else {%>
                        ${exito}
                        <% }%>

                        <hr>

                        <%
                            String Comentario = "";
                            String Calificacion = "";
                            try {
                                Rs = Puente.executeQuery("SELECT * FROM evaluacion");

                                int i = 0;

                                while (Rs.next()) {
                                    i++;

                                    Comentario = Rs.getString("Comentario");
                                    Calificacion = Rs.getString("Calificacion");

                        %>

                        <div class="row">
                            <div class="col-md-12">
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star"></span>
                                <span class="glyphicon glyphicon-star-empty"></span>
                                Usuario
                                <p><%= Comentario%></p>
                            </div>
                        </div>
                        <%
                                }
                            } catch (Exception e) {
                                e.printStackTrace();
                            }
                            Puente.close();
                        %>
                    </div>

                </div>

            </div>

        </div>
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

