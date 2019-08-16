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
public class Socio_encuesta {
    private String rut;
    private int id_encuesta;
    private String nombre;
    private String sexo;
    private int centro_medico;
    private int cambio_centro;
    private int cut;
    private String fecha_nacimiento;
    private int educacion;
    private int estudio_actual;
    private String carrera_institucion;
    private int estado_civil;
    private int personas_hogar;
    private int personas_ocupadas;
    private int personas_buscando;
    private int personas_problema_salud;
    private int personas_problema_salud_numero;
    private int personas_carga;
    private int proveedor_principal;
    private int vivienda;
    private int cargo_trabajo;
    private int polifuncionalidad;
    private int area_funciones;
    private int anio_antiguedad;
    private int mes_antiguedad;
    private int horas_jornada;
    private int horas_extra_habiles;
    private int horas_extra_sabado;
    private int horas_extra_domingo;
    private int turnos;
    private int tiempo_traslado_horas;
    private int tiempo_traslado_minutos;
    private int solicitud_traslado_centro;
    private int numero_solicitud;
    private int otorgamiento_traslado_centro;
    private int numero_otorgamiento;
    private int prestamo_marzo;
    private int servicio_dental;
    private int otro_servicio_dental;
    private int bono_nps;
    private int criterios_bono_nps;
    private int criterios_bono_produccion;
    private int tiempo_acreditacion;
    private int estres_acreditacion;
    private int problema_funciones_acreditacion;
    private int situacion_catastrofica;
    private int retiro_voluntario;
    private int salida_social;
    private int satisfaccion_empresa;
    private int fiesta;
    private int valoracion_sindicato;
    private int otro_sindicato;
    private int antiguedad_sindicato_anio;
    private int antiguedad_sindicato_mes;
    private int contrato_colectivo;
    private int conocimiento_contrato_colectivo;
    private int estatutos_sindicato;

    public Socio_encuesta() {
        this.rut = "";
        this.id_encuesta = 0;
        this.nombre = "";
        this.sexo = "";
        this.centro_medico = 0;
        this.cambio_centro = 0;
        this.cut = 0;
        this.fecha_nacimiento = "";
        this.educacion = 0;
        this.estudio_actual = 0;
        this.carrera_institucion = "";
        this.estado_civil = 0;
        this.personas_hogar = 0;
        this.personas_ocupadas = 0;
        this.personas_buscando = 0;
        this.personas_problema_salud = 0;
        this.personas_problema_salud_numero = 0;
        this.personas_carga = 0;
        this.proveedor_principal = 0;
        this.vivienda = 0;
        this.cargo_trabajo = 0;
        this.polifuncionalidad = 0;
        this.area_funciones = 0;
        this.anio_antiguedad = 0;
        this.mes_antiguedad = 0;
        this.horas_jornada = 0;
        this.horas_extra_habiles = 0;
        this.horas_extra_sabado = 0;
        this.horas_extra_domingo = 0;
        this.turnos = 0;
        this.tiempo_traslado_horas = 0;
        this.tiempo_traslado_minutos = 0;
        this.solicitud_traslado_centro = 0;
        this.numero_solicitud = 0;
        this.otorgamiento_traslado_centro = 0;
        this.numero_otorgamiento = 0;
        this.prestamo_marzo = 0;
        this.servicio_dental = 0;
        this.otro_servicio_dental = 0;
        this.bono_nps = 0;
        this.criterios_bono_nps = 0;
        this.criterios_bono_produccion = 0;
        this.tiempo_acreditacion = 0;
        this.estres_acreditacion = 2;
        this.problema_funciones_acreditacion = 2;
        this.situacion_catastrofica = 2;
        this.retiro_voluntario = 0;
        this.salida_social = 0;
        this.satisfaccion_empresa = 0;
        this.fiesta = 0;
        this.valoracion_sindicato = 0;
        this.otro_sindicato = 0;
        this.antiguedad_sindicato_anio = 0;
        this.antiguedad_sindicato_mes = 0;
        this.contrato_colectivo = 0;
        this.conocimiento_contrato_colectivo = 0;
        this.estatutos_sindicato = 0;
    }

