<%-- 
    Document   : detalleEquipo
    Created on : 28-02-2018, 23:17:43
    Author     : Yessi
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Detalle Equipo</title>  
        <link href='https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900' rel='stylesheet' type='text/css'>
        <link href="assets/fonts/iconfont/material-icons.css" rel="stylesheet">
        <link href="assets/fonts/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="assets/css/magnific-popup.css" rel="stylesheet">
        <link href="assets/flexSlider/flexslider.css" rel="stylesheet">
        <link href="assets/materialize/css/materialize.min.css" rel="stylesheet">
        <link href="assets/css/bootstrap.min.css" rel="stylesheet">
        <link href="assets/css/shortcodes.css" rel="stylesheet">
        <link href="assets/css/page-tittle.css" rel="stylesheet">
        <link href="assets/css/header.css" rel="stylesheet"> 
        <link href="assets/css/style.css" rel="stylesheet">
        <link href="assets/css/creative.css" rel="stylesheet">
    </head>
    <body>
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
                            <li><a href="indexRH.jsp" style="color: blue">Inicio</a></li>
                            <li class="active">Homework</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>
        <%
            Class.forName("com.mysql.jdbc.Driver");
            Connection conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdexaruizis175", "root", "");
            Statement s = conexion.createStatement();

            request.setCharacterEncoding("UTF-8");

            ResultSet listado = s.executeQuery("SELECT * FROM equipos WHERE idEquipo='" + request.getParameter("idEquipo") + "'");

            listado.next();
        %>  
        <section class="section-padding ">
            <div class="container">
                <div class="col-md-8 col-md-offset-2">                                                                     
                    <h4 class="section-title text-uppercase center">Equipo</h4>
                    <div class="row col m3"></div>
                    <form>
                        <div class="col m6 card-panel grey lighten-5">
                            <h5 class="section-title text-uppercase center"><%=listado.getString("marca")%></h5>
                            <p>
                                <i class="material-icons teal-text">label_outline</i> Código del Equipo: 
                                <b><%=listado.getString("idEquipo")%></b>
                            </p>
                            <p>
                                <i class="material-icons teal-text">account_box</i> Marca: 
                                <b><%=listado.getString("marca")%></b>
                            </p>
                            <p>
                                <i class="material-icons teal-text">label</i> Precio: 
                                <b><%=listado.getString("precio")%></b>
                            </p>                     
                            <br>
                            <p class="center">
                                <a href="indexRH.jsp" class="btn waves-effect waves-light center">
                                    Aceptar
                                    <i class="material-icons">check_circle</i>
                                </a>
                            </p>
                            <br>                                                                                                                       
                        </div>
                    </form>                                                
                </div>
            </div>
        </section>       
        <% conexion.close();%>




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
