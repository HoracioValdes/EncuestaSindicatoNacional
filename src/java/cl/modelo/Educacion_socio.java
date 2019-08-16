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
public class Educacion_socio {
    private int educacion;
    private String descripcion;

    public Educacion_socio() {
    }

    public Educacion_socio(int educacion, String descripcion) {
        this.educacion = educacion;
        this.descripcion = descripcion;
    }

    public int getEducacion() {
        return educacion;
    }

    public void setEducacion(int educacion) {
        this.educacion = educacion;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
