/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proyecto.Dao;

import Proyecto.Bean.BeanChat;
import Utils.Conexion;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import Proyecto.Bean.BeanCliente;
import Proyecto.Bean.BeanChat;

/**
 *
 * @author Gilbert
 */
public class ChatBll extends Conexion {
    
    private Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;
    private String sentencia = null;
    
    
    public boolean encontrado = false;
    public boolean listo = false;
    public boolean respuesta = false;

    
     
      public int registrarUsuario(BeanCliente u){
       for(BeanCliente user:this.beanClientes()){
           if(user.getEmail().toUpperCase().equals(u.getEmail().toUpperCase())){
               return -2;
           }
       }
       return registrarUsuario(u);
   }
   
   public int ingresarMensaje(BeanChat m){
       return ingresarMensaje(m);
   }
   
    public ArrayList<BeanCliente> beanClientes(){
       return beanClientes();
   }
   
   
   
   public ArrayList<BeanChat> verMensajes(){
       return verMensajes();
   }
   
   
     
     
    
    
}
