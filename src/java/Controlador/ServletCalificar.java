/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controlador;

import Proyecto.Bean.BeanCalificar;
import Proyecto.Dao.DaoCalificar;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Leonardo
 */
@WebServlet(name = "ServletCalificar", urlPatterns = {"/ServletCalificar"})
public class ServletCalificar extends HttpServlet {

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

        
     String IdCalifacar=request.getParameter("");
     String Comentario= request.getParameter("Comentario");
     String Calificacion= request.getParameter("Calificacion");
 



        BeanCalificar BCalificar = new BeanCalificar(IdCalifacar, Comentario, Calificacion);
        DaoCalificar DC= new DaoCalificar(BCalificar);
        
        

        switch (opcion) {
            case 1: //Agregar Registro
                if (DC.AgregarRegistro()) {
                    request.setAttribute("exito", "<script> alert('Gracias Por Tu Comentario!!')</script>");

                } else {
                    request.setAttribute("error", "<script> alert('Lo Sentimos No Se Ha Podido Punlicar Intenta Nuevamente')</script>");
                }
                request.getRequestDispatcher("Producto.jsp").forward(request, response);
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
