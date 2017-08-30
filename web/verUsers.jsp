<%-- 
    Document   : verUsers
    Created on : 09-05-2012, 09:08:48 PM
    Author     : Leonel
--%>


<%@page import="Proyecto.Bean.BeanCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
    </head>
    
    <body>
        <%
                String img = "<img src=\"img/on.png\" />";
                HttpSession misesion = request.getSession();
                BeanCliente BE = new BeanCliente();
                BE = (BeanCliente) misesion.getAttribute("User");
                if(!request.getSession().getAttribute("User").equals("Invitado")){
                    
                        out.println(img+" <b>"+BE.getNombre()+"</b><br>");
                    
                }
                               else{
                    out.println("<b>No hay usuarios conectados.</b>");
                               }
                %>
    </body>
</html>
