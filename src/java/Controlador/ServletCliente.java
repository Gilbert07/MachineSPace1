/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Proyecto.Bean.BeanCliente;
import Proyecto.Dao.DaoCliente;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "Servletcliente", urlPatterns = {"/ServletCliente"})
public class ServletCliente extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        int opcion = Integer.parseInt(request.getParameter("opcion"));

        String Cedula = request.getParameter("textCedula");
        String Nombre = request.getParameter("textNombre");
        String Apellido = request.getParameter("textApellido");
        String Telefono = request.getParameter("textTelefono");
        String Fecha_Nacimiento = request.getParameter("textFecha"); 
        String Email = request.getParameter("textEmail");   
        String Ciudad = request.getParameter("textCiudad");
        String Direccion = request.getParameter("textDireccion");
        String TipoDocumento = request.getParameter("textTipoDoc");
        String Codigo = request.getParameter("textCodigo");
        String Estado = request.getParameter("textEstado");
        String Rol = request.getParameter("textRol");
        
        
        

        BeanCliente BCliente = new BeanCliente(Cedula, Nombre, Apellido, Ciudad, Direccion, Email, Fecha_Nacimiento, Telefono, TipoDocumento, Codigo , Estado,Rol);
        DaoCliente Dcliente = new DaoCliente(BCliente);

        switch (opcion) {
                case 1://Agregar Registro
                if (Dcliente.AgregarRegistroCliente()) {
                    request.setAttribute("exito", "<script> alert('Se registró correctamente')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('NO se ha podido registrar , Puede ser que ese usuario ya este registrado')</script>");
                }
                request.getRequestDispatcher("Registrarse.jsp").forward(request, response);
                break;
                case 2: //Actualizar Datos Cliente

                if (Dcliente.ActualizarDatosCliente()) {
                    request.setAttribute("exito", "<script> alert('Se actualizaron correctamente los datos!!')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('Error, no se ha podido actualizar')</script>");
                }
                request.getRequestDispatcher("Editar_Datos_Cliente.jsp").forward(request, response);
                break;
                case 3: //Actualizar Cliente

                if (Dcliente.ActualizarCliente()) {
                    request.setAttribute("exito", "<script> alert('Se actualizaron correctamente los datos!!')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('Error, no se ha podido actualizar')</script>");
                }
                request.getRequestDispatcher("Editar_Estado_Cliente.jsp").forward(request, response);
                break;
                    
                case 4: //Consultar Registro
                
                BeanCliente bestudiante = DaoCliente.FiltrarEstu(Cedula);
                if (bestudiante != null) {
                    
                    request.setAttribute("bestudiante", bestudiante);
                    
                }
                else{
                    
                    request.setAttribute("error", "<script> alert('Error, no se encontro el cliente')</script>");
                    
                }    
                request.getRequestDispatcher("Editar_Estado_Cliente.jsp").forward(request, response);
                break;
                case 5: //Consultar Registro para eliminar
                
                BeanCliente bestudiante1 = DaoCliente.ConsultarCliente(Cedula);
                if (bestudiante1 != null) {
                    
                    request.setAttribute("bestudiante", bestudiante1);
                    
                }
                else{
                    
                    request.setAttribute("error", "<script> alert('Error, no se encontro el cliente')</script>");
                    
                }    
                request.getRequestDispatcher("Eliminar_Clientes.jsp").forward(request, response);
                break;
                case 6://Eliminar cliente
                if (Dcliente.EliminarCliente()) {
                    request.setAttribute("exito", "<script> alert('Se Elimino correctamente el cliente: "+Nombre+", con cedula: "+Cedula+" ')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('NO se ha podido eliminar')</script>");
                }
                request.getRequestDispatcher("Consultar_ClientesElimi.jsp").forward(request, response);
                break;
               
        }
        

    }

// <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
