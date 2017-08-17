<%-- 
    Document   : Actualizar_Cliente
    Created on : 04-jun-2017, 20:31:08
    Author     : Gilbert
--%>
<%@page import="Proyecto.Dao.DaoCliente"%>
<%@page import="Proyecto.Bean.BeanCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>





<%@page session="true" %> 
<%@page import="java.sql.*"%>
<%@page import="Utils.Conexion"%>


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
<%    String numeroid = "";
    numeroid = request.getParameter("textCedula");
    String nombreCliente = "";
    String apellidoCliente = "";
    String documentoCliente = "";
    String Telefono = "";
    String FechaNa = "";
    String Email = "";
    String Codigo = "";
    String Direccion = "";
    String Ciudad = "";
    String TipoDocumento = "";
    

    try {
        rs = puente.executeQuery("select * from cliente where Cedula ='" + BE.getCedula() + "';");
        while (rs.next()) {

            nombreCliente = rs.getString("Nombre");
            apellidoCliente = rs.getString("Apellido");
            documentoCliente = rs.getString("Cedula");
            Telefono = rs.getString("Telefono");
            FechaNa = rs.getString("Fecha_Nacimiento");
            Email = rs.getString("Email");
            Codigo = rs.getString("Codigo");
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
                            <button name="btnCerrarSesion" id="btnCerrarSesion" class="btn btn-danger" onclick="Cerrar()">Cerrar Sesion</button>
                        </li>

                    </ul>
                </div>
                <!-- /.navbar-collapse -->
            </div>
            <!-- /.container -->
        </nav>


    <center>

        <div class="grid">

            <form action="ServletAdmin" method="POST" class="form login">

                <!-- Form Name -->
                <center><header class="login__header">
                        <h3 class="login__title" >Editar Datos del cliente</h3>
                    </header></center>


                <div class="form__field" >
                    <div class="form__field" >
                        <div>
                            <label class="form__field">Tipo documento</label> 
                        </div>
                        <div class="col-md-4"  >
                            <select  name="textTipoDoc"  class="form-control" style="position:absolute;left:1%;top:100%;width: 335px" disabled  >
                                <%
                                    try {

                                        rs = puente.executeQuery("Select * from cliente inner join documento on cliente.Tipo_Documento = documento.idDocumento ");
                                        while (rs.next()) {
                                %>
                                <option value="<%=TipoDocumento%>"><%= rs.getString("documento.Tipo_Documento")%></option>
                                <%
                                    }
                                } catch (Exception e) {

                                %>
                                <option values="">No se encontro ningun dato</option>
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
                        <input  name="textCedula" type="text" placeholder="Cedula" class="form-control input-md"  value="<%= documentoCliente%>" disabled >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Nombre</label>  
                    <div class="form__field">
                        <input  name="textNombre" type="text" placeholder="Nombre" class="form-control input-md"  value="<%=nombreCliente%>"  >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Apellido</label>  
                    <div class="form__field">
                        <input  name="textApellido" type="text" placeholder="Apellido" class="form-control input-md" value="<%=apellidoCliente%>" >    
                    </div>
                </div><br>


                <div class="form__field" >
                    <div class="form__field" >
                        <div>
                            <label class="form__field">Ciudad</label> 
                        </div>
                        <div class="col-md-4"  >
                            
                            <% 
                                
                                rs = puente.executeQuery("Select ciudades.idCiudad , ciudades.Ciudad , cliente.Cedula from ciudades inner join cliente on ciudades.IdCiudad = cliente.Ciudad where Cedula = '"+BE.getCedula()+"'");
                                while (rs.next()) {

                               %>
                            <select  name="textCiudad"  class="form-control" style="position:absolute;left:1%;top:100%;width: 335px" >
                                
                                <option value="<%= rs.getString("ciudades.idCiudad")%>" > <%= rs.getString("ciudades.Ciudad") %></option>
                                
                                
                                <%
                                    try {

                                        rs = puente.executeQuery("SELECT * FROM `ciudades` WHERE IdCiudad != '"+ rs.getString("idCiudad") +"'");
                                        while (rs.next()) {
                                %>
                                <option value="<%= rs.getString("idCiudad")%>" > <%= rs.getString("Ciudad") %></option>
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

                <div class="form__field">
                    <label class="form__field" >Direccion</label>  
                    <div class="form__field">
                        <input  name="textDireccion" type="text" placeholder="Direccion" value="<%=Direccion%>" class="form-control input-md" >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Email</label>  
                    <div class="form__field">
                        <input  name="textEmail" type="email" placeholder="Email"  value="<%=Email%>" class="form-control input-md" >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Fecha De Nacimiento</label>  
                    <div class="form__field">
                        <input  name="textFecha" type="date"  class="form-control input-md" value="<%= FechaNa%>" >    
                    </div>
                </div><br>

                <div class="form__field">
                    <label class="form__field" >Telefono</label>  
                    <div class="form__field">
                        <input  name="textTelefono" type="text" placeholder="Telefono" class="form-control input-md" value="<%=Telefono%>" >    
                    </div>
                </div><br>
                
                 

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



                <footer class="login__footer">
                    <div class="form__field">
                        <div class="form__field">
                            
                            <button  class="btn btn-success" style="position:absolute;left:47.5%;" name="btnActualiar">Actualizar</button>
                            <input type="hidden" name="textCedula" value="<%= BE.getCedula() %>">
                            <input type="hidden" name="opcion" value="2">
                        </div>
                    </div>
                </footer>

                <%
                    }

                %>

                <script type="text/javascript"></script>
                </fieldset>


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
