


<%@page contentType="text/html" pageEncoding="UTF-8"%>


<%@page import="Proyecto.Bean.BeanCliente"%>



<!DOCTYPE HTML>
<html>
<head>
<meta charset="utf-8">
<title>Chat Messenger</title>
<<script type="text/javascript" src="js/jquery-1.7.1.min.js"></script>
<script type="text/javascript" src="js/jquery-ui-1.8.19.custom.min.js"></script>
<script type="text/javascript" src="js/jquery.scrollTo.js"></script>
<link href="css/jquery-ui-1.8.19.custom.css" rel="stylesheet" type="text/css">
<script type="text/javascript" src="js/funciones.js"></script>
<link href="style.css" rel="stylesheet" type="text/css">

<!-- Bootstrap Core CSS -->
        <link href="css/bootstrap.min.css" rel="stylesheet">

        <!-- Custom CSS -->
        <link href="css/shop-homepage.css" rel="stylesheet">




</head>
<%
    
HttpSession misesion = request.getSession();
    if (misesion.getAttribute("User") == null) {%>
<script>location.replace("index.jsp");</script>
<% }else{
    

%> 

<%!
    
    BeanCliente BE = new BeanCliente();

%>
<%
    BE = (BeanCliente) misesion.getAttribute("User");
%>
<body>
    
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
                    <a class="navbar-brand" href="Catalogo.jsp">Catalogo</a>
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
    
<div id="container">
	<header>
           Bienvenido <%=BE.getNombre() + " "%><%=BE.getApellido() + " "%><%=BE.getRol()%> <br>
            <% if(!request.getSession().getAttribute("User").equals("Invitado")){
                out.println("<a href='salir.jsp' style='color:red; font-size:14px;'>Salir</a>");
                           }
            
          
            
            %>
    </header>
    
    
    <section id="chat" class="limpiar">
    	<section id="ventanaConversacion">
            <h2>Conversación Chat</h2>
            <div id="ventanaConversacionInt">
            
       		
            </div>
        </section>
        <section id="ventanaUsuarios">
        	<h4>Usuarios Online</h4>
                <div id="usersOnline">
                    
                </div>
                </section>
    </section>
    
    <form action="" method="POST">
    <section id="enviarMensaje">
        <% if(!misesion.getAttribute("User").equals("")){ %>
    <textarea  id="txtMensaje" required placeholder="Escriba su mensaje..."></textarea>
    <div id="enviarMSJ">Enviar!</div>
    <% }else{ %>
    <textarea  id="txtMensaje" disabled required placeholder="Usted no puede enviar mensajes..."></textarea>
    <div id="noEnviar">Enviar!</div>
    <% } %>
    </section>
    
  
    
    </form>
    <footer>
    
    </footer>
    
     
</div>
    <%
        }
%>



</body>
</html>

