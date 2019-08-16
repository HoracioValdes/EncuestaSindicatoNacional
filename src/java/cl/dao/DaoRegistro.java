/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package cl.dao;

import cl.modelo.Socio_corporativo;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Horacio
 */
public class DaoRegistro extends Conectar{
    
    public int registrarSocio_corporativo(Socio_corporativo socio_corporativo) {
        int cantFilas = 0;

        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            //Se genera sentecia select
            String strSQL = "INSERT INTO SOCIO VALUES(?,?,?)";
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //Definir el valor de los parámetros ("?")
            ps.setString(1, socio_corporativo.getRut());
            ps.setString(2, socio_corporativo.getCorreo_corporativo());
            ps.setString(3, socio_corporativo.getClave());
            cantFilas = ps.executeUpdate();
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoRegistro.class.getName()).log(Level.SEVERE, "Problema registro del Driver", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoRegistro.class.getName()).log(Level.SEVERE, "Error SQL.", ex);
        }
        return cantFilas;
    }
    
    public boolean existenciaPrevia(String rut_socio) {
        boolean existencia = false;
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            //Se genera sentecia select
            String strSQL = "SELECT * FROM SOCIO WHERE RUT = '" + rut_socio + "'";
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                existencia = true;
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoRegistro.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoRegistro.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return existencia;
    }
    
    public ArrayList<Socio_corporativo> listarSocios_corporativos() {
        ArrayList<Socio_corporativo> lstSocios = new ArrayList();
        Socio_corporativo socio_corporativo;
        try {
            //Recuperar una conexión.
            Connection con = this.getConexion();
            //Se genera sentecia select
            String strSQL = "SELECT * FROM SOCIO";
            //Se prepara la consulta.
            PreparedStatement ps = con.prepareStatement(strSQL);
            //ejecutar la consulta.
            ResultSet res = ps.executeQuery();
            //Se recorre el ResultSet.
            while (res.next()) {
                socio_corporativo = new Socio_corporativo();
                socio_corporativo.setRut(res.getString("RUT"));
                socio_corporativo.setCorreo_corporativo(res.getString("CORREO"));
                socio_corporativo.setClave(res.getString("CLAVE"));
                //Se agrega el socio a la lista.
                lstSocios.add(socio_corporativo);
            }
            con.close();
        } catch (ClassNotFoundException ex) {
            Logger.getLogger(DaoRegistro.class.getName())
                    .log(Level.SEVERE, "Error en registro del Driver.", ex);
        } catch (SQLException ex) {
            Logger.getLogger(DaoRegistro.class.getName())
                    .log(Level.SEVERE, "Error en SQL.", ex);
        }
        return lstSocios;
    }
    
}
