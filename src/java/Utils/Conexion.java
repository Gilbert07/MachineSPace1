/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Utils;

import java.sql.*;

/**
 *
 * @author Leonardo
 */
public class Conexion {

    public static Connection getConexion() {
            Connection Con=null;
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyect","root","");
            System.out.println("Conexion OK");
            
        } catch (Exception e) {
        System.out.println("Conexion Null: "+e);
        }
        return Con;
    }  
        public Connection ObtenerConexion() {
            Connection Con=null;
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyect","root","");
            System.out.println("Conexion OK");
            
        } catch (Exception e) {
        System.out.println("Conexion Null: "+e);
        }
        return Con;
    }
        public Connection CerrarConexion() throws SQLException{
                Connection Con=null;
        
        try {
            
            Class.forName("com.mysql.jdbc.Driver");
            Con=DriverManager.getConnection("jdbc:mysql://localhost:3306/proyect","root","");
            System.out.println("Conexion OK");
            
        } catch (Exception e) {
        System.out.println("Conexion Null: "+e);
        }
        Con.close();
        Con=null;
        return Con;
    }

        public static void main(String[] args) {
        Conexion.getConexion();
    }
    }
