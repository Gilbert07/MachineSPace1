package Proyecto.Dao;

import Proyecto.Bean.BeanCliente;
import Utils.Conexion;
import Utils.InterfaceCrudCliente;
import java.sql.*;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DaoCliente extends Conexion implements InterfaceCrudCliente {

    private Connection conn = null;
    private Statement puente = null;
    private ResultSet rs = null;
    private String sentencia = null;
    

    public boolean encontrado = false;
    public boolean listo = false;
    public boolean respuesta = false;

    public String Cedula;
    public String Nombre;
    public String Apellido;
    public String Ciudad;
    public String Direccion;
    public String Email;
    public String Fecha_Nacimiento;
    public String Telefono;
  
    public String Tipo_documento;
    public String Codigo;
    public String Estado;
    public String Rol;
    

    public DaoCliente(BeanCliente BUser) {

        super();

        try {
            conn = this.ObtenerConexion();
            puente = conn.createStatement();

            Cedula = BUser.getCedula();
            Nombre = BUser.getNombre();
            Apellido = BUser.getApellido();
            Ciudad = BUser.getCiudad();
            Direccion = BUser.getDireccion();
            Email = BUser.getEmail();
            Fecha_Nacimiento = BUser.getFecha_Nacimiento();
            Telefono = BUser.getTelefono();
            Tipo_documento = BUser.getTipo_documento();
            Codigo = BUser.getCodigo();
            Estado = BUser.getEstado();
            Rol = BUser.getRol();
            

        } catch (Exception e) {
            Logger.getLogger(DaoCliente.class.getName()).log(Level.SEVERE, null, e);
        }

    }

    
    //INSERTAR CLIENTES
    @Override
    public boolean AgregarRegistroCliente() { // opción 1
        try {

            puente.executeUpdate("INSERT INTO `cliente` (`Tipo_Documento`, `Cedula`, `Nombre`, `Apellido`, `Telefono`, `Fecha_Nacimiento`, `Email`, `Estado`, `Direccion`, `Ciudad`, `Codigo` , `Rol`) VALUES ('"+Tipo_documento+"', '"+Cedula+"', '"+Nombre+"', '"+Apellido+"', '"+Telefono+"', '"+Fecha_Nacimiento+"', '"+Email+"', '1', '"+Direccion+"', '"+Ciudad+"', '"+Codigo+"','Cliente');");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoCliente.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }
    
    
    //ACTUALIZAR CLIENTES
    @Override
    public boolean ActualizarCliente() {
        try {
            puente.executeUpdate("UPDATE cliente SET  Estado = '"+Estado+"' where Cedula = '"+Cedula+"' ;");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoCliente.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

    //CONSULTAR CLIENTES
    
   public static BeanCliente FiltrarEstu(String Numero_identificacion) // opcion 3  
    {
        BeanCliente BEstu = null;
        try {

            Conexion conex = new Conexion();
            Connection conn = conex.ObtenerConexion();
            Statement puente = conn.createStatement();
            ResultSet rs = puente.executeQuery("SELECT * FROM cliente WHERE Cedula ='" + Numero_identificacion + "'");

            while (rs.next()) {
                BEstu = new BeanCliente(Numero_identificacion, rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10) , rs.getString(11) ,rs.getString(12) );
            }
            rs.close();
            puente.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return BEstu;
    }
   
   
   //ACTUALIZAR DATOS DEL CLIENTE
   @Override
    public boolean ActualizarDatosCliente() {
        try {
            puente.executeUpdate("UPDATE `cliente` SET `Nombre` = '"+Nombre+"', `Apellido` = '"+Apellido+"', `Telefono` = '"+Telefono+"', `Fecha_Nacimiento` = '"+Fecha_Nacimiento+"', `Email` = '"+Email+"', `Direccion` = '"+Direccion+"', `Ciudad` = '"+Ciudad+"' WHERE `cliente`.`Cedula` =  '"+Cedula+"';");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoCliente.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo;
    }

   // VALIDAR LOGIN -------------------------------------------------
         
        public BeanCliente Validar(String Doc_User, String Password) {
        sentencia = " select Nombre , Apellido , Email , Codigo , Rol , Cedula , Estado from cliente where Email = '"+Doc_User+"' and Codigo = '"+Password+"' and Estado = 1 ";
        BeanCliente BCliente = new BeanCliente();
        try {
            rs=puente.executeQuery(sentencia);

            while (rs.next()) {

                BCliente.setRol(rs.getString("Rol"));
                BCliente.setCedula(rs.getString("Cedula"));
                BCliente.setNombre(rs.getString("Nombre"));
                BCliente.setApellido(rs.getString("Apellido"));
                
                
                

            }

        } catch (Exception e) {
            Logger.getLogger(DaoCliente.class.getName()).log(Level.SEVERE, null, e);
        }
        return BCliente;
    }
   
     //ELIMINAR CLIENTE
    @Override
    public boolean EliminarCliente() {
        try {
            puente.executeUpdate("DELETE FROM `cliente` WHERE `cliente`.`Cedula` = '"+Cedula+"'");
            listo = true;
        } catch (Exception e) {
            Logger.getLogger(DaoProducto.class.getName()).log(Level.SEVERE, null, e);
        }
        return listo; 
    }
    
    
    //CONSULTAR CLIENTES
    
     public static BeanCliente ConsultarCliente(String Numero_identificacion) // opcion 3  
    {
        BeanCliente BEstu = null;
        try {

            Conexion conex = new Conexion();
            Connection conn = conex.ObtenerConexion();
            Statement puente = conn.createStatement();
            ResultSet rs = puente.executeQuery("SELECT * FROM cliente WHERE Cedula ='" + Numero_identificacion + "'");

            while (rs.next()) {
                BEstu = new BeanCliente(Numero_identificacion, rs.getString(2), rs.getString(3), rs.getString(4), rs.getString(5), rs.getString(6), rs.getString(7), rs.getString(8), rs.getString(9), rs.getString(10) , rs.getString(11) ,rs.getString(12) );
            }
            rs.close();
            puente.close();

        } catch (Exception e) {
            e.printStackTrace();
        }
        return BEstu;
    }
      
}
