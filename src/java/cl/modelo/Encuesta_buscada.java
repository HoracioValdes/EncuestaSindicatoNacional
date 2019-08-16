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
public class Encuesta_buscada {

    private String rut;
    private String nombre;
    private String sexo;
    private String centro_medico;
    private String cambio_centro;
    private String comuna;
    private String fecha_nacimiento;
    private String educacion;
    private String estudio_actual;
    private String carrera_institucion;
    private String estado_civil;
    private int personas_hogar;
    private int personas_ocupadas;
    private int personas_buscando;
    private String personas_problema_salud;
    private int personas_problema_salud_numero;
    private int personas_carga;
    private String proveedor_principal;
    private String vivienda;
    private String cargo_trabajo;
    private String polifuncionalidad;
    private String area_funciones;
    private int anio_antiguedad;
    private int mes_antiguedad;
    private int horas_jornada;
    private String horas_extra_habiles;
    private String horas_extra_sabado;
    private String horas_extra_domingo;
    private int turnos;
    private int tiempo_traslado_horas;
    private int tiempo_traslado_minutos;
    private String solicitud_traslado_centro;
    private int numero_solicitud;
    private String otorgamiento_traslado_centro;
    private int numero_otorgamiento;
    private String prestamo_marzo;
    private String servicio_dental;
    private String otro_servicio_dental;
    private String bono_nps;
    private String criterios_bono_nps;
    private String criterios_bono_produccion;
    private String tiempo_acreditacion;
    private String estres_acreditacion;
    private String problema_funciones_acreditacion;
    private String situacion_catastrofica;
    private String retiro_voluntario;
    private String salida_social;
    private String satisfaccion_empresa;
    private String fiesta;
    private String valoracion_sindicato;
    private String otro_sindicato;
    private int antiguedad_sindicato_anio;
    private int antiguedad_sindicato_mes;
    private String contrato_colectivo;
    private String conocimiento_contrato_colectivo;
    private String estatutos_sindicato;

    public Encuesta_buscada() {
    }

    public Encuesta_buscada(String rut, String nombre, String sexo, String centro_medico, String cambio_centro, String comuna, String fecha_nacimiento, String educacion, String estudio_actual, String carrera_institucion, String estado_civil, int personas_hogar, int personas_ocupadas, int personas_buscando, String personas_problema_salud, int personas_problema_salud_numero, int personas_carga, String proveedor_principal, String vivienda, String cargo_trabajo, String polifuncionalidad, String area_funciones, int anio_antiguedad, int mes_antiguedad, int horas_jornada, String horas_extra_habiles, String horas_extra_sabado, String horas_extra_domingo, int turnos, int tiempo_traslado_horas, int tiempo_traslado_minutos, String solicitud_traslado_centro, int numero_solicitud, String otorgamiento_traslado_centro, int numero_otorgamiento, String prestamo_marzo, String servicio_dental, String otro_servicio_dental, String bono_nps, String criterios_bono_nps, String criterios_bono_produccion, String tiempo_acreditacion, String estres_acreditacion, String problema_funciones_acreditacion, String situacion_catastrofica, String retiro_voluntario, String salida_social, String satisfaccion_empresa, String fiesta, String valoracion_sindicato, String otro_sindicato, int antiguedad_sindicato_anio, int antiguedad_sindicato_mes, String contrato_colectivo, String conocimiento_contrato_colectivo, String estatutos_sindicato) {
        this.rut = rut;
        this.nombre = nombre;
        this.sexo = sexo;
        this.centro_medico = centro_medico;
        this.cambio_centro = cambio_centro;
        this.comuna = comuna;
        this.fecha_nacimiento = fecha_nacimiento;
        this.educacion = educacion;
        this.estudio_actual = estudio_actual;
        this.carrera_institucion = carrera_institucion;
        this.estado_civil = estado_civil;
        this.personas_hogar = personas_hogar;
        this.personas_ocupadas = personas_ocupadas;
        this.personas_buscando = personas_buscando;
        this.personas_problema_salud = personas_problema_salud;
        this.personas_problema_salud_numero = personas_problema_salud_numero;
        this.personas_carga = personas_carga;
        this.proveedor_principal = proveedor_principal;
        this.vivienda = vivienda;
        this.cargo_trabajo = cargo_trabajo;
        this.polifuncionalidad = polifuncionalidad;
        this.area_funciones = area_funciones;
        this.anio_antiguedad = anio_antiguedad;
        this.mes_antiguedad = mes_antiguedad;
        this.horas_jornada = horas_jornada;
        this.horas_extra_habiles = horas_extra_habiles;
        this.horas_extra_sabado = horas_extra_sabado;
        this.horas_extra_domingo = horas_extra_domingo;
        this.turnos = turnos;
        this.tiempo_traslado_horas = tiempo_traslado_horas;
        this.tiempo_traslado_minutos = tiempo_traslado_minutos;
        this.solicitud_traslado_centro = solicitud_traslado_centro;
        this.numero_solicitud = numero_solicitud;
        this.otorgamiento_traslado_centro = otorgamiento_traslado_centro;
        this.numero_otorgamiento = numero_otorgamiento;
        this.prestamo_marzo = prestamo_marzo;
        this.servicio_dental = servicio_dental;
        this.otro_servicio_dental = otro_servicio_dental;
        this.bono_nps = bono_nps;
        this.criterios_bono_nps = criterios_bono_nps;
        this.criterios_bono_produccion = criterios_bono_produccion;
        this.tiempo_acreditacion = tiempo_acreditacion;
        this.estres_acreditacion = estres_acreditacion;
        this.problema_funciones_acreditacion = problema_funciones_acreditacion;
        this.situacion_catastrofica = situacion_catastrofica;
        this.retiro_voluntario = retiro_voluntario;
        this.salida_social = salida_social;
        this.satisfaccion_empresa = satisfaccion_empresa;
        this.fiesta = fiesta;
        this.valoracion_sindicato = valoracion_sindicato;
        this.otro_sindicato = otro_sindicato;
        this.antiguedad_sindicato_anio = antiguedad_sindicato_anio;
        this.antiguedad_sindicato_mes = antiguedad_sindicato_mes;
        this.contrato_colectivo = contrato_colectivo;
        this.conocimiento_contrato_colectivo = conocimiento_contrato_colectivo;
        this.estatutos_sindicato = estatutos_sindicato;
    }

