/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proyecto.Dao;

import Proyecto.Bean.BeanChat;
import Utils.Conexion;
import Utils.InterfaceCrudChat;
import java.sql.Connection;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;


public class DaoChat extends Conexion implements InterfaceCrudChat {
    
     private Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;
    private String sentencia = null;
    
    
    public boolean encontrado = false;
    public boolean listo = false;
    public boolean respuesta = false;

    public String id_cliente;
    public String mensaje;
    
    
    public DaoChat(BeanChat BUser) {

        super();

        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();

            id_cliente = BUser.getId_Cliente();
            mensaje = BUser.getMensaje();
            
            

        } catch (Exception e) {
            Logger.getLogger(DaoCliente.class.getName()).log(Level.SEVERE, null, e);
        }

    }
    
    
    @Override
    public boolean InsertarMensaje() { // opción 1
        try {

            puente.executeUpdate("INSERT INTO `chat` (`Nombre_Usuario`, `Mensaje`) VALUES ('"+id_cliente+"','"+mensaje+"');");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoCliente.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }
    
    
    public ArrayList<BeanChat> verMensajes(){
        try{
        ArrayList<BeanChat> mensajes = new ArrayList<BeanChat>();
        puente.executeQuery("select * from chat");
        
        while(rs.next()){
            BeanChat m = new BeanChat();
            m.setId_Cliente(rs.getString(1));
            m.setMensaje(rs.getString(2));
            
            mensajes.add(m);
        }
        return mensajes;
        }
        catch(SQLException e){
            return null;
        }
        
    }
    
    
    
    
    
}
