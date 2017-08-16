<%-- 
    Document   : contraseña
    Created on : 8/06/2017, 12:12:04 AM
    Author     : camilo gomez
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Proyecto.Dao.DaoCliente"%>
<%@page import="Proyecto.Bean.BeanCliente"%>


<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <center><img src="Imagenes/Machine Space.PNG"> </center>  
        <title>cambio de contraseña</title>
    </head>
    <body>
     <center>
         
        <h2> Cambio de  contraseña</h2>
        
        <form action="contraseña final.jsp" method="post">
            <table>
                <tr>
                    <td>INGRESE SU CORREO: </td> 
                    <td><input type="text" name="para"/></td>
                                 </tr>
                  <tr>         
                      
                       
                    <td><input type="submit" value="ENVIAR CORREO"/></td>
                   </tr>  
            </table>
         </center>   
         </form>
                
    </body>
</html>