
package Proyecto.Bean;




public class BeanCliente {

    public BeanCliente() {
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    public String getCedula() {
        return Cedula;
    }

    public void setCedula(String Cedula) {
        this.Cedula = Cedula;
    }

    public String getNombre() {
        return Nombre;
    }

    public void setNombre(String Nombre) {
        this.Nombre = Nombre;
    }

    public String getApellido() {
        return Apellido;
    }

    public void setApellido(String Apellido) {
        this.Apellido = Apellido;
    }

    public String getCiudad() {
        return Ciudad;
    }

    public void setCiudad(String Ciudad) {
        this.Ciudad = Ciudad;
    }

    public String getDireccion() {
        return Direccion;
    }

    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    public String getEmail() {
        return Email;
    }

    public void setEmail(String Email) {
        this.Email = Email;
    }

    public String getFecha_Nacimiento() {
        return Fecha_Nacimiento;
    }

    public void setFecha_Nacimiento(String Fecha_Nacimiento) {
        this.Fecha_Nacimiento = Fecha_Nacimiento;
    }

    public String getTelefono() {
        return Telefono;
    }

    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    public String getTipo_documento() {
        return Tipo_documento;
    }

    public void setTipo_documento(String Tipo_documento) {
        this.Tipo_documento = Tipo_documento;
    }

    public String getCodigo() {
        return Codigo;
    }

    public void setCodigo(String Codigo) {
        this.Codigo = Codigo;
    }

    public String getEstado() {
        return Estado;
    }

    public void setEstado(String Estado) {
        this.Estado = Estado;
    }

    public String getRol() {
        return Rol;
    }

    public void setRol(String Rol) {
        this.Rol = Rol;
    }

    
    

    private String Cedula;
    private String Nombre;
    private String Apellido;
    private String Ciudad;
    private String Direccion;
    private String Email;
    private String Fecha_Nacimiento;
    private String Telefono;
    private String Tipo_documento;
    private String Codigo;
    private String Estado;
    private String Rol;

    public BeanCliente(String Cedula, String Nombre, String Apellido, String Ciudad, String Direccion, String Email, String Fecha_Nacimiento, String Telefono, String Tipo_documento, String Codigo, String Estado, String Rol) {
        this.Cedula = Cedula;
        this.Nombre = Nombre;
        this.Apellido = Apellido;
        this.Ciudad = Ciudad;
        this.Direccion = Direccion;
        this.Email = Email;
        this.Fecha_Nacimiento = Fecha_Nacimiento;
        this.Telefono = Telefono;
        this.Tipo_documento = Tipo_documento;
        this.Codigo = Codigo;
        this.Estado = Estado;
        this.Rol = Rol;
    }

    

    

    
    
    
    
}
