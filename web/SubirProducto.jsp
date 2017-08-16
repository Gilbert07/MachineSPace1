<%-- 
    Document   : subirprograma
    Created on : 22-jul-2017, 11:44:15
    Author     : Samuel Cubillos
--%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="Utils.Conexion"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.util.*" %>
<%@ page import="org.apache.commons.fileupload.*" %>
<%@ page import="org.apache.commons.fileupload.disk.*" %>
<%@ page import="org.apache.commons.fileupload.servlet.*" %>
<%@ page import="org.apache.commons.io.*" %>
<%@ page import="java.io.*" %>

<%

    Conexion cnx = new Conexion();

    Connection con = null;
    Statement puente = null;
    ResultSet rs = null;

    boolean mensaje = false;

    con = cnx.ObtenerConexion();
    puente = con.createStatement();
%>

<%
    String[] formulario = new String[8];
    int contador = 0;
    String archivo = "";

    // tabla = request.getParameter("texttabla");
    /*FileItemFactory es una interfaz para crear FileItem*/
    FileItemFactory file_factory = new DiskFileItemFactory();

    /*ServletFileUpload esta clase convierte los input file a FileItem*/
    ServletFileUpload servlet_up = new ServletFileUpload(file_factory);
    /*sacando los FileItem del ServletFileUpload en una lista */
    List items = servlet_up.parseRequest(request);

    for (int i = 0; i < items.size(); i++) {
        /*FileItem representa un archivo en memoria que puede ser pasado al disco duro*/
        FileItem item = (FileItem) items.get(i);
        /*item.isFormField() false=input file; true=text field*/
        if (item.isFormField()) {
            formulario[contador] = item.getString();
            contador = contador + 1;
        } else {
            /*cual sera la ruta al archivo en el servidor*/
            File archivo_server = new File("C:/Users/Leonardo/Documents/NetBeansProjects/ProyectoFinal/web/IMG/" + item.getName());
            /*y lo escribimos en el servidor*/
            item.write(archivo_server);
            archivo = item.getName();
            out.print("Ubicacion --> " + archivo);
            out.print("<br> Tipo --> " + item.getContentType());
            out.print("<br> tamaño --> " + (item.getSize() / 1240) + "KB");
            out.print("<br>");
        }
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title> 
       <script>
            window.onload = function () {
                // Una vez cargada la página, el formulario se enviara automáticamente.
                document.forms["programArchi"].submit();
            }
        </script>
    </head>
    <body>
        <form name="programArchi" action="ServletProducto" method="post" >
        <table>
            <tr>
            <input type="hidden" name="textOpcion" value="1"/>
            <td><input type="hidden" name="Nombre" value="<%=formulario[0]%>"></td>
            <td><input type="hidden" name="Descripcion" value="<%=formulario[1]%>"></td>
            <td><input type="hidden" name="Precio" value="<%=formulario[2]%>"></td>
            <td><input type="hidden" name="Imagen" value="<%=archivo%>"></td>
            <td><input type="hidden" name="Marca" value="<%=formulario[3]%>"></td>
            <td><input type="hidden" name="Categoria" value="<%=formulario[4]%>"></td>
            <td><input type="hidden" name="Deporte" value="<%=formulario[5]%>"></td>


        </tr>
    </table>
        </form>
</body>
</html>
