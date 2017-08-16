/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import Proyecto.Bean.BeanProducto;
import Proyecto.Dao.DaoProducto;

/**
 *
 * @author Leonardo
 */
@WebServlet(name = "ServletProducto", urlPatterns = {"/ServletProducto"})
public class ServletProducto extends HttpServlet {

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

        int opcion = Integer.parseInt(request.getParameter("textOpcion"));

        
     String CodigoProd=request.getParameter("");
     String Nombre= request.getParameter("Nombre");
     String Descripcion= request.getParameter("Descripcion");
     String Precio= request.getParameter("Precio");
     String Imagen= request.getParameter("Imagen");
     String Marca= request.getParameter("Marca");
     String Categoria= request.getParameter("Categoria");
     String Deporte= request.getParameter("Deporte");



        BeanProducto BProducto = new BeanProducto(CodigoProd, Nombre, Descripcion, Precio, Imagen, Marca, Categoria, Deporte);
        DaoProducto DP= new DaoProducto(BProducto);
        
        

        switch (opcion) {
            case 1: //Agregar Registro
                if (DP.AgregarRegistro()) {
                    request.setAttribute("exito", "<script> alert('Se Registró Correctamente!!)</script> ");

                } else {
                    request.setAttribute("error", "<script> alert('No Se Ha Podido Registrar )</script>");
                }
                request.getRequestDispatcher("Publicar.jsp").forward(request, response);
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