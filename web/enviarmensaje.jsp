<%-- 
    Document   : enviarmensaje
    Created on : 06-05-2012, 02:20:03 AM
    Author     : Leonel
--%>

<%@page import="Proyecto.Dao.ChatBll"%>
<%@page import="Proyecto.Bean.BeanChat"%>
<%@page import="Proyecto.Bean.BeanCliente"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <% 
            
        HttpSession misesion = request.getSession();
         
        BeanCliente BE = new BeanCliente();
          
        BE = (BeanCliente) misesion.getAttribute("User");
        
        String mensaje = request.getParameter("mensaje");
        String user = misesion.getAttribute("User").toString();
        
        BeanChat m = new BeanChat(mensaje,user);
        
        int res = new ChatBll().ingresarMensaje(m);
        if(res==-1){
            out.println("Error al ingresar mensaje");
        }

%>
    </body>
</html>
