/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proyecto.Bean;

/**
 *
 * @author Gilbert
 */
public class BeanChat {

    public BeanChat() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getId_Cliente() {
        return Id_Cliente;
    }

    public void setId_Cliente(String Id_Cliente) {
        this.Id_Cliente = Id_Cliente;
    }

    public String getMensaje() {
        return Mensaje;
    }

    public void setMensaje(String Mensaje) {
        this.Mensaje = Mensaje;
    }

    public BeanChat(String Id_Cliente, String Mensaje) {
        this.Id_Cliente = Id_Cliente;
        this.Mensaje = Mensaje;
    }
    
    
    private String Id_Cliente;
    private String Mensaje;
    
}
