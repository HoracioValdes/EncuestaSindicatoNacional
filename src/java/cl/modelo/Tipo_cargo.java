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
public class Tipo_cargo {
    private int cargo_trabajo;
    private String descripcion;

    public Tipo_cargo() {
    }

    public Tipo_cargo(int cargo_trabajo, String descripcion) {
        this.cargo_trabajo = cargo_trabajo;
        this.descripcion = descripcion;
    }

    public int getCargo_trabajo() {
        return cargo_trabajo;
    }

    public void setCargo_trabajo(int cargo_trabajo) {
        this.cargo_trabajo = cargo_trabajo;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
