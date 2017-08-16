/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Proyecto.Bean;

/**
 *
 * @author Leonardo
 */
public class BeanCalificar {

    private String IdCalificar;
    private String Comentario;
    private String Calificacion;

    public BeanCalificar(String IdCalificar, String Comentario, String Calificacion) {
        this.IdCalificar = IdCalificar;
        this.Comentario = Comentario;
        this.Calificacion = Calificacion;
    }

    public String getIdCalificar() {
        return IdCalificar;
    }

    public void setIdCalificar(String IdCalificar) {
        this.IdCalificar = IdCalificar;
    }

    public String getComentario() {
        return Comentario;
    }

    public void setComentario(String Comentario) {
        this.Comentario = Comentario;
    }

    public String getCalificacion() {
        return Calificacion;
    }

    public void setCalificacion(String Calificacion) {
        this.Calificacion = Calificacion;
    }

}
