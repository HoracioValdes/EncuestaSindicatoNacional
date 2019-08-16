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
public class Credito_actual_socio {
    private int credito_actual;
    private String descripcion;

    public Credito_actual_socio() {
    }

    public Credito_actual_socio(int credito_actual, String descripcion) {
        this.credito_actual = credito_actual;
        this.descripcion = descripcion;
    }

    public int getCredito_actual() {
        return credito_actual;
    }

    public void setCredito_actual(int credito_actual) {
        this.credito_actual = credito_actual;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }
}
