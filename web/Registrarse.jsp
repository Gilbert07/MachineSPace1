
<%-- 
    Document   : Registrarse
    Created on : 11/07/2017, 06:35:22 PM
    Author     : Leonardo
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>
<%@page import="Utils.Conexion"%>
<!DOCTYPE html>
<html lang="en">

    <%
        Conexion Cnx = new Conexion();
        Connection Conn = null;
        Statement Puente = null;
        ResultSet Rs = null;
        Conn = Cnx.ObtenerConexion();
        Puente = Conn.createStatement();
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


        <div class="grid">

            <form action="ServletCliente" method="post" class="form login">

                <header class="login__header">
                    <h3 class="login__title">Registro</h3>
                </header>

                <div class="form__field" >
                    <div>
                        <label class="form__field">Tipo documento</label> 
                    </div>
                    <div class="col-md-4"  >
                        <select  name="textTipoDoc"  class="form-control" style="position:absolute;left:1%;top:100%;width: 335px" required>
                            <option> Elija Una Opcion</option>
                            <option value="Cedula de ciudadania">Cedula de ciudadania</option>
                            <option value="Pasaporte">Pasaporte</option>
                            <option value="Cedula extranjera">Cedula extranjera</option>
                            
                        </select>
                    </div>
                </div><br><br><br>

                <div class="form__field">
                    <label class="form__field" >Cedula</label>  
                    <div class="form__field">
                        <input  name="textCedula" type="text" placeholder="Cedula" class="form-control input-md" required >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Nombre</label>  
                    <div class="form__field">
                        <input  name="textNombre" type="text" placeholder="Nombre" class="form-control input-md" required >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Apellido</label>  
                    <div class="form__field">
                        <input  name="textApellido" type="text" placeholder="Apellido" class="form-control input-md" required >    
                    </div>
                </div><br>


                <div class="form__field">
                <label class="form__field" for="Ciudad">Ciudad</label> 
                <div class="form__field">
                    <select id="Marca" name="textCiudad" class="form-control"><br>
                        <%
                            try {

                                Rs = Puente.executeQuery("select * from ciudades");
                                while (Rs.next()) {
                        %>

                        <option value="<%=Rs.getString("idCiudad")%>"><%=Rs.getString("Ciudad")%></option>
                        <%
                            }
                        } catch (Exception e) {
                        %>
                        <option value="">No se encontró ningun dato</option>
                        <%
                            }
                        %>
                    </select>
                </div>
            </div><br>

                <div class="form__field">
                    <label class="form__field" >Direccion</label>  
                    <div class="form__field">
                        <input  name="textDireccion" type="text" placeholder="Direccion" class="form-control input-md" required >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Email</label>  
                    <div class="form__field">
                        <input  name="textEmail" type="email" placeholder="Email" class="form-control input-md" required >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Fecha De Nacimiento</label>  
                    <div class="form__field">
                        <input  name="textFecha" type="date"  class="form-control input-md" required >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Telefono</label>  
                    <div class="form__field">
                        <input  name="textTelefono" type="text" placeholder="Telefono" class="form-control input-md" required >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Contraseña</label>  
                    <div class="form__field">
                        <input  name="textCodigo" type="password" placeholder="Contraseña" class="form-control input-md" required >    
                    </div>
                </div>

                
                <div class="form__field">
                    <select id="Marca" name="textEstado" class="form-control" style="visibility: hidden"   disabled required ><br>
                        <%
                            try {

                                Rs = Puente.executeQuery("select * from estados");
                                while (Rs.next()) {
                        %>

                        <option value="<%=Rs.getString("idEstado")%>"><%=Rs.getString("Estado")%></option>
                        <%
                            }
                        } catch (Exception e) {
                        %>
                        <option value="">No se encontró ningun dato</option>
                        <%
                            }
                        %>
                    </select>
                </div><br>
                
                
                
                
                <div class="form__field">

                    <div class="form__field">
                        <input  name="textRol" type="text"  placeholder="Rol"  value="Cliente" class="form-control input-md" style="visibility: hidden" disabled required>    
                    </div>
                </div><br>

            <input type="checkbox" id="c1" name="c1" />
            <label for="c1"><span></span>Acepto <a href="#">Terminos Y Condiciones</a> </label>

            <script language="javascript">
                $(document).ready(function () {
                    $("#Registrarse").on("click", function () {
                        var condiciones = $("#c1").is(":checked");
                        if (!condiciones) {
                            alert("Debe Aceptar Los Terminos Y Condiciones");
                            event.preventDefault();
                        }
                    });
                });
            </script><br>

        </div>
        <footer class="login__footer">                   
            <button id="Registrarse" name="Registrarse" class="btn btn-success" style="position:absolute;left:46%;top:144%;">Registrarse
                <input type="hidden" name="opcion" value="1"></button>
        </footer>
    </form>


<% if (request.getAttribute("error") != null) { %>
${error}
<% } else {%>
${exito}
<% }%>

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


