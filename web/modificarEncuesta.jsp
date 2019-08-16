<%-- 
    Document   : encuesta
    Created on : 02-07-2018, 10:48:59
    Author     : Horacio
--%>

<%@page import="cl.modelo.Encuesta_buscada"%>
<%@page import="cl.modelo.Socio_corporativo"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
    <head>
        <!--Import Google Icon Font-->
        <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>

        <!--favicon -->
        <link rel="shortcut icon" type="image/x-icon" href="img/phpThumb_generated_thumbnailico" />
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <title>Encuesta Sindicato Nacional de Trabajadores del Área de la Salud Privada</title>
    </head>
    <%
        Socio_corporativo socio_corporativo = (Socio_corporativo) session.getAttribute("socioValido");
        Encuesta_buscada encuesta_buscada = (Encuesta_buscada) request.getAttribute("encuesta_buscada");
    %>
    <body>
        <div class="container">
            <% if (socio_corporativo != null) {%>
            <div class="row">
                <div class="col s12">
                    <jsp:include page="nav.jsp" />
                </div>
            </div>

            <div class="row">
                <div class="col s10 offset-s1">
                    <h2><b>Modificar o eliminar encuesta</b></h2>
                    <p class="flow-text" align="justify">En este formulario puede modificar las respuestas de la encuesta o eliminar la encuesta.</p>
                    <p class="flow-text" align="justify">Para modificar las respuestas deberá responder toda la encuesta nuevamente y a continuación presionar el botón 'Modificar' (ubicado al final del formulario).</p>
                    <p class="flow-text" align="justify">Para eliminar la encuesta solo debe presionar el botón 'Eliminar' (ubicado al final del formulario), sin necesidad de ingresar ningún dato.</p>
                </div>
            </div>

            <div class="row">
                <form class="col s10 offset-s1" name="form" action="manipular.do?rut=${sessionScope.socioValido.rut}" method="post">
                    <div class="col s12 card-panel blue lighten-4">
                        <h4><b>Observaciones de operación</b></h4>
                        <br/>
                        <p class="flow-text">${requestScope.msg}</p>
                        </br>
                        <h4><b>Resultado de búsqueda</b></h4>
                        <br/>
                        <p class="flow-text"><b>Rut: </b><%=encuesta_buscada.getRut()%></p>
                        <p class="flow-text"><b>Nombre: </b><%=encuesta_buscada.getNombre()%></p>
                        <p class="flow-text"><b>Sexo: </b><%=encuesta_buscada.getSexo()%></p>
                        <p class="flow-text"><b>Centro Médico en que trabaja: </b><%=encuesta_buscada.getCentro_medico()%></p>
                        <p class="flow-text"><b>Cambio de Centro Médico en el último año: </b><%=encuesta_buscada.getCambio_centro()%></p>
                        <p class="flow-text"><b>Comuna en la que reside actualmente: </b><%=encuesta_buscada.getComuna()%></p>
                        <p class="flow-text"><b>Fecha de Nacimiento: </b><%=encuesta_buscada.getFecha_nacimiento()%></p>
                        <p class="flow-text"><b>Educación: </b><%=encuesta_buscada.getEducacion()%></p>
                        <p class="flow-text"><b>Estudia actualmente: </b><%=encuesta_buscada.getEstudio_actual()%></p>
                        <p class="flow-text"><b>Carrera e institución actual: </b><%=encuesta_buscada.getCarrera_institucion()%></p>
                        <p class="flow-text"><b>Estado civil actual: </b><%=encuesta_buscada.getEstado_civil()%></p>
                        <p class="flow-text"><b>Número de personas que componen su hogar: </b><%=encuesta_buscada.getPersonas_hogar()%></p>
                        <p class="flow-text"><b>Número de personas de su hogar ocupadas: </b><%=encuesta_buscada.getPersonas_ocupadas()%></p>
                        <p class="flow-text"><b>Número de personas de su hogar que buscan empleo: </b><%=encuesta_buscada.getPersonas_buscando()%></p>
                        <p class="flow-text"><b>Personas del hogar con alguna enfermedad crónica o situación de discapacidad: </b><%=encuesta_buscada.getPersonas_problema_salud()%></p>
                        <p class="flow-text"><b>Número de personas del hogar con alguna enfermedad crónica o situación de discapacidad: </b><%=encuesta_buscada.getPersonas_problema_salud_numero()%></p>
                        <p class="flow-text"><b>Número de personas del hogar consideradas como "cargas legales": </b><%=encuesta_buscada.getPersonas_carga()%></p>
                        <p class="flow-text"><b>Es usted el proveedor principal del hogar: </b><%=encuesta_buscada.getProveedor_principal()%></p>
                        <p class="flow-text"><b>Estado de su vivienda actual: </b><%=encuesta_buscada.getVivienda()%></p>
                        <p class="flow-text"><b>Cargo en el cual se desempeña: </b><%=encuesta_buscada.getCargo_trabajo()%></p>
                        <p class="flow-text"><b>Área o servicio especificado por contrato: </b><%=encuesta_buscada.getPolifuncionalidad()%></p>
                        <p class="flow-text"><b>Área o servicio donde realiza sus funciones: </b><%=encuesta_buscada.getArea_funciones()%></p>
                        <p class="flow-text"><b>Años de antigüedad en la empresa: </b><%=encuesta_buscada.getAnio_antiguedad()%></p>
                        <p class="flow-text"><b>Meses de antigüedad en la empresa: </b><%=encuesta_buscada.getMes_antiguedad()%></p>
                        <p class="flow-text"><b>Jornada en horas semanales: </b><%=encuesta_buscada.getHoras_jornada()%></p>
                        <p class="flow-text"><b>Realización de horas extra en días hábiles: </b><%=encuesta_buscada.getHoras_extra_habiles()%></p>
                        <p class="flow-text"><b>Realización de horas extra en días sábados: </b><%=encuesta_buscada.getHoras_extra_sabado()%></p>
                        <p class="flow-text"><b>Realización de horas extra en días domingos o festivos: </b><%=encuesta_buscada.getHoras_extra_domingo()%></p>
                        <p class="flow-text"><b>Cantidad de turnos de llamado durante el último mes: </b><%=encuesta_buscada.getTurnos()%></p>
                        <p class="flow-text"><b>Tiempo de traslado hacia y desde el trabajo en horas: </b><%=encuesta_buscada.getTiempo_traslado_horas()%></p>
                        <p class="flow-text"><b>Tiempo de traslado hacia y desde el trabajo en minutos: </b><%=encuesta_buscada.getTiempo_traslado_minutos()%></p>
                        <p class="flow-text"><b>Solicitud de traslado de centro: </b><%=encuesta_buscada.getSolicitud_traslado_centro()%></p>
                        <p class="flow-text"><b>Número de veces de solicitud de traslado de centro: </b><%=encuesta_buscada.getNumero_solicitud()%></p>
                        <p class="flow-text"><b>Otorgamiento de la solicitud de traslado: </b><%=encuesta_buscada.getOtorgamiento_traslado_centro()%></p>
                        <p class="flow-text"><b>Número de veces que se le ha otorgado la solicitud de traslado: </b><%=encuesta_buscada.getNumero_otorgamiento()%></p>
                        <p class="flow-text"><b>Solicitud del "préstamo marzo": </b><%=encuesta_buscada.getPrestamo_marzo()%></p>
                        <p class="flow-text"><b>Utilización de servicio dental entregado por la empresa: </b><%=encuesta_buscada.getServicio_dental()%></p>
                        <p class="flow-text"><b>Atención en otra empresa o servicio asistencial para servicios dentales: </b><%=encuesta_buscada.getOtro_servicio_dental()%></p>
                        <p class="flow-text"><b>Adjudicación de bono NPS: </b><%=encuesta_buscada.getBono_nps()%></p>
                        <p class="flow-text"><b>Conocimiento de los criterios de asignación del bono NPS: </b><%=encuesta_buscada.getCriterios_bono_nps()%></p>
                        <p class="flow-text"><b>Conocimiento de los criterios de asignación del bono renta variable o de producción: </b><%=encuesta_buscada.getCriterios_bono_produccion()%></p>
                        <p class="flow-text"><b>Participación en procesos de acreditación o re-acreditación: </b><%=encuesta_buscada.getTiempo_acreditacion()%></p>
                        <p class="flow-text"><b>Estrés asociado a procesos de acreditación o re-acreditación: </b><%=encuesta_buscada.getEstres_acreditacion()%></p>
                        <p class="flow-text"><b>Afectación de desempeño por procesos de acreditación o re-acreditación: </b><%=encuesta_buscada.getProblema_funciones_acreditacion()%></p>
                        <p class="flow-text"><b>Ayuda o apoyo material por parte de la empresa, frente a situación catastrófica: </b><%=encuesta_buscada.getSituacion_catastrofica()%></p>
                        <p class="flow-text"><b>Postulación a retiro voluntario de Indemnización Pactada: </b><%=encuesta_buscada.getRetiro_voluntario()%></p>
                        <p class="flow-text"><b>Postulación a retiro voluntario de Salida Social: </b><%=encuesta_buscada.getSalida_social()%></p>
                        <p class="flow-text"><b>Satisfaccion de trabajar en la empresa: </b><%=encuesta_buscada.getSatisfaccion_empresa()%></p>
                        <p class="flow-text"><b>Fiesta de fin de año relevante para trabajadoras y trabajadores: </b><%=encuesta_buscada.getFiesta()%></p>
                        <p class="flow-text"><b>Sindicato como aporte a condiciones laborales: </b><%=encuesta_buscada.getValoracion_sindicato()%></p>
                        <p class="flow-text"><b>Participación en otro sindicato: </b><%=encuesta_buscada.getOtro_sindicato()%></p>
                        <p class="flow-text"><b>Antigüedad en el sindicato en años: </b><%=encuesta_buscada.getAntiguedad_sindicato_anio()%></p>
                        <p class="flow-text"><b>Antigüedad en el sindicato en meses: </b><%=encuesta_buscada.getAntiguedad_sindicato_mes()%></p>
                        <p class="flow-text"><b>Participación en contrato colectivo suscrito por el sindicato: </b><%=encuesta_buscada.getContrato_colectivo()%></p>
                        <p class="flow-text"><b>Conocimiento de contrato colectivo: </b><%=encuesta_buscada.getConocimiento_contrato_colectivo()%></p>
                        <p class="flow-text"><b>Conocimiento de los estatutos del sindicato: </b><%=encuesta_buscada.getEstatutos_sindicato()%></p>
                        <br/>
                    </div>
                    <br/>
                    <p class="flow-text">&nbsp;</p>
                    <br/>
                    <h4>MÓDULO I: IDENTIFICACIÓN DEL SOCIO O LA SOCIA</h4>
                    <br/>

                    <p class="flow-text">1. Indique su nombre de pila:</p>
                    <label>Nombre de pila</label>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="nombre" type="text" class="validate" maxlength="100"
                                   name="txtNombre" />
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">2. Indique su sexo:</p>
                    <label>Sexo</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optSexo" type="radio" id="test2" value="H"/>
                            <label for="test2">Hombre</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optSexo" type="radio" id="test1" value="M"/>
                            <label for="test1">Mujer</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">3. Indique el Centro Médico en que trabaja actualmente:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboCentro" id="centro_medico" class="browser-default">
                                <option  value="NULO" disabled selected>SELECCIONE EL CENTRO MÉDICO</option>
                                <c:forEach items="${requestScope.listaCentroMedico}" var="c">
                                    <option value="${c.primary}">${c.descripcion}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">4. Durante el último año, ¿se ha cambiado de Centro Médico dentro de la red Integramédica?</p>
                    <label>Cambio en Centro Médico</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optCentroMedico" type="radio" id="centro1" value="1"/>
                            <label for="centro1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optCentroMedico" type="radio" id="centro2" value="0"/>
                            <label for="centro2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">5. Indique la comuna en que reside actualmente:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboComuna" id="comuna" class="browser-default">
                                <option  value="NULO" disabled selected>SELECCIONE LA COMUNA</option>
                                <c:forEach items="${requestScope.listaComuna}" var="x">
                                    <option value="${x.cut}">${x.descripcion}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">6. Indique su fecha de nacimiento:</p>
                    <label>Fecha de Nacimiento</label>
                    <div class="row">
                        <div class="input-field col s12">
                            <input type="date" name="txtFecha_Nacimiento" id="nacimiento">
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">7. Señale el nivel educacional más alto alcanzado:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboEducacion" id="educacion" class="browser-default">
                                <option  value="NULO" disabled selected>SELECCIONE NIVEL EDUCATIVO</option>
                                <c:forEach items="${requestScope.listaEducacion}" var="e">
                                    <option value="${e.educacion}">${e.descripcion}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">8. ¿Estudia actualmente?</p>
                    <label>Estudio actual</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optEducacionActual" type="radio" id="educActual1" value="1" onclick="habilitarEstudio();"/>
                            <label for="educActual1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optEducacionActual" type="radio" id="educActual2" value="0" onclick="deshabilitarEstudio();"/>
                            <label for="educActual2">No</label>
                        </div> 
                    </div>
                    <br/>

                    <br/>
                    <p class="flow-text">9. ¿Qué carrera se encuentra estudiando actualmente (señale institución)?:</p>
                    <label>Estudio Actual</label>
                    <div class="row">
                        <div class="input-field col s12">
                            <input id="estudio" type="text" class="validate" maxlength="500" name="txtEstudio" disabled="true"/>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">10. Señale cuál es su estado civil actual:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboEstadoCivil" id="estadoCivil" class="browser-default">
                                <option  value="NULO" disabled selected>SELECCIONE ESTADO CIVIL</option>
                                <c:forEach items="${requestScope.listaEstadoCivil}" var="ec">
                                    <option value="${ec.estado_civil}">${ec.descripcion}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <h4>MÓDULO II: ASPECTOS SOCIODEMOGRÁFICOS Y DE COMPOSICIÓN DEL HOGAR</h4>
                    <br/>
                    <br/>

                    <p class="flow-text">11. Indique la cantidad de personas que componen su hogar (residen habitualmente en la misma vivienda y comparten un presupuesto común de alimentación y/o servicios básicos):</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboMiembrosHogar" id="miembrosHogar" class="browser-default">
                                <option disabled selected>SELECCIONE NÚMERO</option>
                                <% for (int i = 1; i <= 30; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">12. Indique la cantidad de personas de su hogar que se encuentran ocupadas en un empleo remunerado:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboMiembrosTrabajan" id="miembrosTrabajan" class="browser-default">
                                <option disabled selected>SELECCIONE NÚMERO</option>
                                <% for (int i = 1; i <= 30; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">13. Indique la cantidad de personas de su hogar que se encuentran buscando empleo:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboMiembrosBuscan" id="miembrosBuscan" class="browser-default">
                                <option disabled selected>SELECCIONE NÚMERO</option>
                                <% for (int i = 0; i <= 30; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">14. Señale si alguna/s de las personas que componen su hogar presentan enfermedades crónicas o situación de discapacidad (presencia y cantidad):</p>
                    <label>Enfermedad o discapacidad</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optEnfermedad" type="radio" id="Enfermedad1" value="1" onclick="habilitarNumeroEnfermos();"/>
                            <label for="Enfermedad1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optEnfermedad" type="radio" id="Enfermedad2" value="0" onclick="deshabilitarNumeroEnfermos();"/>
                            <label for="Enfermedad2">No</label>
                        </div> 
                    </div>
                    <br/> 

                    <br/>
                    <p class="flow-text">15. ¿Cuantas?:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboNumeroEnfermos" id="numeroEnfermos" disabled="true" class="browser-default">
                                <option disabled selected>SELECCIONE NÚMERO</option>
                                <% for (int i = 1; i <= 30; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">16. Indique el total de personas que pertenecen a su hogar y se identifican como "cargas legales" (de la socia o socio):</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboCargas" id="cargasLegales" class="browser-default">
                                <option disabled selected>SELECCIONE NÚMERO</option>
                                <% for (int i = 0; i <= 30; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">17. ¿Es usted la o el proovedor principal de su hogar? (Proveedora o proveedor principal es aquella persona que aporta más dinero al presupuesto del hogar)</p>
                    <label>Proveedor principal</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optProvPrin" type="radio" id="prov_prin1" value="1"/>
                            <label for="prov_prin1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optProvPrin" type="radio" id="prov_prin2" value="0"/>
                            <label for="prov_prin2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">18. La vivienda que actualmente ocupa su hogar es:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboVivienda" id="vivienda" class="browser-default">
                                <option  value="NULO" disabled selected>SELECCIONE ESTADO DE VIVIENDA</option>
                                <c:forEach items="${requestScope.listaVivienda}" var="v">
                                    <option value="${v.vivienda}">${v.descripcion}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <h4>MÓDULO III: ASPECTOS LABORALES Y CONDICIONES DE TRABAJO</h4>
                    <br/>
                    <br/>

                    <br/>
                    <p class="flow-text">19. Señale el cargo que desempeña:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboCargo" id="cargo" class="browser-default">
                                <option  value="NULO" disabled selected>SELECCIONE CARGO</option>
                                <c:forEach items="${requestScope.listaCargo}" var="ca">
                                    <option value="${ca.cargo_trabajo}">${ca.descripcion}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">20. ¿Tiene un área o servicio especificado por contrato individual de trabajo (polifuncionalidad)?:</p>
                    <label>Polifuncionalidad</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optPolifuncionalidad" type="radio" id="polifuncionalidad1" value="1"/>
                            <label for="polifuncionalidad1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optPolifuncionalidad" type="radio" id="polifuncionalidad2" value="0"/>
                            <label for="polifuncionalidad2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">21. ¿En qué área o servicio realiza sus funciones?:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboArea" id="areaServicio" class="browser-default">
                                <option  value="NULO" disabled selected>SELECCIONE ÁREA O SERVICIO</option>
                                <c:forEach items="${requestScope.listaFuncion}" var="f">
                                    <option value="${f.area_funciones}">${f.descripcion}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">22. Señale cuántos años de antigüedad tiene en la empresa en años y meses:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboAnioAnt" id="anioAntig" class="browser-default">
                                <option disabled selected>SELECCIONE AÑOS</option>
                                <% for (int i = 0; i <= 60; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                        <div class="input-field col s12">
                            <select name="cboMesAnt" id="mesAntig" class="browser-default">
                                <option disabled selected>SELECCIONE MESES</option>
                                <% for (int i = 0; i <= 11; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">23. Señale cuál es su jornada en horas semanales según contrato:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboJornada" id="jornada" class="browser-default">
                                <option disabled selected>SELECCIONE NÚMERO DE HORAS</option>
                                <% for (int i = 1; i <= 60; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">24. Habitualmente, en una semana promedio ¿realiza horas extra en días hábiles?:</p>
                    <label>Horas extra en días hábiles</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optHorasHabiles" type="radio" id="horasHabiles1" value="1"/>
                            <label for="horasHabiles1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optHorasHabiles" type="radio" id="horasHabiles2" value="0"/>
                            <label for="horasHabiles2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">25. Habitualmente, en una semana promedio ¿realiza horas extra los días sábados?:</p>
                    <label>Horas extra en días sábados</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optHorasSabado" type="radio" id="horasSabado1" value="1"/>
                            <label for="horasSabado1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optHorasSabado" type="radio" id="horasSabado2" value="0"/>
                            <label for="horasSabado2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">26. Habitualmente, en una semana promedio ¿realiza horas extra los días domingos o días festivos?:</p>
                    <label>Horas extra en días domingos o festivos</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optHorasDomingo" type="radio" id="horasDomingo1" value="1"/>
                            <label for="horasDomingo1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optHorasDomingo" type="radio" id="horasDomingo2" value="0"/>
                            <label for="horasDomingo2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">27. Indique ¿cuántas veces realizó turnos de llamado durante el último mes?:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboLlamado" id="llamado" class="browser-default">
                                <option disabled selected>SELECCIONE NÚMERO DE TURNOS</option>
                                <% for (int i = 0; i <= 60; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">28. Tiempo promedio de traslado hacia y desde el trabajo:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboHorasTr" id="horasTr" class="browser-default">
                                <option disabled selected>SELECCIONE HORAS</option>
                                <% for (int i = 0; i <= 30; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                        <div class="input-field col s12">
                            <select name="cboMinutosTr" id="minTr" class="browser-default">
                                <option disabled selected>SELECCIONE MINUTOS</option>
                                <% for (int i = 0; i <= 59; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">29. ¿Alguna vez ha solicitado un traslado de centro?:</p>
                    <label>Traslado de centro</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optTraslado" type="radio" id="trasladoCentro1" value="1" onclick="habilitarSolicitudTraslado();"/>
                            <label for="trasladoCentro1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optTraslado" type="radio" id="trasladoCentro2" value="0" onclick="deshabilitarSolicitudTraslado();"/>
                            <label for="trasladoCentro2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">30. ¿Cuántas veces?:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboTraslado" id="trasladoVeces" class="browser-default" disabled="true">
                                <option disabled selected>SELECCIONE NÚMERO DE SOLICITUDES</option>
                                <% for (int i = 1; i <= 60; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">31. ¿Se le ha otorgado alguna vez?:</p>
                    <label>Traslado de centro</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optOtorgado" type="radio" id="otorgadoVeces1" value="1" disabled="true" onclick="habilitarVecesTraslado();"/>
                            <label for="otorgadoVeces1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optOtorgado" type="radio" id="otorgadoVeces2" value="0" disabled="true" onclick="deshabilitarVecesTraslado();"/>
                            <label for="otorgadoVeces2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">32. ¿Cuántas veces?:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboTrasladoCon" id="trasladoVecesCon" disabled="true" class="browser-default">
                                <option disabled selected>SELECCIONE NÚMERO DE TRASLADO</option>
                                <% for (int i = 1; i <= 60; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <h4>MÓDULO IV: ASIGNACIÓN DE BENEFICIOS Y RELACIÓN CON LA EMPRESA</h4>
                    <br/>

                    <br/>
                    <p class="flow-text">33. ¿Ha solicitado alguna vez el "préstamo marzo" otorgado por la empresa?:</p>
                    <label>Préstamo marzo</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optPrMarzo" type="radio" id="prestamoMarzo1" value="1"/>
                            <label for="prestamoMarzo1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optPrMarzo" type="radio" id="prestamoMarzo2" value="0"/>
                            <label for="prestamoMarzo2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">34. ¿Ha utilizado alguna vez el servicio dental estipulado por contrato colectivo con la empresa (Beneficio dental)?:</p>
                    <label>Servicio dental</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optSerDental" type="radio" id="servicioDental1" value="1" onclick="deshabilitarOtraEmpresa();"/>
                            <label for="servicioDental1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optSerDental" type="radio" id="servicioDental2" value="0" onclick="habilitarOtraEmpresa();"/>
                            <label for="servicioDental2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">35. ¿Se atiende en otra empresa o servicio asistencial para servicios dentales?:</p>
                    <label>Servicio dental</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optOtroServicio" type="radio" id="otroServicio1" value="1" disabled="true"/>
                            <label for="otroServicio1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optOtroServicio" type="radio" id="otroServicio2" value="0" disabled="false"/>
                            <label for="otroServicio2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">36. ¿Ha ganado alguna vez el bono NPS en su Centro?:</p>
                    <label>Bono NPS</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optBonoNPS" type="radio" id="bonoNPS1" value="1"/>
                            <label for="bonoNPS1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optBonoNPS" type="radio" id="bonoNPS2" value="0"/>
                            <label for="bonoNPS2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">37. ¿Conoce los criterios de asignación del bono NPS?:</p>
                    <label>Criterios bono NPS</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optCriteriosNPS" type="radio" id="criteriosNPS1" value="1"/>
                            <label for="criteriosNPS1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optCriteriosNPS" type="radio" id="criteriosNPS2" value="0"/>
                            <label for="criteriosNPS2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">38. ¿Conoce los criterios de asignación del bono renta variable o bono de producción?:</p>
                    <label>Criterios bono renta variable o de producción</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optBonoRenta" type="radio" id="bonoRenta1" value="1"/>
                            <label for="bonoRenta1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optBonoRenta" type="radio" id="bonoRenta2" value="0"/>
                            <label for="bonoRenta2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">39. ¿Ha participado (dedicado tiempo de su jornada) en los procesos de acreditación o re-acreditación?:</p>
                    <label>Participación en procesos de acreditación o re-acreditación</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optAcreditacion" type="radio" id="acreditacion1" value="1" onclick="habilitarAcreditacion();"/>
                            <label for="acreditacion1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optAcreditacion" type="radio" id="acreditacion2" value="0" onclick="deshabilitarAcreditacion();"/>
                            <label for="acreditacion2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">40. Durante la última acreditación/re-acreditación en que participó, ¿se ha sentido estresado a causa de las tareas relacionadas con el proceso?:</p>
                    <label>Estrés por procesos de acreditación o re-acreditación</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optEstresAcreditacion" type="radio" id="estresAcr1" value="1" disabled="true"/>
                            <label for="estresAcr1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optEstresAcreditacion" type="radio" id="estresAcr2" value="0" disabled="true"/>
                            <label for="estresAcr2">No</label>
                        </div> 
                        <div class="input-field col s6">
                            <input name="optEstresAcreditacion" type="radio" id="estresAcr3" value="2" disabled="true"/>
                            <label for="estresAcr3">No Aplica</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">41. Durante la última acreditación/re-acreditación en que participó, ¿las tareas asociadas al proceso afectaron el desempeño de sus funciones habituales?:</p>
                    <label>Afectación de desempeño por procesos de acreditación o re-acreditación</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optDesempeñoAcreditacion" type="radio" id="desempeñoAcr1" value="1" disabled="true"/>
                            <label for="desempeñoAcr1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optDesempeñoAcreditacion" type="radio" id="desempeñoAcr2" value="0" disabled="true"/>
                            <label for="desempeñoAcr2">No</label>
                        </div> 
                        <div class="input-field col s6">
                            <input name="optDesempeñoAcreditacion" type="radio" id="desempeñoAcr3" value="2" disabled="true"/>
                            <label for="desempeñoAcr3">No Aplica</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">42. Ante alguna situación catastrófica, ¿la empresa se ha manifestado con alguna ayuda o apoyo material? (si no se ha visto en esa situación, marque no aplica):</p>
                    <label>Apoyo de la empresa</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optApoyo" type="radio" id="apoyo1" value="1"/>
                            <label for="apoyo1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optApoyo" type="radio" id="apoyo2" value="0"/>
                            <label for="apoyo2">No</label>
                        </div> 
                        <div class="input-field col s6">
                            <input name="optApoyo" type="radio" id="apoyo3" value="2"/>
                            <label for="apoyo3">No Aplica</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">43. ¿Ha postulado alguna vez a retiro voluntario de Indemnización Pactada (sindicato)?:</p>
                    <label>Indemnización pactada</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optIndemnizacion" type="radio" id="indemnizacion1" value="1"/>
                            <label for="indemnizacion1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optIndemnizacion" type="radio" id="indemnizacion2" value="0"/>
                            <label for="indemnizacion2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">44. ¿Ha postulado alguna vez a retiro voluntario de Salida Social(empresa)?:</p>
                    <label>Retiro voluntario</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optRetiro" type="radio" id="retiro1" value="1"/>
                            <label for="retiro1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optRetiro" type="radio" id="retiro2" value="0"/>
                            <label for="retiro2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">A continuación, señale su nivel de acuerdo con las siguientes afirmaciones:</p>

                    <br/>
                    <p class="flow-text">45. Me siento satisfecha/o de trabajar en esta empresa:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboSatisfaccionEmpresa" id="satisfaccionEmpresa" class="browser-default">
                                <option value="0">SELECCIONE EL NIVEL</option>
                                <option value="1">MUY DE ACUERDO</option>
                                <option value="2">DE ACUERDO</option>
                                <option value="3">NI DE ACUERDO NI EN DESACUERDO</option>
                                <option value="4">EN DESACUERDO</option>
                                <option value="5">MUY EN DESACUERDO</option>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">46. La organización de una fiesta de fin de año es relevante para las trabajadoras y trabajadores de la empresa:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboFiesta" id="fiesta" class="browser-default">
                                <option value="0">SELECCIONE EL NIVEL</option>
                                <option value="1">MUY DE ACUERDO</option>
                                <option value="2">DE ACUERDO</option>
                                <option value="3">NI DE ACUERDO NI EN DESACUERDO</option>
                                <option value="4">EN DESACUERDO</option>
                                <option value="5">MUY EN DESACUERDO</option>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <h4>MÓDULO V: CULTURA SINDICAL</h4>
                    <br/>

                    <br/>
                    <p class="flow-text">47. El que exista un sindicato aporta a mejorar las condiciones de trabajadores de la empresa:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboSindicatoMejora" id="sindicatoMejora" class="browser-default">
                                <option value="0">SELECCIONE EL NIVEL</option>
                                <option value="1">MUY DE ACUERDO</option>
                                <option value="2">DE ACUERDO</option>
                                <option value="3">NI DE ACUERDO NI EN DESACUERDO</option>
                                <option value="4">EN DESACUERDO</option>
                                <option value="5">MUY EN DESACUERDO</option>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">48. ¿Ha participado alguna vez de otro sindicato?:</p>
                    <label>Retiro voluntario</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optOtroSind" type="radio" id="otroSindicato1" value="1"/>
                            <label for="otroSindicato1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optOtroSind" type="radio" id="otroSindicato2" value="0"/>
                            <label for="otroSindicato2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">49. Indique su antigüedad en el sindicato en años y meses:</p>
                    <div class="row">
                        <div class="input-field col s12">
                            <select name="cboAnioSin" id="anioSin" class="browser-default">
                                <option disabled selected>SELECCIONE AÑOS</option>
                                <% for (int i = 0; i <= 60; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                        <div class="input-field col s12">
                            <select name="cboMesSin" id="mesSin" class="browser-default">
                                <option disabled selected>SELECCIONE MESES</option>
                                <% for (int i = 0; i <= 11; i++) {%>
                                <option value="<%= i%>"><%= i%></option>
                                <%}%>
                            </select>
                        </div>
                    </div>

                    <br/>
                    <p class="flow-text">50. ¿Forma parte de un contrato colectivo ya suscrito por el sindicato?:</p>
                    <label>Participación en contrato colectivo</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optPartCont" type="radio" id="partContrato1" value="1"/>
                            <label for="partContrato1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optPartCont" type="radio" id="partContrato2" value="0"/>
                            <label for="partContrato2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">51. ¿Conoce su contrato colectivo?:</p>
                    <label>Conocimiento de contrato colectivo</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optConCont" type="radio" id="conContrato1" value="1"/>
                            <label for="conContrato1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optConCont" type="radio" id="conContrato2" value="0"/>
                            <label for="conContrato2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <p class="flow-text">52. ¿Conoce los estatutos del sindicato?:</p>
                    <label>Conocimiento de estatutos de sindicato</label>
                    <div class="row">
                        <div class="input-field col s6">
                            <input name="optEstCont" type="radio" id="estContrato1" value="1"/>
                            <label for="estContrato1">Sí</label>
                        </div>
                        <div class="input-field col s6">
                            <input name="optEstCont" type="radio" id="estContrato2" value="0"/>
                            <label for="estContrato2">No</label>
                        </div> 
                    </div>

                    <br/>
                    <div class="row">
                        <button class="btn waves-effect blue lighten-1" type="submit" name="action" value="modificar" onclick="return validar();">Modificar<i class="material-icons right">autorenew</i></button>
                        <button class="btn waves-effect blue lighten-1" type="submit" name="action" value="eliminar">Eliminar<i class="material-icons right">clear</i></button>
                    </div>

                    <br/>
                    <div class="row">
                        <a class="btn waves-effect blue lighten-1" href="modificar.do?rut=${sessionScope.socioValido.rut}"><i class="material-icons left">backspace</i>Limpiar formulario</a>
                    </div>
                </form>
            </div>

            <footer class="page-footer blue darken-3">
                <div class="container">
                    <div class="row">
                        <div class="col l6 s12">
                            <h5 class="white-text">Contáctanos</h5>
                            <p class="grey-text text-lighten-4">Envíanos tus sugerencias o comentarios a <a href="mailto:horacio.valdes@fundacionsol.cl, benajmin.saez@fundacionsol.cl" style="color: #ffff00">horacio.valdes@fundacionsol.cl</a><br><a href="mailto:benajmin.saez@fundacionsol.cl, horacio.valdes@fundacionsol.cl" style="color: #ffff00">benjamin.saez@fundacionsol.cl</a></p>
                        </div>
                    </div>
                </div>
                <div class="footer-copyright">
                    <div class="container">
                        © 2018 Fundación SOL
                        <a class="grey-text text-lighten-4 right" href="http://www.fundacionsol.cl">Página de Fundación SOL</a>
                    </div>
                </div>
            </footer>

            <% } else { %>
            <div class="row">
                <div class="col s12">
                    <h3>Debes ingresar para acceder a la encuesta</h3>
                    <a href="index.jsp">Ir al acceso</a>
                </div>
            </div>
            <% }%>

        </div>
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script>
                            $(function () {
                                $('select').material_select();
                                $(".button-collapse").sideNav();
                            });
                            $('.datepicker').pickadate({
                                selectMonths: true, // Creates a dropdown to control month
                                selectYears: 50, // Creates a dropdown of 15 years to control year,
                                today: 'Hoy',
                                clear: 'Limpiar',
                                close: 'Ok',
                                closeOnSelect: false // Close upon selecting a date,
                            });
                            
                            function habilitarNumeroEnfermos() {
                                document.getElementById("numeroEnfermos").disabled = false;
                            }

                            function deshabilitarNumeroEnfermos() {
                                document.getElementById("numeroEnfermos").disabled = true;
                                document.getElementById("numeroEnfermos").selectedIndex = 0;
                            }

                            function habilitarSolicitudTraslado() {
                                document.getElementById("trasladoVeces").disabled = false;
                                document.getElementById("otorgadoVeces1").disabled = false;
                                document.getElementById("otorgadoVeces2").disabled = false;
                            }

                            function deshabilitarSolicitudTraslado() {
                                document.getElementById("trasladoVeces").disabled = true;
                                document.getElementById("trasladoVeces").selectedIndex = 0;
                                document.getElementById("otorgadoVeces1").checked = false;
                                document.getElementById("otorgadoVeces1").disabled = true;
                                document.getElementById("otorgadoVeces2").checked = false;
                                document.getElementById("otorgadoVeces2").disabled = true;
                            }

                            function habilitarVecesTraslado() {
                                document.getElementById("trasladoVecesCon").disabled = false;
                            }

                            function deshabilitarVecesTraslado() {
                                document.getElementById("trasladoVecesCon").disabled = true;
                                document.getElementById("trasladoVecesCon").selectedIndex = 0;
                            }

                            function habilitarOtraEmpresa() {
                                document.getElementById("otroServicio1").disabled = false;
                                document.getElementById("otroServicio2").disabled = false;
                            }

                            function deshabilitarOtraEmpresa() {
                                document.getElementById("otroServicio1").checked = false;
                                document.getElementById("otroServicio1").disabled = true;
                                document.getElementById("otroServicio2").checked = false;
                                document.getElementById("otroServicio2").disabled = true;
                            }

                            function habilitarAcreditacion() {
                                document.getElementById("estresAcr1").disabled = false;
                                document.getElementById("estresAcr2").disabled = false;
                                document.getElementById("estresAcr3").disabled = false;
                                document.getElementById("desempeñoAcr1").disabled = false;
                                document.getElementById("desempeñoAcr2").disabled = false;
                                document.getElementById("desempeñoAcr3").disabled = false;
                            }

                            function deshabilitarAcreditacion() {
                                document.getElementById("estresAcr1").checked = false;
                                document.getElementById("estresAcr1").disabled = true;
                                document.getElementById("estresAcr2").checked = false;
                                document.getElementById("estresAcr2").disabled = true;
                                document.getElementById("estresAcr3").checked = false;
                                document.getElementById("estresAcr3").disabled = true;
                                document.getElementById("desempeñoAcr1").checked = false;
                                document.getElementById("desempeñoAcr1").disabled = true;
                                document.getElementById("desempeñoAcr2").checked = false;
                                document.getElementById("desempeñoAcr2").disabled = true;
                                document.getElementById("desempeñoAcr3").checked = false;
                                document.getElementById("desempeñoAcr3").disabled = true;
                            }

                            function habilitarEstudio() {
                                document.getElementById("estudio").disabled = false;
                            }

                            function deshabilitarEstudio() {
                                document.getElementById("estudio").value = "";
                                document.getElementById("estudio").disabled = true;
                            }

                            function validar() {

                                var nombre = document.getElementById("nombre").value;
                                var opcionesSexo = document.getElementsByName("optSexo");
                                var centro = document.getElementById("centro_medico").selectedIndex;
                                var optCentro = document.getElementsByName("optCentroMedico");
                                var comuna = document.getElementById("comuna").selectedIndex;
                                var nacimiento = document.getElementById("nacimiento").value;
                                var educacion = document.getElementById("educacion").selectedIndex;
                                var optEstActual = document.getElementsByName("optEducacionActual");
                                var estudio = document.getElementById("estudio").value;
                                var estadoCivil = document.getElementById("estadoCivil").selectedIndex;
                                var miembrosHogar = document.getElementById("miembrosHogar").selectedIndex;
                                var miembrosTrabajan = document.getElementById("miembrosTrabajan").selectedIndex;
                                var miembrosHogarComp = parseInt(document.getElementById("miembrosHogar").value);
                                var miembrosTrabajanComp = parseInt(document.getElementById("miembrosTrabajan").value);
                                var miembrosBuscan = document.getElementById("miembrosBuscan").selectedIndex;
                                var miembrosBuscanComp = parseInt(document.getElementById("miembrosBuscan").value);
                                var optEnfermedad = document.getElementsByName("optEnfermedad");
                                var numeroEnfermos = document.getElementById("numeroEnfermos").selectedIndex;
                                var cargasLegales = document.getElementById("cargasLegales").selectedIndex;
                                var optProveedor = document.getElementsByName("optProvPrin");
                                var vivienda = document.getElementById("vivienda").selectedIndex;
                                var cargo = document.getElementById("cargo").selectedIndex;
                                var optPolifuncionalidad = document.getElementsByName("optPolifuncionalidad");
                                var areaServicio = document.getElementById("areaServicio").selectedIndex;
                                var anioAntig = document.getElementById("anioAntig").selectedIndex;
                                var mesAntig = document.getElementById("mesAntig").selectedIndex;
                                var cantAnio = parseInt(document.getElementById("anioAntig").value);
                                var cantMes = parseInt(document.getElementById("mesAntig").value);
                                var jornada = document.getElementById("jornada").selectedIndex;
                                var optHorasHabiles = document.getElementsByName("optHorasHabiles");
                                var optHorasSabado = document.getElementsByName("optHorasSabado");
                                var optHorasDomingo = document.getElementsByName("optHorasDomingo");
                                var llamado = document.getElementById("llamado").selectedIndex;
                                var horasTr = document.getElementById("horasTr").selectedIndex;
                                var minTr = document.getElementById("minTr").selectedIndex;
                                var cantHora = parseInt(document.getElementById("horasTr").value);
                                var cantMinuto = parseInt(document.getElementById("minTr").value);
                                var optTraslado = document.getElementsByName("optTraslado");
                                var trasladoVeces = document.getElementById("trasladoVeces").selectedIndex;
                                var optOtorgado = document.getElementsByName("optOtorgado");
                                var trasladoVecesCon = document.getElementById("trasladoVecesCon").selectedIndex;
                                var optPrMarzo = document.getElementsByName("optPrMarzo");
                                var optSerDental = document.getElementsByName("optSerDental");
                                var optOtroServicio = document.getElementsByName("optOtroServicio");
                                var optBonoNPS = document.getElementsByName("optBonoNPS");
                                var optCriteriosNPS = document.getElementsByName("optCriteriosNPS");
                                var optBonoRenta = document.getElementsByName("optBonoRenta");
                                var optAcreditacion = document.getElementsByName("optAcreditacion");
                                var optEstresAcreditacion = document.getElementsByName("optEstresAcreditacion");
                                var optDesempeñoAcreditacion = document.getElementsByName("optDesempeñoAcreditacion");
                                var optApoyo = document.getElementsByName("optApoyo");
                                var optIndemnizacion = document.getElementsByName("optIndemnizacion");
                                var optRetiro = document.getElementsByName("optRetiro");
                                var satisfaccionEmpresa = document.getElementById("satisfaccionEmpresa").selectedIndex;
                                var fiesta = document.getElementById("fiesta").selectedIndex;
                                var sindicatoMejora = document.getElementById("sindicatoMejora").selectedIndex;
                                var optOtroSind = document.getElementsByName("optOtroSind");
                                var anioSin = document.getElementById("anioSin").selectedIndex;
                                var mesSin = document.getElementById("mesSin").selectedIndex;
                                var cantAnioSin = parseInt(document.getElementById("anioSin").value);
                                var cantMesSin = parseInt(document.getElementById("mesSin").value);
                                var optPartCont = document.getElementsByName("optPartCont");
                                var optConCont = document.getElementsByName("optConCont");
                                var optEstCont = document.getElementsByName("optEstCont");

                                var seleccionadoOpcionesOptEstCont = false;
                                for (var i = 0; i < optEstCont.length; i++) {
                                    if (optEstCont[i].checked) {
                                        seleccionadoOpcionesOptEstCont = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOpcionesOptConCont = false;
                                for (var i = 0; i < optConCont.length; i++) {
                                    if (optConCont[i].checked) {
                                        seleccionadoOpcionesOptConCont = true;
                                        break;
                                    }
                                }
        
                                var seleccionadoOpcionesOptPartCont = false;
                                for (var i = 0; i < optPartCont.length; i++) {
                                    if (optPartCont[i].checked) {
                                        seleccionadoOpcionesOptPartCont = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOpcionesOtroSind = false;
                                for (var i = 0; i < optOtroSind.length; i++) {
                                    if (optOtroSind[i].checked) {
                                        seleccionadoOpcionesOtroSind = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOpcionesSexo = false;
                                for (var i = 0; i < opcionesSexo.length; i++) {
                                    if (opcionesSexo[i].checked) {
                                        seleccionadoOpcionesSexo = true;
                                        break;
                                    }
                                }

                                var seleccionadoOpcionesCentro = false;
                                for (var i = 0; i < optCentro.length; i++) {
                                    if (optCentro[i].checked) {
                                        seleccionadoOpcionesCentro = true;
                                        break;
                                    }
                                }

                                var seleccionadoOpcionesEstActual = false;
                                for (var i = 0; i < optEstActual.length; i++) {
                                    if (optEstActual[i].checked) {
                                        seleccionadoOpcionesEstActual = true;
                                        break;
                                    }
                                }

                                var seleccionadoOpcionesEnfermedad = false;
                                for (var i = 0; i < optEnfermedad.length; i++) {
                                    if (optEnfermedad[i].checked) {
                                        seleccionadoOpcionesEnfermedad = true;
                                        break;
                                    }
                                }

                                var seleccionadoOpcionesProveedor = false;
                                for (var i = 0; i < optProveedor.length; i++) {
                                    if (optProveedor[i].checked) {
                                        seleccionadoOpcionesProveedor = true;
                                        break;
                                    }
                                }

                                var seleccionadoOpcionesPolifuncionalidad = false;
                                for (var i = 0; i < optPolifuncionalidad.length; i++) {
                                    if (optPolifuncionalidad[i].checked) {
                                        seleccionadoOpcionesPolifuncionalidad = true;
                                        break;
                                    }
                                }

                                var seleccionadoOpcionesHorasHabiles = false;
                                for (var i = 0; i < optHorasHabiles.length; i++) {
                                    if (optHorasHabiles[i].checked) {
                                        seleccionadoOpcionesHorasHabiles = true;
                                        break;
                                    }
                                }

                                var seleccionadoOpcionesHorasSabado = false;
                                for (var i = 0; i < optHorasSabado.length; i++) {
                                    if (optHorasSabado[i].checked) {
                                        seleccionadoOpcionesHorasSabado = true;
                                        break;
                                    }
                                }

                                var seleccionadoOpcionesHorasDomingo = false;
                                for (var i = 0; i < optHorasDomingo.length; i++) {
                                    if (optHorasDomingo[i].checked) {
                                        seleccionadoOpcionesHorasDomingo = true;
                                        break;
                                    }
                                }

                                var seleccionadoTraslado = false;
                                for (var i = 0; i < optTraslado.length; i++) {
                                    if (optTraslado[i].checked) {
                                        seleccionadoTraslado = true;
                                        break;
                                    }
                                }

                                var seleccionadoOtorgado = false;
                                for (var i = 0; i < optOtorgado.length; i++) {
                                    if (optOtorgado[i].checked) {
                                        seleccionadoOtorgado = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptPrMarzo = false;
                                for (var i = 0; i < optPrMarzo.length; i++) {
                                    if (optPrMarzo[i].checked) {
                                        seleccionadoOptPrMarzo = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptSerDental = false;
                                for (var i = 0; i < optSerDental.length; i++) {
                                    if (optSerDental[i].checked) {
                                        seleccionadoOptSerDental = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptOtroServicio = false;
                                for (var i = 0; i < optOtroServicio.length; i++) {
                                    if (optOtroServicio[i].checked) {
                                        seleccionadoOptOtroServicio = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptBonoNPS = false;
                                for (var i = 0; i < optBonoNPS.length; i++) {
                                    if (optBonoNPS[i].checked) {
                                        seleccionadoOptBonoNPS = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptCriteriosNPS = false;
                                for (var i = 0; i < optCriteriosNPS.length; i++) {
                                    if (optCriteriosNPS[i].checked) {
                                        seleccionadoOptCriteriosNPS = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptBonoRenta = false;
                                for (var i = 0; i < optBonoRenta.length; i++) {
                                    if (optBonoRenta[i].checked) {
                                        seleccionadoOptBonoRenta = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptAcreditacion = false;
                                for (var i = 0; i < optAcreditacion.length; i++) {
                                    if (optAcreditacion[i].checked) {
                                        seleccionadoOptAcreditacion = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptEstresAcreditacion = false;
                                for (var i = 0; i < optEstresAcreditacion.length; i++) {
                                    if (optEstresAcreditacion[i].checked) {
                                        seleccionadoOptEstresAcreditacion = true;
                                        break;
                                    }
                                } 
                                
                                var seleccionadoOptDesempeñoAcreditacion = false;
                                for (var i = 0; i < optDesempeñoAcreditacion.length; i++) {
                                    if (optDesempeñoAcreditacion[i].checked) {
                                        seleccionadoOptDesempeñoAcreditacion = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptApoyo = false;
                                for (var i = 0; i < optApoyo.length; i++) {
                                    if (optApoyo[i].checked) {
                                        seleccionadoOptApoyo = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptIndemnizacion = false;
                                for (var i = 0; i < optIndemnizacion.length; i++) {
                                    if (optIndemnizacion[i].checked) {
                                        seleccionadoOptIndemnizacion = true;
                                        break;
                                    }
                                }
                                
                                var seleccionadoOptRetiro = false;
                                for (var i = 0; i < optRetiro.length; i++) {
                                    if (optRetiro[i].checked) {
                                        seleccionadoOptRetiro = true;
                                        break;
                                    }
                                }
                                
                                var confirmacionAcreditacion = false;
                                for (var i = 0; i < optAcreditacion.length; i++) {
                                    if (optAcreditacion[0].checked) {
                                        confirmacionAcreditacion = true;
                                        break;
                                    }
                                }
                                
                                var confirmacionSerDental = false;
                                for (var i = 0; i < optSerDental.length; i++) {
                                    if (optSerDental[0].checked) {
                                        confirmacionSerDental = true;
                                        break;
                                    }
                                }

                                var confirmacionOtorgado = false;
                                for (var i = 0; i < optOtorgado.length; i++) {
                                    if (optOtorgado[0].checked) {
                                        confirmacionOtorgado = true;
                                        break;
                                    }
                                }

                                var confirmacionTraslado = false;
                                for (var i = 0; i < optTraslado.length; i++) {
                                    if (optTraslado[0].checked) {
                                        confirmacionTraslado = true;
                                    }
                                }
                                
                                var confirmacionEstudio = false;
                                for (var i = 0; i < optEstActual.length; i++) {
                                    if (optEstActual[0].checked) {
                                        confirmacionEstudio = true;
                                        break;
                                    }
                                }

                                var comparacionHogarTrabajan = false;
                                if (miembrosHogarComp < miembrosTrabajanComp) {
                                    comparacionHogarTrabajan = true;
                                }

                                var comparacionHogarBuscan = false;
                                if (miembrosHogarComp < miembrosBuscanComp) {
                                    comparacionHogarBuscan = true;
                                }

                                var confirmacionEnfermedad = false;
                                for (var i = 0; i < optEnfermedad.length; i++) {
                                    if (optEnfermedad[0].checked) {
                                        confirmacionEnfermedad = true;
                                        break;
                                    }
                                }

                                if (nombre == null || nombre.length == 0 || /^\s+$/.test(nombre)) {
                                    Materialize.toast('El campo 1 que indica su nombre de pila no puede estar vacío', 4000);
                                    return false;
                                } else if (nombre.length > 100) {
                                    Materialize.toast('El campo 1 que indica su nombre no puede tener más de 100 caracteres', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesSexo) {
                                    Materialize.toast('Debe seleccionar su sexo en el campo 2', 4000);
                                    return false;
                                } else if (centro == null || centro == 0) {
                                    Materialize.toast('Debe seleccionar un nivel educativo en el campo 3', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesCentro) {
                                    Materialize.toast('Debe indicar si se ha cambiado de centro médico en el campo 4', 4000);
                                    return false;
                                } else if (comuna == null || comuna == 0) {
                                    Materialize.toast('Debe seleccionar una comuna de residencia en el campo 5', 4000);
                                    return false;
                                } else if (nacimiento == null || nacimiento.length == 0 || /^\s+$/.test(nacimiento)) {
                                    Materialize.toast('El campo 6, que indica su fecha de nacimiento, no puede estar vacío', 4000);
                                    return false;
                                } else if (educacion == null || educacion == 0) {
                                    Materialize.toast('Debe seleccionar un nivel educativo en el campo 7', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesEstActual) {
                                    Materialize.toast('Debe indicar si se encuentra estudiando actualmente en el campo 8', 4000);
                                    return false;
                                }
                                if (confirmacionEstudio && (estudio == null || estudio.length == 0 || /^\s+$/.test(estudio))) {
                                    Materialize.toast('El campo 9 que indica la carrera que estudia actualmente no puede estar vacío', 4000);
                                    return false;
                                } else if (confirmacionEstudio && estudio.length > 500) {
                                    Materialize.toast('El campo 9 que indica la carrera que estudia actualmente no puede tener más de 500 caracteres', 4000);
                                    return false;
                                } else if (estadoCivil == null || estadoCivil == 0) {
                                    Materialize.toast('Debe seleccionar un estado civil en el campo 10', 4000);
                                    return false;
                                } else if (miembrosHogar == null || miembrosHogar == 0) {
                                    Materialize.toast('Debe indicar el número de personas que conforman su hogar en el campo 11', 4000);
                                    return false;
                                } else if (miembrosTrabajan == null || miembrosTrabajan == 0) {
                                    Materialize.toast('Debe indicar el número de personas de su hogar que trabajan en el campo 12', 4000);
                                    return false;
                                } else if (comparacionHogarTrabajan) {
                                    Materialize.toast('El número de personas de su hogar que trabajan no puede ser superior al total de personas que componen su hogar en el campo 11 y 12', 4000);
                                    return false;
                                } else if (miembrosBuscan == null || miembrosBuscan == 0) {
                                    Materialize.toast('Debe indicar el número de personas de su hogar que buscan trabajo en el campo 13', 4000);
                                    return false;
                                } else if (comparacionHogarBuscan) {
                                    Materialize.toast('El número de personas de su hogar buscan trabajo no puede ser superior al total de personas que componen su hogar en el campo 11 y 13', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesEnfermedad) {
                                    Materialize.toast('Debe indicar si alguna persona de su hogar sufre alguna enfermedad o discapacidad en el campo 14', 4000);
                                    return false;
                                } else if (confirmacionEnfermedad && (numeroEnfermos == null || numeroEnfermos == 0)) {
                                    Materialize.toast('Debe indicar el número de personas enfermas o discapacitadas de su hogar en el campo 15', 4000);
                                    return false;
                                } else if (cargasLegales == null || cargasLegales == 0) {
                                    Materialize.toast('Debe indicar el número de personas que son cargas legales en el campo 16', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesProveedor) {
                                    Materialize.toast('Debe indicar si es el proveedor principal de su hogar en el campo 17', 4000);
                                    return false;
                                } else if (vivienda == null || vivienda == 0) {
                                    Materialize.toast('Debe indicar el tipo de vivienda que ocupa en el campo 18', 4000);
                                    return false;
                                } else if (cargo == null || cargo == 0) {
                                    Materialize.toast('Debe indicar el cargo que desempeña en el campo 19', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesPolifuncionalidad) {
                                    Materialize.toast('Debe indicar si tiene un área o servicio especificado por contrato en el campo 20', 4000);
                                    return false;
                                } else if (areaServicio == null || areaServicio == 0) {
                                    Materialize.toast('Debe indicar el área o servicio de sus funciones en el campo 21', 4000);
                                    return false;
                                } else if ((anioAntig == null || anioAntig == 0) || (mesAntig == null || mesAntig == 0)) {
                                    Materialize.toast('Debe indicar años y meses de antigüedad, aunque sean 0, en el campo 22', 4000);
                                    return false;
                                } else if (cantAnio == 0 && cantMes == 0) {
                                    Materialize.toast('La cantidad de años y meses no pueden ser 0 en el campo 22', 4000);
                                    return false;
                                } else if (jornada == null || jornada == 0) {
                                    Materialize.toast('Debe indicar el número de horas semanales en el campo 23', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesHorasHabiles) {
                                    Materialize.toast('Debe indicar si realiza horas extra en días hábiles en el campo 24', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesHorasSabado) {
                                    Materialize.toast('Debe indicar si realiza horas extra los días sábados en el campo 25', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesHorasDomingo) {
                                    Materialize.toast('Debe indicar si realiza horas extra los días domingoa en el campo 26', 4000);
                                    return false;
                                } else if (llamado == null || llamado == 0) {
                                    Materialize.toast('Debe indicar la cantidad de veces que realizó turnos de llamado en el campo 27', 4000);
                                    return false;
                                } else if ((horasTr == null || horasTr == 0) || (minTr == null || minTr == 0)) {
                                    Materialize.toast('Debe indicar horas y minutos de traslado, aunque sean 0, en el campo 28', 4000);
                                    return false;
                                } else if (cantHora == 0 && cantMinuto == 0) {
                                    Materialize.toast('La cantidad de horas y minutos de traslado no pueden ser 0 en el campo 28', 4000);
                                    return false;
                                } else if (!seleccionadoTraslado) {
                                    Materialize.toast('Debe indicar si ha solicitado traslado en el campo 29', 4000);
                                    return false;
                                } else if (confirmacionTraslado && (trasladoVeces == null || trasladoVeces == 0)) {
                                    Materialize.toast('Debe indicar el número de solicitudes de traslado en el campo 30', 4000);
                                    return false;
                                } else if (confirmacionTraslado && !seleccionadoOtorgado) {
                                    Materialize.toast('Debe indicar si le han otorgado traslados en el campo 31', 4000);
                                    return false;
                                } else if (confirmacionOtorgado && (trasladoVecesCon == null || trasladoVecesCon == 0)) {
                                    Materialize.toast('Debe indicar el número de solicitudes aprobadas de traslado en el campo 32', 4000);
                                    return false;
                                } else if (!seleccionadoOptPrMarzo) {
                                    Materialize.toast('Debe indicar si ha solicitado el "préstamo marzo" en el campo 33', 4000);
                                    return false;
                                } else if (!seleccionadoOptSerDental) {
                                    Materialize.toast('Debe indicar si ha utilizado el servicio dental de la empresa en el campo 34', 4000);
                                    return false;
                                } else if (!confirmacionSerDental && !seleccionadoOptOtroServicio) {
                                    Materialize.toast('Debe indicar si se atiende en otra empresa o servicio en el campo 35', 4000);
                                    return false;
                                } else if (!seleccionadoOptBonoNPS) {
                                    Materialize.toast('Debe indicar si ha ganado el bono NPS en el campo 36', 4000);
                                    return false;
                                } else if (!seleccionadoOptCriteriosNPS) {
                                    Materialize.toast('Debe indicar si conoce los criterios de asignación del bono NPS en el campo 37', 4000);
                                    return false;
                                } else if (!seleccionadoOptBonoRenta) {
                                    Materialize.toast('Debe indicar si conoce los criterios de asignación del bono renta variable o bono de producción en el campo 38', 4000);
                                    return false;
                                } else if (!seleccionadoOptAcreditacion) {
                                    Materialize.toast('Debe indicar si ha participado en procesos de acreditación en el campo 39', 4000);
                                    return false;
                                } else if (confirmacionAcreditacion && !seleccionadoOptEstresAcreditacion) {
                                    Materialize.toast('Debe indicar si se ha sentido estresado por causa de la acreditación en el campo 40', 4000);
                                    return false;
                                } else if (confirmacionAcreditacion && !seleccionadoOptDesempeñoAcreditacion) {
                                    Materialize.toast('Debe indicar si ha perjudicadas sus funciones por causa de la acreditación en el campo 41', 4000);
                                    return false;
                                } else if (!seleccionadoOptApoyo) {
                                    Materialize.toast('Debe indicar si la empresa le ha prestado apoyo o ayuda en el campo 42', 4000);
                                    return false;
                                } else if (!seleccionadoOptIndemnizacion) {
                                    Materialize.toast('Debe indicar si ha postulado a retiro voluntario o de indemnización pactada en el campo 43', 4000);
                                    return false;
                                } else if (!seleccionadoOptRetiro) {
                                    Materialize.toast('Debe indicar si ha postulado a retiro voluntario de salida social en el campo 44', 4000);
                                    return false;
                                } else if (satisfaccionEmpresa == null || satisfaccionEmpresa == 0) {
                                    Materialize.toast('Debe indicar si se siente satisfecho al trabajar en la empresa en el campo 45', 4000);
                                    return false;
                                } else if (fiesta == null || fiesta == 0) {
                                    Materialize.toast('Debe indicar si la fiesta de fin de año es relevante en el campo 46', 4000);
                                    return false;
                                } else if (sindicatoMejora == null || sindicatoMejora == 0) {
                                    Materialize.toast('Debe indicar si el sindicato aporta a mejorar las condiciones de los trabajadores en el campo 47', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesOtroSind) {
                                    Materialize.toast('Debe indicar si ha participado en otro sindicato en el campo 48', 4000);
                                    return false;
                                } else if ((anioSin == null || anioSin == 0) || (mesSin == null || mesSin == 0)) {
                                    Materialize.toast('Debe indicar años y meses de antigüedad en el sindicato, aunque sean 0, en el campo 49', 4000);
                                    return false;
                                } else if (cantAnioSin == 0 && cantMesSin == 0) {
                                    Materialize.toast('La cantidad de años y meses de antigüedad en el sindicato no pueden ser 0 en el campo 49', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesOptPartCont) {
                                    Materialize.toast('Debe indicar si forma parte de un contrato colectivo en el campo 50', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesOptConCont) {
                                    Materialize.toast('Debe indicar si conoce su contrato colectivo en el campo 51', 4000);
                                    return false;
                                } else if (!seleccionadoOpcionesOptEstCont) {
                                    Materialize.toast('Debe indicar si conoce los estatutos del sindicato en el campo 52', 4000);
                                    return false;
                                }
                                return true;
                            }
        </script>
    </body>
</html>
