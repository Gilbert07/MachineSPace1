
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%-- 
    Document   : CONTRASEÃAFINAL
    Created on : 17/07/2017, 08:06:37 PM
    Author     : camilo gomez
--%>

<%@page import="Proyecto.Dao.Email"%>
<%@page import="Utils.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Proyecto.Bean.BeanCliente"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>CONTRASEÑA FINAL</title>
    </head>
    <body>
        <%
            
            Conexion cnx = new Conexion();
    Connection conn = null;
    Statement puente = null;
    ResultSet rs = null;

    boolean encontrado = false;
    boolean listo = false;

    conn = cnx.ObtenerConexion();
    puente = conn.createStatement();
          
           
            Email email = new Email();
            /*String numeroid = "";
            numeroid = request.getParameter("para"); 
            String Codigo ="";
            String Cedula = "";
            */
            
            
                /*rs = puente.executeQuery("select Codigo,Cedula,Nombre from cliente where Email ='" + numeroid + "';");
                while (rs.next()) {
            
                            Codigo = rs.getString("Codigo");
                            Cedula = rs.getString("Cedula");
                                      
                    }
                */
                String para = request.getParameter("para");
                String mensaje = request.getParameter("mensaje");
                String asunto = request.getParameter("asunto");
                /* 
                     string[]direcciones = {"correo numero 1","correo numero 2","correo numero 3","correo..."}
                     boolean contraseÃ±a_final = email.enviarCorreo(de,clave,direcciones,mensaje,asunto);                       
                */
                
               boolean contrasena_final = email.enviarCorreo(para,mensaje,asunto);

                if(contrasena_final){
                 out.print("SU CORREO FUE ENVIADO CORRECTAMENTE....."+"\n\n"+"<a href='contraseña.jsp'>VOLVER A LA CONTRASEÑA</a>");
               }else{
                 out.print("SU CORREO NO FUE ENVIADO....."+"\n\n"+"<a href='contraseña.jsp'>VOLVER A LA CONTRASEÑA</a>");
                }
       %> 
    </body>
</html>