    public String getRut() {
        return rut;
    }

    public void setRut(String rut) {
        this.rut = rut;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getSexo() {
        return sexo;
    }

    public void setSexo(String sexo) {
        this.sexo = sexo;
    }

    public String getCentro_medico() {
        return centro_medico;
    }

    public void setCentro_medico(String centro_medico) {
        this.centro_medico = centro_medico;
    }

    public String getCambio_centro() {
        return cambio_centro;
    }

    public void setCambio_centro(String cambio_centro) {
        this.cambio_centro = cambio_centro;
    }

    public String getComuna() {
        return comuna;
    }

    public void setComuna(String comuna) {
        this.comuna = comuna;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public String getEducacion() {
        return educacion;
    }

    public void setEducacion(String educacion) {
        this.educacion = educacion;
    }

    public String getEstudio_actual() {
        return estudio_actual;
    }

    public void setEstudio_actual(String estudio_actual) {
        this.estudio_actual = estudio_actual;
    }

    public String getCarrera_institucion() {
        return carrera_institucion;
    }

    public void setCarrera_institucion(String carrera_institucion) {
        this.carrera_institucion = carrera_institucion;
    }

    public String getEstado_civil() {
        return estado_civil;
    }

    public void setEstado_civil(String estado_civil) {
        this.estado_civil = estado_civil;
    }

    public int getPersonas_hogar() {
        return personas_hogar;
    }

    public void setPersonas_hogar(int personas_hogar) {
        this.personas_hogar = personas_hogar;
    }

    public int getPersonas_ocupadas() {
        return personas_ocupadas;
    }

    public void setPersonas_ocupadas(int personas_ocupadas) {
        this.personas_ocupadas = personas_ocupadas;
    }

    public int getPersonas_buscando() {
        return personas_buscando;
    }

    public void setPersonas_buscando(int personas_buscando) {
        this.personas_buscando = personas_buscando;
    }

    public String getPersonas_problema_salud() {
        return personas_problema_salud;
    }

    public void setPersonas_problema_salud(String personas_problema_salud) {
        this.personas_problema_salud = personas_problema_salud;
    }

    public int getPersonas_problema_salud_numero() {
        return personas_problema_salud_numero;
    }

    public void setPersonas_problema_salud_numero(int personas_problema_salud_numero) {
        this.personas_problema_salud_numero = personas_problema_salud_numero;
    }

    public int getPersonas_carga() {
        return personas_carga;
    }

    public void setPersonas_carga(int personas_carga) {
        this.personas_carga = personas_carga;
    }

    public String getProveedor_principal() {
        return proveedor_principal;
    }

    public void setProveedor_principal(String proveedor_principal) {
        this.proveedor_principal = proveedor_principal;
    }

    public String getVivienda() {
        return vivienda;
    }

    public void setVivienda(String vivienda) {
        this.vivienda = vivienda;
    }

    public String getCargo_trabajo() {
        return cargo_trabajo;
    }

    public void setCargo_trabajo(String cargo_trabajo) {
        this.cargo_trabajo = cargo_trabajo;
    }

    public String getPolifuncionalidad() {
        return polifuncionalidad;
    }

    public void setPolifuncionalidad(String polifuncionalidad) {
        this.polifuncionalidad = polifuncionalidad;
    }

    public String getArea_funciones() {
        return area_funciones;
    }

    public void setArea_funciones(String area_funciones) {
        this.area_funciones = area_funciones;
    }

    public int getAnio_antiguedad() {
        return anio_antiguedad;
    }

    public void setAnio_antiguedad(int anio_antiguedad) {
        this.anio_antiguedad = anio_antiguedad;
    }

    public int getMes_antiguedad() {
        return mes_antiguedad;
    }

    public void setMes_antiguedad(int mes_antiguedad) {
        this.mes_antiguedad = mes_antiguedad;
    }

    public int getHoras_jornada() {
        return horas_jornada;
    }

    public void setHoras_jornada(int horas_jornada) {
        this.horas_jornada = horas_jornada;
    }

    public String getHoras_extra_habiles() {
        return horas_extra_habiles;
    }

    public void setHoras_extra_habiles(String horas_extra_habiles) {
        this.horas_extra_habiles = horas_extra_habiles;
    }

    public String getHoras_extra_sabado() {
        return horas_extra_sabado;
    }

    public void setHoras_extra_sabado(String horas_extra_sabado) {
        this.horas_extra_sabado = horas_extra_sabado;
    }

    public String getHoras_extra_domingo() {
        return horas_extra_domingo;
    }

    public void setHoras_extra_domingo(String horas_extra_domingo) {
        this.horas_extra_domingo = horas_extra_domingo;
    }

    public int getTurnos() {
        return turnos;
    }

    public void setTurnos(int turnos) {
        this.turnos = turnos;
    }

    public int getTiempo_traslado_horas() {
        return tiempo_traslado_horas;
    }

    public void setTiempo_traslado_horas(int tiempo_traslado_horas) {
        this.tiempo_traslado_horas = tiempo_traslado_horas;
    }

    public int getTiempo_traslado_minutos() {
        return tiempo_traslado_minutos;
    }

    public void setTiempo_traslado_minutos(int tiempo_traslado_minutos) {
        this.tiempo_traslado_minutos = tiempo_traslado_minutos;
    }

    public String getSolicitud_traslado_centro() {
        return solicitud_traslado_centro;
    }

    public void setSolicitud_traslado_centro(String solicitud_traslado_centro) {
        this.solicitud_traslado_centro = solicitud_traslado_centro;
    }

    public int getNumero_solicitud() {
        return numero_solicitud;
    }

    public void setNumero_solicitud(int numero_solicitud) {
        this.numero_solicitud = numero_solicitud;
    }

    public String getOtorgamiento_traslado_centro() {
        return otorgamiento_traslado_centro;
    }

    public void setOtorgamiento_traslado_centro(String otorgamiento_traslado_centro) {
        this.otorgamiento_traslado_centro = otorgamiento_traslado_centro;
    }

    public int getNumero_otorgamiento() {
        return numero_otorgamiento;
    }

    public void setNumero_otorgamiento(int numero_otorgamiento) {
        this.numero_otorgamiento = numero_otorgamiento;
    }

    public String getPrestamo_marzo() {
        return prestamo_marzo;
    }

    public void setPrestamo_marzo(String prestamo_marzo) {
        this.prestamo_marzo = prestamo_marzo;
    }

    public String getServicio_dental() {
        return servicio_dental;
    }

    public void setServicio_dental(String servicio_dental) {
        this.servicio_dental = servicio_dental;
    }

    public String getOtro_servicio_dental() {
        return otro_servicio_dental;
    }

    public void setOtro_servicio_dental(String otro_servicio_dental) {
        this.otro_servicio_dental = otro_servicio_dental;
    }

    public String getBono_nps() {
        return bono_nps;
    }

    public void setBono_nps(String bono_nps) {
        this.bono_nps = bono_nps;
    }

    public String getCriterios_bono_nps() {
        return criterios_bono_nps;
    }

    public void setCriterios_bono_nps(String criterios_bono_nps) {
        this.criterios_bono_nps = criterios_bono_nps;
    }

    public String getCriterios_bono_produccion() {
        return criterios_bono_produccion;
    }

    public void setCriterios_bono_produccion(String criterios_bono_produccion) {
        this.criterios_bono_produccion = criterios_bono_produccion;
    }

    public String getTiempo_acreditacion() {
        return tiempo_acreditacion;
    }

    public void setTiempo_acreditacion(String tiempo_acreditacion) {
        this.tiempo_acreditacion = tiempo_acreditacion;
    }

    public String getEstres_acreditacion() {
        return estres_acreditacion;
    }

    public void setEstres_acreditacion(String estres_acreditacion) {
        this.estres_acreditacion = estres_acreditacion;
    }

    public String getProblema_funciones_acreditacion() {
        return problema_funciones_acreditacion;
    }

    public void setProblema_funciones_acreditacion(String problema_funciones_acreditacion) {
        this.problema_funciones_acreditacion = problema_funciones_acreditacion;
    }

    public String getSituacion_catastrofica() {
        return situacion_catastrofica;
    }

    public void setSituacion_catastrofica(String situacion_catastrofica) {
        this.situacion_catastrofica = situacion_catastrofica;
    }

    public String getRetiro_voluntario() {
        return retiro_voluntario;
    }

    public void setRetiro_voluntario(String retiro_voluntario) {
        this.retiro_voluntario = retiro_voluntario;
    }

    public String getSalida_social() {
        return salida_social;
    }

    public void setSalida_social(String salida_social) {
        this.salida_social = salida_social;
    }

    public String getSatisfaccion_empresa() {
        return satisfaccion_empresa;
    }

    public void setSatisfaccion_empresa(String satisfaccion_empresa) {
        this.satisfaccion_empresa = satisfaccion_empresa;
    }

    public String getFiesta() {
        return fiesta;
    }

    public void setFiesta(String fiesta) {
        this.fiesta = fiesta;
    }

    public String getValoracion_sindicato() {
        return valoracion_sindicato;
    }

    public void setValoracion_sindicato(String valoracion_sindicato) {
        this.valoracion_sindicato = valoracion_sindicato;
    }

    public String getOtro_sindicato() {
        return otro_sindicato;
    }

    public void setOtro_sindicato(String otro_sindicato) {
        this.otro_sindicato = otro_sindicato;
    }

    public int getAntiguedad_sindicato_anio() {
        return antiguedad_sindicato_anio;
    }

    public void setAntiguedad_sindicato_anio(int antiguedad_sindicato_anio) {
        this.antiguedad_sindicato_anio = antiguedad_sindicato_anio;
    }

    public int getAntiguedad_sindicato_mes() {
        return antiguedad_sindicato_mes;
    }

    public void setAntiguedad_sindicato_mes(int antiguedad_sindicato_mes) {
        this.antiguedad_sindicato_mes = antiguedad_sindicato_mes;
    }

    public String getContrato_colectivo() {
        return contrato_colectivo;
    }

    public void setContrato_colectivo(String contrato_colectivo) {
        this.contrato_colectivo = contrato_colectivo;
    }

    public String getConocimiento_contrato_colectivo() {
        return conocimiento_contrato_colectivo;
    }

    public void setConocimiento_contrato_colectivo(String conocimiento_contrato_colectivo) {
        this.conocimiento_contrato_colectivo = conocimiento_contrato_colectivo;
    }

    public String getEstatutos_sindicato() {
        return estatutos_sindicato;
    }

    public void setEstatutos_sindicato(String estatutos_sindicato) {
        this.estatutos_sindicato = estatutos_sindicato;
    }

    
}
