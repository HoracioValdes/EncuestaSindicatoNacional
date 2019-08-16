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
public class Area_funcion {
    private int area_funciones;
    private String descripcion;

    public Area_funcion() {
    }

    public Area_funcion(int area_funciones, String descripcion) {
        this.area_funciones = area_funciones;
        this.descripcion = descripcion;
    }

    public int getArea_funciones() {
        return area_funciones;
    }

    public void setArea_funciones(int area_funciones) {
        this.area_funciones = area_funciones;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
