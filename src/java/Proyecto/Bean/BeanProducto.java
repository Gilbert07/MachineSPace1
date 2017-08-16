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
public class BeanProducto {

    private String CodigoProd;
    private String Nombre;
    private String Descripcion;
    private String Precio;
    private String Imagen;
    private String Marca;
    private String Categoria;
    private String Deporte;

    public String getCodigoProd() {
        return CodigoProd;
    }

    public void setCodigoProd(String CodigoProd) {
        this.CodigoProd = CodigoProd;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getDescripcion() {
        return Descripcion;
    }

    public void setDescripcion(String Descripcion) {
        this.Descripcion = Descripcion;
    }

    public String getPrecio() {
        return Precio;
    }

    public void setPrecio(String Precio) {
        this.Precio = Precio;
    }

    public String getImagen() {
        return Imagen;
    }

    public void setImagen(String Imagen) {
        this.Imagen = Imagen;
    }

    public String getMarca() {
        return Marca;
    }

    public void setMarca(String Marca) {
        this.Marca = Marca;
    }

    public String getCategoria() {
        return Categoria;
    }

    public void setCategoria(String Categoria) {
        this.Categoria = Categoria;
    }

    public String getDeporte() {
        return Deporte;
    }

    public void setDeporte(String Deporte) {
        this.Deporte = Deporte;
    }

    public BeanProducto(String CodigoProd, String Nombre, String Descripcion, String Precio, String Imagen, String Marca, String Categoria, String Deporte) {
        this.CodigoProd = CodigoProd;
        this.Nombre = Nombre;
        this.Descripcion = Descripcion;
        this.Precio = Precio;
        this.Imagen = Imagen;
        this.Marca = Marca;
        this.Categoria = Categoria;
        this.Deporte = Deporte;
    }

}
