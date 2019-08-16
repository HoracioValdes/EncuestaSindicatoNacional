<%-- 
    Document   : index
    Created on : 01-07-2018, 19:22:00
    Author     : Horacio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
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
    <body>
        <div class="container">

            <div class="row">
                <nav>
                    <div class="nav-wrapper blue darken-3">
                        <a href="index.jsp">&nbsp;<img class="responsive-img" src="img/logo.png" width="120px" style="margin-top: 5px">&nbsp;</a>
                    </div>
                </nav>
            </div>

            <div class="col s6 offset-s4">
                <div class="row">
                    <img style="height: 200px; display: block; margin: auto;" class="responsive-img card-panel" src="img/Logo sindicato interempresa.png">
                </div>
            </div>

            <div class="row">
                <div class="col s10 offset-s1">
                    <h2><b>Formulario de Encuesta</b></h2>
                    <p class="flow-text" align="justify">Estimada/o socia/o,</p>
                    <p class="flow-text" align="justify">El siguiente formulario tiene como objetivo contribuir al proceso de Negociación Colectiva llevada a cabo por el Sindicato Nacional de Trabajadores del Área de la Salud Privada.</p>
                    <p class="flow-text" align="justify">Para responder le solicitamos registrarse ingresando su correo electrónico y creando una contraseña. Le recordamos que la información entregada por usted será tratada con estricta confidencialidad y sólo tiene como objetivo un análisis general de la situación laboral de las socias y socios del sindicato.</p>
                    <p class="flow-text" align="justify">Una vez registrado, le solicitamos responder la totalidad de preguntas incluidas en este formulario web. Sus respuestas serán de gran importancia para que este nuevo proyecto colectivo entregue mayores beneficios y mejore nuestras condiciones de trabajo. Esta información permitirá también mejorar la labor del sindicato y acercar su trabajo a las socias y socios.</p>
                    <p class="flow-text" align="justify">¡Desde ya agradecemos su colaboración y participación!</p>
                    <p class="flow-text" align="justify"><b>IMPORTANTE: Este formulario se encontrará disponible hasta el viernes 29 de marzo.</b></p>
                </div>
            </div>

            <div class="col s12">
                <h4 class="center-align"><b>Registro</b></h4>
            </div>
            <div class="col s6 offset-s4">
                <div class="row">
                    <form class="col s10 offset-s1 card-panel z-depth-5"
                          action="registro.do" method="post">
                        <div class="row">
                            <div class="input-field col s10">
                                <i class="material-icons prefix">assignment_ind</i>
                                <input id="rut" type="text" class="validate" maxlength="12" placeholder="Ingrese el rut sin puntos (.) ni guión (-)"
                                       name="txtRut" onblur="limpiar_rut(this.value);formato_rut(this.value);"/>
                                <label for="rut">Rut</label>
                            </div>
                            <div class="input-field col s10">
                                <i class="material-icons prefix">drafts</i>
                                <input id="correo" type="text" class="validate" maxlength="100" name="txtCorreo" />
                                <label for="correo">Correo</label>
                            </div>
                            <div class="input-field col s10">
                                <i class="material-icons prefix">lock_outline</i>
                                <input id="clave" type="password" class="validate" maxlength="20" placeholder="Máximo 20 caracteres" name="txtClave">
                                <button style="margin-left: 45px;" id= "show_password" class="btn waves-effect blue lighten-1" type="button"><i class="material-icons right">loupe</i></button>
                                <label for="clave">Clave</label>
                            </div>
                            <div class="input-field col s10">
                                <i class="material-icons prefix">lock_outline</i>
                                <input id="claveDos" type="password" class="validate" maxlength="20" name="txtClaveDos">
                                <button style="margin-left: 45px;" id= "show_password_dos" class="btn waves-effect blue lighten-1" type="button"><i class="material-icons right">loupe</i></button>
                                <label for="claveDos">Repetir clave</label>
                            </div>
                            <div class="center-align">    
                                <button style="margin-top: 10px;" class="btn waves-effect blue lighten-1" type="submit" name="action" onclick="return validandoRegistro();">Registrar
                                    <i class="material-icons right">send</i>
                                </button>
                            </div>    
                        </div>
                    </form>

                </div>
                <div class="red-text center-align">
                    <p class="flow-text">${requestScope.msg}</p>
                </div>
            </div>

            <div class="col s12">
                <h4 class="center-align"><b>Ingreso</b></h4>
            </div>
            <div class="col s6 offset-s3">
                <div class="row">
                    <form class="col s10 offset-s1 card-panel z-depth-5"
                          action="ingreso.do" method="post">
                        <div class="row">
                            <div class="input-field col s6">
                                <i class="material-icons prefix">drafts</i>
                                <input id="correoIngreso" type="text" class="validate" maxlength="100"
                                       name="txtCorreoIngreso" />
                                <label for="correoIngreso">Correo</label>
                            </div>
                            <div class="input-field col s6">
                                <i class="material-icons prefix">lock_outline</i>
                                <input id="claveIngreso" type="password" class="validate" maxlength="20" name="txtClaveIngreso">
                                <button id= "show_password_tres" class="btn waves-effect blue lighten-1" type="button"><i class="material-icons right">loupe</i></button>
                                <label for="claveIngreso">Clave</label>
                            </div>
                            
                            <div class="center-align">
                                <button style="margin-top: 10px;" class="btn waves-effect blue lighten-1" type="submit" name="action" onclick="return validandoIngreso();">Ingresar
                                    <i class="material-icons right">send</i>
                                </button>
                            </div>    
                        </div>
                    </form>

                </div>
                <div class="red-text center-align">
                    <p class="flow-text">${requestScope.msgDos}</p>
                </div>
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
        </div>
        <!--Import jQuery before materialize.js-->
        <script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
        <script type="text/javascript" src="js/materialize.min.js"></script>
        <script>
                                    $(function () {

                                        $(".button-collapse").sideNav();
                                    });
        </script>
        <script>
            $("#show_password").hover(
                    function functionName() {
                        //Change the attribute to text
                        $("#clave").attr("type", "text");
                        $(".glyphicon")
                                .removeClass("glyphicon-eye-open")
                                .addClass("glyphicon-eye-close");
                    },
                    function () {
                        //Change the attribute back to password
                        $("#clave").attr("type", "password");
                        $(".glyphicon")
                                .removeClass("glyphicon-eye-close")
                                .addClass("glyphicon-eye-open");
                    }
            );

            $("#show_password_dos").hover(
                    function functionName() {
                        //Change the attribute to text
                        $("#claveDos").attr("type", "text");
                        $(".glyphicon")
                                .removeClass("glyphicon-eye-open")
                                .addClass("glyphicon-eye-close");
                    },
                    function () {
                        //Change the attribute back to password
                        $("#claveDos").attr("type", "password");
                        $(".glyphicon")
                                .removeClass("glyphicon-eye-close")
                                .addClass("glyphicon-eye-open");
                    }
            );

            $("#show_password_tres").hover(
                    function functionName() {
                        //Change the attribute to text
                        $("#claveIngreso").attr("type", "text");
                        $(".glyphicon")
                                .removeClass("glyphicon-eye-open")
                                .addClass("glyphicon-eye-close");
                    },
                    function () {
                        //Change the attribute back to password
                        $("#claveIngreso").attr("type", "password");
                        $(".glyphicon")
                                .removeClass("glyphicon-eye-close")
                                .addClass("glyphicon-eye-open");
                    }
            );

            function limpiar_rut(rut)
            {
                var rutLimpio = rut;
                //Definimos los caracteres a eliminar
                var eliminar = ".-";
                //Los eliminamos
                for (var i = 0; i < eliminar.length; i++) {
                    rutLimpio = rutLimpio.replace(new RegExp("\\" + eliminar[i], 'gi'), '');
                }
                //Pasamos al campo el valor limpio
                document.getElementById("rut").value = rutLimpio.toUpperCase();
            }

            function formato_rut(rut) {
                var sRut1 = rut; //Contador de posición
                var nPos = 0; //Guarda el rut invertido con los puntos y el guión agregado
                var sInvertido = ""; //Guarda el resultado final del rut como debe ser
                var sRut = "";
                for (var i = sRut1.length - 1; i >= 0; i--) {
                    sInvertido += sRut1.charAt(i);
                    if (i == sRut1.length - 1) {
                        sInvertido += "-";
                    } else if (nPos == 3) {
                        sInvertido += ".";
                        nPos = 0;
                    }
                    nPos++;
                }
                for (var j = sInvertido.length - 1; j >= 0; j--) {
                    if (sInvertido.charAt(sInvertido.length - 1) != ".") {
                        sRut += sInvertido.charAt(j);
                    } else if (j != sInvertido.length - 1) {
                        sRut += sInvertido.charAt(j);
                    }
                }
                //Pasamos al campo el valor formateado
                document.getElementById("rut").value = sRut.toUpperCase();
            }

            function validandoRegistro()
            {
                var campoRut = document.getElementById("rut").value;
                var campoCorreo = document.getElementById("correo").value;
                var campoClave = document.getElementById("clave").value;
                var campoClaveDos = document.getElementById("claveDos").value;

                if (campoRut == null || campoRut.length == 0 || /^\s+$/.test(campoRut)) {
                    Materialize.toast('El campo que indica su rut no puede estar vacío', 4000);
                    return false;
                } else if (campoRut.length < 11) {
                    Materialize.toast('El campo que indica su rut no puede tener menos de 11 caracteres', 4000);
                    return false;
                } else if (campoRut.length > 12) {
                    Materialize.toast('El campo que indica su rut no puede tener más de 12 caracteres', 4000);
                    return false;
                } else if (valrut(campoRut) == false) {
                    Materialize.toast('El rut ingresado no es válido', 4000);
                    return false;
                } else if (campoCorreo == null || campoCorreo.length == 0 || /^\s+$/.test(campoCorreo)) {
                    Materialize.toast('El campo que indica su correo no puede estar vacío', 4000);
                    return false;
                } else if (valCorreo(campoCorreo) === false) {
                    Materialize.toast('El correo ingresado no es válido', 4000);
                    return false;
                } else if (campoClave == null || campoClave.length == 0 || /^\s+$/.test(campoClave)) {
                    Materialize.toast('El campo que indica su clave no puede estar vacío', 4000);
                    return false;
                } else if (campoClave.length > 20) {
                    Materialize.toast('El campo que indica su clave no puede tener más de 20 caracteres', 4000);
                    return false;
                } else if (campoClaveDos == null || campoClaveDos.length == 0 || /^\s+$/.test(campoClaveDos)) {
                    Materialize.toast('El campo que indica su segunda clave no puede estar vacío', 4000);
                    return false;
                } else if (campoClaveDos.length > 20) {
                    Materialize.toast('El campo que indica su segunda clave no puede tener más de 20 caracteres', 4000);
                    return false;
                } else if (campoClave !== campoClaveDos) {
                    Materialize.toast('La verificación de su clave no es correcta', 4000);
                    return false;
                }
                return true;
            }

            function validandoIngreso()
            {
                var campoCorreoIngreso = document.getElementById("correoIngreso").value;
                var campoClaveIngreso = document.getElementById("claveIngreso").value;

                if (campoCorreoIngreso == null || campoCorreoIngreso.length == 0 || /^\s+$/.test(campoCorreoIngreso)) {
                    Materialize.toast('El campo que indica su correo no puede estar vacío', 4000);
                    return false;
                } else if (valCorreo(campoCorreoIngreso) === false) {
                    Materialize.toast('El correo ingresado no es válido', 4000);
                    return false;
                } else if (campoClaveIngreso == null || campoClaveIngreso.length == 0 || /^\s+$/.test(campoClaveIngreso)) {
                    Materialize.toast('El campo que indica su clave no puede estar vacío', 4000);
                    return false;
                } else if (campoClaveIngreso.length > 20) {
                    Materialize.toast('El campo que indica su clave no puede tener más de 20 caracteres', 4000);
                    return false;
                }
                return true;
            }

            function valrut(campoRut) {

                var rut = campoRut;
                var crut;
                //limpieza
                var eliminar = ".-";
                //Los eliminamos
                for (var i = 0; i < eliminar.length; i++) {
                    rut = rut.replace(new RegExp("\\" + eliminar[i], 'gi'), '');
                }

                var tmpstr = "";
                var intlargo = rut;
                if (intlargo.length > 0)
                {
                    crut = rut;
                    var largo = crut.length;
                    if (largo < 2)
                    {
                        return false;
                    }
                    for (i = 0; i < crut.length; i++)
                        if (crut.charAt(i) != ' ' && crut.charAt(i) != '.' && crut.charAt(i) != '-')
                        {
                            tmpstr = tmpstr + crut.charAt(i);
                        }
                    var rutSuma = tmpstr;
                    crut = tmpstr;
                    largo = crut.length;
                    if (largo > 2)
                        rutSuma = crut.substring(0, largo - 1);
                    else
                        rutSuma = crut.charAt(0);
                    var dv = crut.charAt(largo - 1);
                    if (rutSuma == null || dv == null)
                        return false;
                    var dvr = '0';
                    var suma = 0;
                    var mul = 2;
                    for (i = rutSuma.length - 1; i >= 0; i--)
                    {
                        suma = suma + rutSuma.charAt(i) * mul;
                        if (mul == 7)
                            mul = 2;
                        else
                            mul++;
                    }

                    var res = suma % 11;
                    if (res == 1)
                        dvr = 'k';
                    else if (res == 0)
                        dvr = '0';
                    else
                    {
                        var dvi = 11 - res;
                        dvr = dvi + "";
                    }

                    if (dvr != dv.toLowerCase())
                    {
                        return false;
                    }
                    return true;
                }
            }

            function valCorreo(campoCorreo) {
                var regex = /^(([^<>()[\]\.,;:\s@\"]+(\.[^<>()[\]\.,;:\s@\"]+)*)|(\".+\"))@(([^<>()[\]\.,;:\s@\"]+\.)+[^<>()[\]\.,;:\s@\"]{2,})$/i;
                return regex.test(campoCorreo) ? true : false;
            }
        </script>
    </body>
</html>
