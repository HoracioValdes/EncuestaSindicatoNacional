/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.modelo;

/**
 *
 * @author Horacio
 */
public class Socio_corporativo {
    private String rut;
    private String correo_corporativo;
    private String clave;

    public Socio_corporativo() {
    }

    public Socio_corporativo(String rut, String correo_corporativo, String clave) {
        this.rut = rut;
        this.correo_corporativo = correo_corporativo;
        this.clave = clave;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getCorreo_corporativo() {
        return correo_corporativo;
    }

    public void setCorreo_corporativo(String correo_corporativo) {
        this.correo_corporativo = correo_corporativo;
    }

    public String getClave() {
        return clave;
    }

    public void setClave(String clave) {
        this.clave = clave;
    }
}
