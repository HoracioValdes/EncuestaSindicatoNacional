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
public class Estado_civil_socio {
    private int estado_civil;
    private String descripcion;

    public Estado_civil_socio() {
    }

    public Estado_civil_socio(int estado_civil, String descripcion) {
        this.estado_civil = estado_civil;
        this.descripcion = descripcion;
    }

    public int getEstado_civil() {
        return estado_civil;
    }

    public void setEstado_civil(int estado_civil) {
        this.estado_civil = estado_civil;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
