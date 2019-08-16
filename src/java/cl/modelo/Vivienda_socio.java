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
public class Vivienda_socio {
    private int vivienda;
    private String descripcion;

    public Vivienda_socio() {
    }

    public Vivienda_socio(int vivienda, String descripcion) {
        this.vivienda = vivienda;
        this.descripcion = descripcion;
    }

    public int getVivienda() {
        return vivienda;
    }

    public void setVivienda(int vivienda) {
        this.vivienda = vivienda;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
