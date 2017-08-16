
package Proyecto.Dao;
import Proyecto.Bean.BeanCalificar;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import Utils.*;
/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/**
 *
 * @author Leonardo
 */
public class DaoCalificar extends Conexion implements InterfaceCrud {

    private Connection Con = null;
    private Statement Puente = null;
    private ResultSet Rs = null;

    public boolean Encontrado = false;
    public boolean Listo = false;

    public String IdCalificar = "";
    public String Comentario = "";
    public String Calificacion = "";

    public DaoCalificar(BeanCalificar BCalificar) {

        try {
            Con = this.ObtenerConexion();
            Puente = Con.createStatement();

            IdCalificar = BCalificar.getIdCalificar();
            Comentario = BCalificar.getComentario();
            Calificacion = BCalificar.getCalificacion();

        } catch (Exception e) {
            Logger.getLogger(DaoProducto.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
     @Override

    public boolean AgregarRegistro() {
        try {
            Con = this.ObtenerConexion();
            Puente.executeUpdate("INSERT INTO evaluacion (IdCalificar, Comentario, Calificacion) VALUES (NULL, '" + Comentario + "', NULL)");
            Listo = true;
            this.CerrarConexion();
        } catch (Exception e) {
        }
        return Listo;
    }
}

