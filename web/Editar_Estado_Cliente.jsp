<%-- 
    Document   : Actualizar_Cliente
    Created on : 04-jun-2017, 20:31:08
    Author     : Gilbert
--%>
<%@page import="sun.security.util.Password"%>
<%@page import="Proyecto.Dao.DaoCliente"%>
<%@page import="Proyecto.Bean.BeanCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.sql.*"%>
<%@page session="true"%>
<%@page import="Utils.Conexion"%>
<%
    HttpSession misesion = request.getSession();
    if (misesion.getAttribute("User") == null) {
        misesion.invalidate();
%>
<script>location.replace("AdminCatalogo.jsp");</script>
<% } else { %>

<%!
    BeanCliente BE = new BeanCliente();
    DaoCliente DE = new DaoCliente(BE);

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
<%
    String numeroid = "";
    numeroid = request.getParameter("textCedula");
    String nombreCliente = "";
    String apellidoCliente = "";
    String documentoCliente = "";
    String Telefono = "";
    String FechaNa = "";
    String Email = "";
    String Estado = "";
    String Direccion = "";
    String Ciudad = "";
    String TipoDocumento = "";
    String Rol = "Cliente";

    try {
        rs = puente.executeQuery("select * from cliente where Cedula ='" + numeroid + "'  ;");
        while (rs.next()) {

           
                 nombreCliente = rs.getString("Nombre");
                apellidoCliente = rs.getString("Apellido");
                documentoCliente = rs.getString("Cedula");
                Telefono = rs.getString("Telefono");
                FechaNa = rs.getString("Fecha_Nacimiento");
                Email = rs.getString("Email");
                Estado = rs.getString("Estado");
                Direccion = rs.getString("Direccion");
                Ciudad = rs.getString("Ciudad");
                TipoDocumento = rs.getString("Tipo_Documento");
                 


               
                
               

            
        }

    } catch (Exception e) {
        e.printStackTrace();
    }

%>





<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Actualizar Cliente</title>

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
                    <a class="navbar-brand" href="AdminCatalogo.jsp">Catalogo</a>
                </div>
                <!-- Collect the nav links, forms, and other content for toggling -->
                <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
                    <ul class="nav navbar-nav">

                        <li>
                            <a href="#">Mis Favoritos</a>
                        </li>

                        <li>
                            <a href="Editar_Estado_Cliente.jsp">Actualizar estado cliente</a>
                        </li>
                        <li>
                            <a href="Consultar_ClientesElimi.jsp">Consultar clientes</a>
                        </li>
                        <li>
                            <a href="MiperfilAdmin.jsp">Mi Perfil</a>
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
                            <button name="btnCerrarSesion" id="btnCerrarSesion" class="btn btn-danger" onclick="Cerrar()" >Cerrar Sesion</button>
                        </li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>

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
    <center>

        <div class="grid">

            <form action="ServletCliente" method="POST" class="form login">

                <!-- Form Name -->
                <center><header class="login__header">
                        <h3 class="login__title" >Editar estado del cliente</h3>
                    </header></center>

                <br>
                <label>Documento</label>
                <input class="form-control" type="text" name="textCedula"  placeholder="Documento">
                <br>
                <button class="btn btn-success">Buscar</button>
                <input type="hidden" name="opcion" value="4">
                <br>
                <br>

            </form>    


            <form action="ServletCliente" method="POST" class="form login">
                <div class="form__field" >
                    <div class="form__field" >
                        <div>
                            <label class="form__field">Tipo documento</label> 
                        </div>
                        <div class="col-md-4"  >

                            <%
                                try {

                                    rs = puente.executeQuery("Select Tipo_Documento from Cliente where Cedula ='" + numeroid + "'");
                            %>
                            <select  name="textTipoDoc"  class="form-control" style="position:absolute;left:1%;top:100%;width: 335px"  disabled   >

                                <%
                                    while (rs.next()) {

                                        String Tipo_Documento = rs.getString("Tipo_Documento");


                                %>
                                <option value="<%= Tipo_Documento%>"><%= Tipo_Documento%></option> 


                                <%
                                    }
                                } catch (Exception e) {

                                %>
                                <option>No se encontro ningun dato</option>
                                <%                                    }
                                %>                     
                            </select>
                        </div>
                    </div>
                </div>
                <br>
                <br>

                <div class="form__field">
                    <label class="form__field" >Cedula</label>  
                    <div class="form__field">
                        <input  name="textCedula" type="text" placeholder="Cedula" class="form-control input-md"  value="<%= documentoCliente%>" disabled>    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Nombre</label>  
                    <div class="form__field">
                        <input  name="textNombre" type="text" placeholder="Nombre" class="form-control input-md"  value="<%=nombreCliente%>" disabled >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Apellido</label>  
                    <div class="form__field">
                        <input  name="textApellido" type="text" placeholder="Apellido" class="form-control input-md" value="<%=apellidoCliente%>" disabled>    
                    </div>
                </div><br>

                <div class="form__field" >
                    <div class="form__field" >

                        <div class="form__field">
                            <label class="form__field" >Ciudad</label>  
                        </div>
                        <div class="form__field">
                            <%
                                try {

                                    rs = puente.executeQuery("SELECT ciudades.idCiudad , ciudades.Ciudad FROM cliente inner join ciudades on cliente.Ciudad = ciudades.IdCiudad where cliente.Cedula = '" + numeroid + "'");
                            %>
                            <select  name="textTipoDoc"  class="form-control"  disabled   >

                                <%
                                    while (rs.next()) {


                                %>
                                <option value="<%= rs.getString("ciudades.idCiudad")%>"><%= rs.getString("ciudades.Ciudad")%></option> 


                                <%
                                    }
                                } catch (Exception e) {

                                %>
                                <option>No se encontro ningun dato</option>
                                <%                                    }
                                %>                     
                            </select>
                        </div>
                    </div>
                </div>
                <br>
                <br>



                <div class="form__field">
                    <label class="form__field" >Direccion</label>  
                    <div class="form__field">
                        <input  name="textDireccion" type="text" placeholder="Direccion" value="<%=Direccion%>" class="form-control input-md" disabled>    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Email</label>  
                    <div class="form__field">
                        <input  name="textEmail" type="email" placeholder="Email"  value="<%=Email%>" class="form-control input-md" disabled>    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Fecha De Nacimiento</label>  
                    <div class="form__field">
                        <input  name="textFecha" type="date"  class="form-control input-md" value="<%= FechaNa%>" disabled>    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Telefono</label>  
                    <div class="form__field">
                        <input  name="textTelefono" type="text" placeholder="Telefono" class="form-control input-md" value="<%=Telefono%>" disabled>    
                    </div>
                </div><br>









                <div class="form__field" >
                    <div class="form__field" >
                        <div>
                            <label class="form__field">Estado</label> 
                        </div>
                        <div class="col-md-4"  >






                            <%
                                rs = puente.executeQuery("SELECT estados.idEstado, estados.Estado , cliente.Cedula FROM `estados` INNER JOIN cliente on estados.idEstado = cliente.Estado WHERE cliente.Cedula = '" + numeroid + "' ");
                                if (rs.next()) {

                            %>
                            <select  name="textEstado" id="segundo"  class="form-control" style="position:absolute;left:1%;top:100%;width: 335px" onchange="habilitar(this.value);" >

                                <option value="<%= rs.getString("estados.idEstado")%>" > <%= rs.getString("estados.Estado")%></option>



                                <%
                                    try {
                                        rs = puente.executeQuery("select * from estados where idEstado != '" + rs.getString("idEstado") + "'");
                                        while (rs.next()) {

                                %>
                                <option value="<%= rs.getString("idEstado")%>" > <%= rs.getString("Estado")%></option>
                                <%
                                    }
                                } catch (Exception e) {

                                %>


                                <option value="">No se encontro ningun dato</option>
                                <%                                    }
                                %>
                                <%
                                    }

                                %>


                            </select>
                        </div>
                    </div>
                </div>
                <br>
                <br>



                <footer class="login__footer">
                    <div class="form__field">
                        <div class="form__field">
                            <input type="hidden" name="textCedula" value="<%= numeroid%>">
                            <button  class="btn btn-success" style="position:absolute;left:47.5%;">Actualizar</button>
                            <input type="hidden" name="opcion" value="3">
                        </div>
                    </div>
                </footer>

                <script type="text/javascript"></script>

                <%
                    }

                %>

            </form>
            <br><br>

        </div>         
    </center>

    <%if (request.getAttribute("error") != null) {%>
    ${error}
    <%} else {%>
    ${exito}
    <%}%>





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
