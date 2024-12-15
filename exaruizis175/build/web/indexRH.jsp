<%-- 
    Document   : index2
    Created on : 28-02-2018, 19:21:43
    Author     : Yessi
--%>

<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Principal</title>  
        <link href='https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900' rel='stylesheet' type='text/css'>
        <!-- Material Icons CSS -->
        <link href="assets/fonts/iconfont/material-icons.css" rel="stylesheet">
        <!-- FontAwesome CSS -->
        <link href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <!-- magnific-popup -->
        <link href="assets/css/magnific-popup.css" rel="stylesheet">
        <!-- flexslider -->
        <link href="assets/flexSlider/flexslider.css" rel="stylesheet">
        <!-- materialize -->
        <link href="assets/materialize/css/materialize.min.css" rel="stylesheet">
        <!-- Bootstrap -->
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <!-- shortcodes -->
        <link href="assets/css/shortcodes.css" rel="stylesheet">
        <link href="assets/css/page-tittle.css" rel="stylesheet">
        <link href="assets/css/header.css" rel="stylesheet">

        <!-- Main Style CSS -->
        <link href="assets/css/style.css" rel="stylesheet">
        <!-- Creative CSS -->
        <link href="assets/css/creative.css" rel="stylesheet">
    </head>
    <body id="top" class="has-header-search">



        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdexaruizis175", "root", "");
            Statement s = conexion.createStatement();
            request.setCharacterEncoding("UTF-8");
            ResultSet listado = s.executeQuery("SELECT * FROM equipos");
        %>

        <section class="page-title ptb-50">
            <div class="container">
                <div class="row">
                    <div class="col-md-12">
                        <h2>
                            <%
                                HttpSession creasesion = request.getSession();
                                String Vendedor;
                                String nivel;
                                String Administrador;
                                String nivel2;
                                if (creasesion.getAttribute("acceso") != null && creasesion.getAttribute("nivel") != null) {
                                    Vendedor = creasesion.getAttribute("acceso").toString();
                                    nivel = creasesion.getAttribute("nivel").toString();
                                    out.print("<a href='loginRH.jsp?cerrar=true'> Salir: " + Vendedor + " </a><br>");
                                    out.print("Rol: Vendedor <br>");

                                } else if (creasesion.getAttribute("administrador") != null && creasesion.getAttribute("nivel") != null) {
                                    Administrador = creasesion.getAttribute("administrador").toString();
                                    nivel2 = creasesion.getAttribute("nivel").toString();
                                    out.print("<a href='loginRH.jsp?cerrar=true'> Salir: " + Administrador + " </a><br>");
                                    out.print("Rol: Administrador <br>");

                                } else {
                                    out.print("<script>location.replace('loginRH.jsp');</script>");
                                }
                            %>
                        </h2>
                        <ol class="breadcrumb">
                            <li><a href="indexRH.jsp" style="color: blue">Inicio </a></li>
                            <li class="active">Homeworking</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <section class="section-padding ">
            <div class="container">
                <div class="row mt-50">
                    <div class="col-md-8 col-md-offset-2">
                        <h3 class="section-title text-uppercase center">HOMEWORKING</h3>
                        <div class="mt-30"></div>

                        <div class="row">
                            <form class="bordered centered" method="post" action="buscaEquipoRH.jsp">
                                <tr>
                                    <td>
                                        <div class="input-field ">
                                            <input type="text" name="marcaequipo" id="marcaequipo">
                                            <label for="marcaequipo">Nombre de Equipo</label>
                                        </div>
                                    </td>
                                    <td>
                                        <button class="btn waves-effect waves-light center" type="submit" name="aceptar">
                                            <i class="fa fa-search"></i> Buscar
                                        </button>
                                        <br><br>
                                    </td>
                                </tr>
                            </form>
                        </div>

                        <!-- Formulario para agregar un nuevo equipo -->
                        <h2 class="mt-4">Registrar Nuevo Equipo</h2>

                        <form method="post" action="registrarEquipoRH.jsp" class="form-inline">
                            <div class="form-group">
                                <label for="marca" style="font-size: 17px;">Marca:</label>
                                <input type="text" class="form-control ml-2" name="marca" id="marca" required>
                            </div>
                            <div class="form-group ml-4">
                                <label for="modelo" style="font-size: 17px;">Modelo:</label>
                                <input type="text" class="form-control ml-2" name="modelo" id="modelo" required>
                            </div>
                            <div class="form-group ml-4">
                                <label for="precio" style="font-size: 17px;">Precio:</label>
                                <input type="number" class="form-control ml-2" name="precio" id="precio" required>
                            </div>
                            <button type="submit" class="btn btn-primary ml-4">Registrar</button>
                        </form>

                        <!-- Tabla para listar equipos -->
                        <h3 class="mt-5">Listado de Equipos</h3>
                        <table class="table table-striped">
                            <thead>
                                <tr>
                                    <th>ID</th>
                                    <th>Marca</th>
                                    <th>Modelo</th>
                                    <th>Precio</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    while (listado.next()) {
                                %>
                                <tr>
                                    <td><%= listado.getInt("idEquipo")%></td>
                                    <td><%= listado.getString("marca")%></td>
                                    <td><%= listado.getString("modelo")%></td>
                                    <td>$<%= listado.getDouble("precio")%></td>
                                    <td>
                                        <!-- Formulario para editar equipo -->
                                        <form method="post" action="editarEquipoRH.jsp" style="display: inline-block;">
                                            <input type="hidden" name="idEquipo" value="<%= listado.getInt("idEquipo")%>">
                                            <button type="submit" class="btn btn-warning">Editar</button>
                                        </form>
                                        <!-- Formulario para eliminar equipo -->
                                        <form method="post" action="eliminarEquipoRH.jsp" style="display: inline-block;">
                                            <input type="hidden" name="idEquipo" value="<%= listado.getInt("idEquipo")%>">
                                            <button type="submit" class="btn btn-danger">Eliminar</button>
                                        </form>
                                    </td>
                                </tr>
                                <%
                                    }
                                %>
                            </tbody>
                        </table>


                        <%
                            conexion.close();
                        %>
                        <!-- jQuery -->
                        <script src="assets/js/jquery-2.1.3.min.js"></script>
                        <script src="assets/js/bootstrap.min.js"></script>
                        <script src="assets/materialize/js/materialize.min.js"></script>
                        <script src="assets/js/jquery.easing.min.js"></script>
                        <script src="assets/js/smoothscroll.min.js"></script>
                        <script src="assets/js/jquery.inview.min.js"></script>
                        <script src="assets/js/menuzord.js"></script>
                        <script src="assets/js/equalheight.js"></script>
                        <script src="assets/js/imagesloaded.js"></script>
                        <script src="assets/js/jquery.stellar.min.js"></script>
                        <script src="assets/js/jquery.countTo.min.js"></script>
                        <script src="assets/js/jquery.shuffle.min.js"></script>
                        <script src="assets/js/masonry.pkgd.min.js"></script>
                        <script src="assets/js/twitterFetcher.min.js"></script>
                        <script src="assets/flexSlider/jquery.flexslider-min.js"></script>
                        <script src="assets/js/jquery.magnific-popup.min.js"></script>
                        <script src="assets/js/scripts.js"></script>
               </body>
         </html>