    public Socio_encuesta(String rut, int id_encuesta, String nombre, String sexo, int centro_medico, int cambio_centro, int cut, String fecha_nacimiento, int educacion, int estudio_actual, String carrera_institucion, int estado_civil, int personas_hogar, int personas_ocupadas, int personas_buscando, int personas_problema_salud, int personas_problema_salud_numero, int personas_carga, int proveedor_principal, int vivienda, int cargo_trabajo, int polifuncionalidad, int area_funciones, int anio_antiguedad, int mes_antiguedad, int horas_jornada, int horas_extra_habiles, int horas_extra_sabado, int horas_extra_domingo, int turnos, int tiempo_traslado_horas, int tiempo_traslado_minutos, int solicitud_traslado_centro, int numero_solicitud, int otorgamiento_traslado_centro, int numero_otorgamiento, int prestamo_marzo, int servicio_dental, int otro_servicio_dental, int bono_nps, int criterios_bono_nps, int criterios_bono_produccion, int tiempo_acreditacion, int estres_acreditacion, int problema_funciones_acreditacion, int situacion_catastrofica, int retiro_voluntario, int salida_social, int satisfaccion_empresa, int fiesta, int valoracion_sindicato, int otro_sindicato, int antiguedad_sindicato_anio, int antiguedad_sindicato_mes, int contrato_colectivo, int conocimiento_contrato_colectivo, int estatutos_sindicato) {
        this.rut = rut;
        this.id_encuesta = id_encuesta;
        this.nombre = nombre;
        this.sexo = sexo;
        this.centro_medico = centro_medico;
        this.cambio_centro = cambio_centro;
        this.cut = cut;
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

    public int getId_encuesta() {
        return id_encuesta;
    }

    public void setId_encuesta(int id_encuesta) {
        this.id_encuesta = id_encuesta;
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

    public int getCentro_medico() {
        return centro_medico;
    }

    public void setCentro_medico(int centro_medico) {
        this.centro_medico = centro_medico;
    }

    public int getCambio_centro() {
        return cambio_centro;
    }

    public void setCambio_centro(int cambio_centro) {
        this.cambio_centro = cambio_centro;
    }

    public int getCut() {
        return cut;
    }

    public void setCut(int cut) {
        this.cut = cut;
    }

    public String getFecha_nacimiento() {
        return fecha_nacimiento;
    }

    public void setFecha_nacimiento(String fecha_nacimiento) {
        this.fecha_nacimiento = fecha_nacimiento;
    }

    public int getEducacion() {
        return educacion;
    }

    public void setEducacion(int educacion) {
        this.educacion = educacion;
    }

    public int getEstudio_actual() {
        return estudio_actual;
    }

    public void setEstudio_actual(int estudio_actual) {
        this.estudio_actual = estudio_actual;
    }

    public String getCarrera_institucion() {
        return carrera_institucion;
    }

    public void setCarrera_institucion(String carrera_institucion) {
        this.carrera_institucion = carrera_institucion;
    }

    public int getEstado_civil() {
        return estado_civil;
    }

    public void setEstado_civil(int estado_civil) {
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

    public int getPersonas_problema_salud() {
        return personas_problema_salud;
    }

    public void setPersonas_problema_salud(int personas_problema_salud) {
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

    public int getProveedor_principal() {
        return proveedor_principal;
    }

    public void setProveedor_principal(int proveedor_principal) {
        this.proveedor_principal = proveedor_principal;
    }

    public int getVivienda() {
        return vivienda;
    }

    public void setVivienda(int vivienda) {
        this.vivienda = vivienda;
    }

    public int getCargo_trabajo() {
        return cargo_trabajo;
    }

    public void setCargo_trabajo(int cargo_trabajo) {
        this.cargo_trabajo = cargo_trabajo;
    }

    public int getPolifuncionalidad() {
        return polifuncionalidad;
    }

    public void setPolifuncionalidad(int polifuncionalidad) {
        this.polifuncionalidad = polifuncionalidad;
    }

    public int getArea_funciones() {
        return area_funciones;
    }

    public void setArea_funciones(int area_funciones) {
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

    public int getHoras_extra_habiles() {
        return horas_extra_habiles;
    }

    public void setHoras_extra_habiles(int horas_extra_habiles) {
        this.horas_extra_habiles = horas_extra_habiles;
    }

    public int getHoras_extra_sabado() {
        return horas_extra_sabado;
    }

    public void setHoras_extra_sabado(int horas_extra_sabado) {
        this.horas_extra_sabado = horas_extra_sabado;
    }

    public int getHoras_extra_domingo() {
        return horas_extra_domingo;
    }

    public void setHoras_extra_domingo(int horas_extra_domingo) {
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

    public int getSolicitud_traslado_centro() {
        return solicitud_traslado_centro;
    }

    public void setSolicitud_traslado_centro(int solicitud_traslado_centro) {
        this.solicitud_traslado_centro = solicitud_traslado_centro;
    }

    public int getNumero_solicitud() {
        return numero_solicitud;
    }

    public void setNumero_solicitud(int numero_solicitud) {
        this.numero_solicitud = numero_solicitud;
    }

    public int getOtorgamiento_traslado_centro() {
        return otorgamiento_traslado_centro;
    }

    public void setOtorgamiento_traslado_centro(int otorgamiento_traslado_centro) {
        this.otorgamiento_traslado_centro = otorgamiento_traslado_centro;
    }

    public int getNumero_otorgamiento() {
        return numero_otorgamiento;
    }

    public void setNumero_otorgamiento(int numero_otorgamiento) {
        this.numero_otorgamiento = numero_otorgamiento;
    }

    public int getPrestamo_marzo() {
        return prestamo_marzo;
    }

    public void setPrestamo_marzo(int prestamo_marzo) {
        this.prestamo_marzo = prestamo_marzo;
    }

    public int getServicio_dental() {
        return servicio_dental;
    }

    public void setServicio_dental(int servicio_dental) {
        this.servicio_dental = servicio_dental;
    }

    public int getOtro_servicio_dental() {
        return otro_servicio_dental;
    }

    public void setOtro_servicio_dental(int otro_servicio_dental) {
        this.otro_servicio_dental = otro_servicio_dental;
    }

    public int getBono_nps() {
        return bono_nps;
    }

    public void setBono_nps(int bono_nps) {
        this.bono_nps = bono_nps;
    }

    public int getCriterios_bono_nps() {
        return criterios_bono_nps;
    }

    public void setCriterios_bono_nps(int criterios_bono_nps) {
        this.criterios_bono_nps = criterios_bono_nps;
    }

    public int getCriterios_bono_produccion() {
        return criterios_bono_produccion;
    }

    public void setCriterios_bono_produccion(int criterios_bono_produccion) {
        this.criterios_bono_produccion = criterios_bono_produccion;
    }

    public int getTiempo_acreditacion() {
        return tiempo_acreditacion;
    }

    public void setTiempo_acreditacion(int tiempo_acreditacion) {
        this.tiempo_acreditacion = tiempo_acreditacion;
    }

    public int getEstres_acreditacion() {
        return estres_acreditacion;
    }

    public void setEstres_acreditacion(int estres_acreditacion) {
        this.estres_acreditacion = estres_acreditacion;
    }

    public int getProblema_funciones_acreditacion() {
        return problema_funciones_acreditacion;
    }

    public void setProblema_funciones_acreditacion(int problema_funciones_acreditacion) {
        this.problema_funciones_acreditacion = problema_funciones_acreditacion;
    }

    public int getSituacion_catastrofica() {
        return situacion_catastrofica;
    }

    public void setSituacion_catastrofica(int situacion_catastrofica) {
        this.situacion_catastrofica = situacion_catastrofica;
    }

    public int getRetiro_voluntario() {
        return retiro_voluntario;
    }

    public void setRetiro_voluntario(int retiro_voluntario) {
        this.retiro_voluntario = retiro_voluntario;
    }

    public int getSalida_social() {
        return salida_social;
    }

    public void setSalida_social(int salida_social) {
        this.salida_social = salida_social;
    }

    public int getSatisfaccion_empresa() {
        return satisfaccion_empresa;
    }

    public void setSatisfaccion_empresa(int satisfaccion_empresa) {
        this.satisfaccion_empresa = satisfaccion_empresa;
    }

    public int getFiesta() {
        return fiesta;
    }

    public void setFiesta(int fiesta) {
        this.fiesta = fiesta;
    }

    public int getValoracion_sindicato() {
        return valoracion_sindicato;
    }

    public void setValoracion_sindicato(int valoracion_sindicato) {
        this.valoracion_sindicato = valoracion_sindicato;
    }

    public int getOtro_sindicato() {
        return otro_sindicato;
    }

    public void setOtro_sindicato(int otro_sindicato) {
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

    public int getContrato_colectivo() {
        return contrato_colectivo;
    }

    public void setContrato_colectivo(int contrato_colectivo) {
        this.contrato_colectivo = contrato_colectivo;
    }

    public int getConocimiento_contrato_colectivo() {
        return conocimiento_contrato_colectivo;
    }

    public void setConocimiento_contrato_colectivo(int conocimiento_contrato_colectivo) {
        this.conocimiento_contrato_colectivo = conocimiento_contrato_colectivo;
    }

    public int getEstatutos_sindicato() {
        return estatutos_sindicato;
    }

    public void setEstatutos_sindicato(int estatutos_sindicato) {
        this.estatutos_sindicato = estatutos_sindicato;
    }

    

    
}
