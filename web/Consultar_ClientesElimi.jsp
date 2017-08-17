<%-- 
    Document   : Consultar_AllClientes
    Created on : 01-jun-2017, 0:11:03
    Author     : Gilbert
--%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.logging.Level"%>
<%@page import="java.util.logging.Logger"%>
<%@page import="Utils.Conexion"%>
<%@page import="Proyecto.Dao.*"%>
<%@page import="Proyecto.Bean.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta name="description" content="">
        <meta name="author" content="">
        <script src="js/BuscadorTabla.js" type="text/javascript"></script>
        <link href="css/tabla.css" media="screen" rel="stylesheet" type="text/css" />

        <title>Consultar y eliminar cliente</title>

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

        <%Utils.Conexion con = new Utils.Conexion();
            Connection cn = con.ObtenerConexion();
        %>









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
                            <a href="MiperfilAdmin.jsp">Mi perfil</a>
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


              


    
        <a class="navbar-brand" >CONSULTA DE CLIENTES </a>
      
    
    <br>
    <br>
    <br>
    
   
    <label>Buscar: </label>
    <input id="searchTerm" type="text" onkeyup="doSearch()" />
    
    <br>
    <br>

    <table class="footable" id="datos" >


        <thead>

        <th>
            <label>Tipo Documento</label>
        </th>
        <th>
            <label>Cedula</label>
        </th>
        <th>
            <label>Nombre</label>
        </th>
        <th>
            <label>Apellido</label>
        </th>
        <th>
            <label>Telefono</label>
        </th>
        <th>
            <label>Fecha_Nacimiento</label>
        </th>
        <th>
            <label>Email</label>
        </th>
        <th>
            <label>Estado</label>
        </th>
        <th>
            <label>Ciudad</label>
        </th>
        <th>
            <label>Direccion</label>
        </th>
        
        <th>
            <label>Rol</label>
        </th>


    </thead>           
    <tbody>    
        <%
            try {

                rs = puente.executeQuery("SELECT * FROM cliente INNER JOIN ciudades on cliente.Ciudad = ciudades.IdCiudad INNER JOIN estados on cliente.Estado = estados.idEstado INNER JOIN documento on cliente.Tipo_Documento = documento.idDocumento  ");

                while (rs.next()) {

        %>




        <tr>

            <td>
                <label><% out.println(rs.getString("documento.Tipo_Documento")); %></label>
            </td>


            <td>
                <label><% out.println(rs.getString("cliente.Cedula")); %></label>
            </td>
            <td>
                <label><% out.println(rs.getString("cliente.Nombre")); %></label>
            </td>
            <td>
                <label><% out.println(rs.getString("cliente.Apellido")); %></label>
            </td>
            <td>
                <label><% out.println(rs.getString("cliente.Telefono")); %></label>
            </td>
            <td>
                <label><% out.println(rs.getString("cliente.Fecha_Nacimiento")); %></label>
            </td>
            <td>
                <label><% out.println(rs.getString("cliente.Email")); %></label>
            </td>
            <td>
                <label><% out.println(rs.getString("estados.Estado")); %></label>
            </td>
            <td>
                <label><% out.println(rs.getString("ciudades.Ciudad")); %></label>
            </td>
            <td>
                <label><% out.println(rs.getString("cliente.Direccion")); %></label>
            </td>
            <td>
                <label><% out.println(rs.getString("cliente.Rol")); %></label>

            </td>


        </tr>
        <%
                }

            } catch (Exception e) {
                e.printStackTrace();
            }
        %>
    </tbody>
</table>


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




<%
    }

%>



</body>
</html>
