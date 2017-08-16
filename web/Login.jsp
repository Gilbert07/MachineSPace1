<%-- 
    Document   : Login
    Created on : 11/07/2017, 06:35:22 PM
    Author     : Leonardo
--%>


<%-- 
    Document   : Registrarse
    Created on : 11/07/2017, 06:35:22 PM
    Author     : Leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Utils.Conexion"%>
<%@page import="Proyecto.Bean.BeanCliente"%>
<%@page import="Proyecto.Dao.DaoCliente"%>

<!DOCTYPE html>
<html lang="en">

    <%
        Conexion Cnx = new Conexion();
        Connection Conn = null;
        Statement Puente = null;
        ResultSet Rs = null;
        String Email = "";
        Email = request.toString();
        
        Conn = Cnx.ObtenerConexion();
        Puente = Conn.createStatement();
    %>
    <%
     HttpSession misesion = request.getSession();
     
    
     
     
     
     BeanCliente BE = new BeanCliente();
     DaoCliente DE = new DaoCliente(BE);

    %>
     
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

        <link rel="stylesheet" href="css/style.css">

        <script src="https://code.jquery.com/jquery-2.2.2.min.js"></script>

        <!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
        <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
        <!--[if lt IE 9]>
            <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
            <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
        <![endif]-->
        <script src="assets/js/custom.js"></script>
    </head>

    <body onload="nobackbutton();">

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


        <div class="grid">

            <form action="ServletLogin" method="post" class="form login">

                <header class="login__header">
                    <h3 class="login__title">Login</h3>
                </header>

                 
                
                
                <div class="login__body">

                    <div class="form__field">
                        <input type="email" placeholder="Email" name="textEmail" required>
                    </div>

                    <div class="form__field">
                        <input type="password" placeholder="Contraseña" name="textCodigo" required>
                    </div>

                </div>
                
                
               
                
                
                <footer class="login__footer">                   
                    <button id="Iniciar" name="Iniciar" class="btn btn-success">Iniciar
                        <input type="hidden" name="Iniciar"></button>
                    <p><span class="icon icon--info">?</span><a href="contraseña.jsp">¿Has Olvidado Tu Contraseña?</a></p>

                </footer>
                
                
                
                
                
                <% if (request.getAttribute("error") != null) { %>
                ${error}
                <% } else {%>
                ${exito}
                <% }%>
                
                
            </form>
            
           

            <script>

                        function nobackbutton() {

                            window.location.hash = "no-back-button";

                            window.location.hash = "Again-No-back-button" //chrome

                            window.onhashchange = function () {
                                window.location.hash = "no-back-button";
                            }

                        }
                    </script>
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