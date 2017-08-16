/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proyecto.Dao;
import Proyecto.Bean.BeanProducto;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;
import Utils.*;

/**
 *
 * @author Leonardo
 */
public class DaoProducto extends Conexion implements InterfaceCrud {
    
    private Connection Con = null;
    private Statement Puente = null;
    private ResultSet Rs = null;

    public boolean Encontrado = false;
    public boolean Listo = false;
    
    
    public String CodigoProd = "";
    public String Nombre = "";
    public String Descripcion = "";
    public String Precio = "";
    public String Imagen = "";
    public String Marca = "";
    public String Categoria = "";
    public String Deporte = "";
    
    public DaoProducto (BeanProducto BProducto){
    
        super();

         

        try {
            Con = this.ObtenerConexion();
            Puente = Con.createStatement();
            
            CodigoProd = BProducto.getCodigoProd();
            Nombre = BProducto.getNombre();
            Descripcion = BProducto.getDescripcion();
            Precio = BProducto.getPrecio();
            Imagen = BProducto.getImagen();
            Marca = BProducto.getMarca();
            Categoria = BProducto.getMarca();
            Deporte = BProducto.getMarca();
            
            
           

        } catch (Exception e) {
            Logger.getLogger(DaoProducto.class.getName()).log(Level.SEVERE, null, e);
        }
    }
    
     @Override

    public boolean AgregarRegistro() {
        try {
            Con = this.ObtenerConexion();
            Puente.executeUpdate("INSERT INTO producto (CodigoProd, Nombre, Descripcion, Precio, Imagen, Marca, Categoria, Deporte) VALUES (NULL, '"+Nombre+"', '"+Descripcion+"', '"+Precio+"', '"+Imagen+"', '"+Marca+"', '"+Categoria+"', '"+Deporte+"')");
            Listo = true;
            this.CerrarConexion();
        } catch (Exception e) {
        }
        return Listo;
    }
}
