package models;

/**
 *
 * @author Vanesa
 */
public class Comprador {
    private int id_daco;
    private String Razon_social;
    private String Direccion;
    private String Telefono;
    private String Correo_Electronico;

    /**
     *
     * @param id_daco
     * @param Razon_social
     * @param Direccion
     * @param Telefono
     * @param Correo_Electronico
     */
    public Comprador(int id_daco, String Razon_social, String Direccion, String Telefono, String Correo_Electronico) {
        this.id_daco = id_daco;
        this.Razon_social = Razon_social;
        this.Direccion = Direccion;
        this.Telefono = Telefono;
        this.Correo_Electronico = Correo_Electronico;
    }

    /**
     *
     */
    public Comprador() {
    }

    /**
     *
     * @return
     */
    public String getRazon_social() {
        return Razon_social;
    }

    /**
     *
     * @param Razon_social
     */
    public void setRazon_social(String Razon_social) {
        this.Razon_social = Razon_social;
    }

    /**
     *
     * @return
     */
    public String getDireccion() {
        return Direccion;
    }

    /**
     *
     * @param Direccion
     */
    public void setDireccion(String Direccion) {
        this.Direccion = Direccion;
    }

    /**
     *
     * @return
     */
    public String getTelefono() {
        return Telefono;
    }

    /**
     *
     * @param Telefono
     */
    public void setTelefono(String Telefono) {
        this.Telefono = Telefono;
    }

    /**
     *
     * @return
     */
    public String getCorreo_Electronico() {
        return Correo_Electronico;
    }

    /**
     *
     * @param Correo_Electronico
     */
    public void setCorreo_Electronico(String Correo_Electronico) {
        this.Correo_Electronico = Correo_Electronico;
    }

    /**
     *
     * @return
     */
    public int getid_daco() {
        return id_daco;
    }

    /**
     *
     * @param id_daco
     */
    public void setid_daco(int id_daco) {
        this.id_daco = id_daco;
    }  
}