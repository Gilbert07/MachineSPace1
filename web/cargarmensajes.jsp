<%-- 
    Document   : cargarmensajes
    Created on : 06-05-2012, 02:35:22 AM
    Author     : Leonel
--%>

<%@page import="Proyecto.Dao.ChatBll"%>
<%@page import="Proyecto.Bean.BeanChat"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        
    </head>
    <body>
        <% 
        
        for(BeanChat m : new ChatBll().verMensajes()){
            out.println("<b>"+m.getId_Cliente()+":</b> "+ m.getMensaje()+"<br><hr>");
        }

%>
<br><br>
<div id="ultimo"></div>
    </body>
</html>
