<%-- 
    Document   : altaEquipo
    Created on : 15/12/2024
    Author     : Yessi
--%>

<%@page import="java.sql.PreparedStatement"%>
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
        <title>Añadir Equipo</title>
    </head>
    <body> 
        <%
            Connection conexion = null;
            PreparedStatement pstmtCheck = null;
            PreparedStatement pstmtInsert = null;
            ResultSet rs = null;

            try {
                
                Class.forName("com.mysql.jdbc.Driver");
                
                
                conexion = DriverManager.getConnection("jdbc:mysql://localhost:3306/bdexaruizis175", "root", "");
                Statement s = conexion.createStatement();
                
                request.setCharacterEncoding("UTF-8");

                
                String marca = request.getParameter("marca");
                String modelo = request.getParameter("modelo");
                String precioStr = request.getParameter("precio");

                
                if (marca == null || modelo == null || precioStr == null || 
                    marca.trim().isEmpty() || modelo.trim().isEmpty() || precioStr.trim().isEmpty()) {
                    out.print("<script type=\"text/javascript\">alert('Todos los campos son obligatorios');</script>");
                    out.print("<script>document.location = \"index.jsp\";</script>");
                    return;
                }

                
                int precio;
                try {
                    precio = Integer.parseInt(precioStr);
                } catch (NumberFormatException e) {
                    out.print("<script type=\"text/javascript\">alert('El precio debe ser un número válido');</script>");
                    out.print("<script>document.location = \"index.jsp\";</script>");
                    return;
                }

                
                String consultaCheck = "SELECT COUNT(*) FROM equipos WHERE marca = ? AND modelo = ? ";
                pstmtCheck = conexion.prepareStatement(consultaCheck);
                pstmtCheck.setString(1, marca);
                pstmtCheck.setString(2, modelo);
                rs = pstmtCheck.executeQuery();

                if (rs.next() && rs.getInt(1) > 0) {
                    out.print("<script type=\"text/javascript\">alert('Lo siento, el equipo ya existe');</script>");
                    out.print("<script>document.location = \"index.jsp\";</script>");
                } else {
                   
                    String insercion = "INSERT INTO equipos (marca, modelo, precio) VALUES (?, ?, ?)";
                    pstmtInsert = conexion.prepareStatement(insercion);
                    pstmtInsert.setString(1, marca);
                    pstmtInsert.setString(2, modelo);
                    pstmtInsert.setInt(3, precio);
                    
                  
                    int filasAfectadas = pstmtInsert.executeUpdate();
                    
                    if (filasAfectadas > 0) {
                        out.print("<script type=\"text/javascript\">alert('Equipo añadido exitosamente');</script>");
                        out.print("<script>document.location = \"index.jsp\";</script>");
                    } else {
                        out.print("<script type=\"text/javascript\">alert('Error al añadir el equipo');</script>");
                        out.print("<script>document.location = \"index.jsp\";</script>");
                    }
                }
            } catch (Exception e) {
                
                e.printStackTrace();
                out.print("<script type=\"text/javascript\">alert('Error en la base de datos: " + e.getMessage() + "');</script>");
                out.print("<script>document.location = \"index.jsp\";</script>");
            } finally {
               
                try {
                    if (rs != null) rs.close();
                    if (pstmtCheck != null) pstmtCheck.close();
                    if (pstmtInsert != null) pstmtInsert.close();
                    if (conexion != null) conexion.close();
                } catch (Exception e) {
                    e.printStackTrace();
                }
            }
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
                                    out.print(": " + Vendedor + " </a><br>");
                                    out.print("Rol: Vendedor <br>");

                                } else if (creasesion.getAttribute("administrador") != null && creasesion.getAttribute("nivel") != null) {
                                    Administrador = creasesion.getAttribute("administrador").toString();
                                    nivel2 = creasesion.getAttribute("nivel").toString();
                                    out.print(": " + Administrador + " </a><br>");
                                    out.print("Rol: Administrador <br>");
                                } else {
                                    out.print("<script>location.replace('index2.jsp');</script>");
                                }
                            %>
                        </h2>
                        <ol class="breadcrumb">
                            <li>Consulta de equipos</li>
                            <li class="active">Sistema</li>
                        </ol>
                    </div>
                </div>
            </div>
        </section>        
    </body>
</html>