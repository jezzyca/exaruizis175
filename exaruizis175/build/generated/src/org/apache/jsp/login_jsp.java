package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.SQLException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.DriverManager;
import java.sql.Connection;
import conexion.Operaciones;
import java.util.Date;

public final class login_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>Ingresando al sistema</title>        \n");
      out.write("        \n");
      out.write("         \n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Raleway:400,300,500,700,900' rel='stylesheet' type='text/css'>\n");
      out.write("        <!-- Material Icons CSS -->\n");
      out.write("        <link href=\"assets/fonts/iconfont/material-icons.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- FontAwesome CSS -->\n");
      out.write("        <link href=\"assets/fonts/font-awesome/css/font-awesome.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- magnific-popup -->\n");
      out.write("        <link href=\"assets/css/magnific-popup.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- flexslider -->\n");
      out.write("        <link href=\"assets/flexSlider/flexslider.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- materialize -->\n");
      out.write("        <link href=\"assets/materialize/css/materialize.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Bootstrap -->\n");
      out.write("        <link href=\"assets/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- shortcodes -->\n");
      out.write("        <link href=\"assets/css/shortcodes.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/css/page-tittle.css\" rel=\"stylesheet\">\n");
      out.write("        <link href=\"assets/css/login.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Main Style CSS -->\n");
      out.write("        <link href=\"assets/css/style.css\" rel=\"stylesheet\">\n");
      out.write("        <!-- Creative CSS -->\n");
      out.write("        <link href=\"assets/css/creative.css\" rel=\"stylesheet\">               \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("          \n");
      out.write("        <!--header start-->\n");
      out.write("        <header id=\"header\" class=\"tt-nav transparent-header nav-border-bottom\">\n");
      out.write("\n");
      out.write("            <div class=\"header-sticky light-header\">\n");
      out.write("\n");
      out.write("                <div class=\"container\">                  \n");
      out.write("                    <div id=\"materialize-menu\" class=\"menuzord\">\n");
      out.write("\n");
      out.write("                        <!--logo start-->\n");
      out.write("                        <a href=\"index.jsp\" class=\"logo-brand\">\n");
      out.write("                            <img class=\"logo-dark\" src=\"assets/images/logomaug-blue.png\" alt=\"\"/>\n");
      out.write("                            <img class=\"logo-light\" src=\"assets/images/logomaug.png\" alt=\"\"/>\n");
      out.write("                        </a>\n");
      out.write("                        <!--logo end-->\n");
      out.write("\n");
      out.write("                        <!-- menu start-->\n");
      out.write("                        <ul class=\"menuzord-menu pull-right light\">\n");
      out.write("                             <li><a href=index.jsp>Inicio</a></li>                                                     \n");
      out.write("                            <li><a href=index2.jsp>Notas</a></li>                                                     \n");
      out.write("                        </ul>\n");
      out.write("                        <!-- menu end-->\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("\n");
      out.write("        </header>\n");
      out.write("        <!--header end-->\n");
      out.write("        ");

            Connection con       = null;
            PreparedStatement ps = null;
            ResultSet rs         = null;

            String driverName = "com.mysql.jdbc.Driver";
            String url        = "jdbc:mysql://localhost:3306/bdexaruizis175";
            String user       = "root";
            String password   = "";
            String sql        = "select usertype from usuarios";
            
            try {
                Class.forName(driverName);
                con = DriverManager.getConnection(url, user, password);
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();
        
      out.write("\n");
      out.write("        <section class=\"section-padding banner-wrapper login-alt purple-1 banner-6 fullscreen-banner\">\n");
      out.write("            <div class=\"container\">\n");
      out.write("                <div class=\"login-wrapper\">\n");
      out.write("                    <div class=\"card-wrapper\"></div>\n");
      out.write("                    <div class=\"card-wrapper\">\n");
      out.write("                        <h1 class=\"title\">Ingreso al Sistema</h1>\n");
      out.write("                        <form   action=\"login.jsp\" method=\"post\">                            \n");
      out.write("                            <div class=\"input-container\">\n");
      out.write("                                <select name=\"user\"  class=\"browser-default\">\n");
      out.write("                                    <option name=\"rol\" value=\"\" disabled selected>Ingresar como</option>\n");
      out.write("                                    ");
    while (rs.next()) {
                                            String usertype = rs.getString("usertype");
                                    
      out.write("\n");
      out.write("                                    <option value=\"");
      out.print(usertype);
      out.write('"');
      out.write('>');
      out.print(usertype);
      out.write("</option>\n");
      out.write("                                    ");

                                            }
                                        } catch (SQLException sqe) {

                                            out.println("home" + sqe);
                                        }
                                    
      out.write("\n");
      out.write("                                </select> \n");
      out.write("                                <div class=\"bar\"></div>\n");
      out.write("                            </div> \n");
      out.write("                            <div class=\"input-container\">\n");
      out.write("                                <input type=\"text\" id=\"username\" name=\"usuario\"  required=\"required\" />                                      \n");
      out.write("                                <label for=\"username\">Username</label>\n");
      out.write("                                <div class=\"bar\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"input-container\">\n");
      out.write("                                <input type=\"password\" id=\"password\" name=\"pwd\" required=\"required\"/>\n");
      out.write("                                <label for=\"password\">Password</label>\n");
      out.write("                                <div class=\"bar\"></div>\n");
      out.write("                            </div>\n");
      out.write("                            <div class=\"button-container\">\n");
      out.write("                                <button class=\"btn waves-effect waves-light center\" type=\"submit\" name=\"Aceptar\">\n");
      out.write("                                    Ingresar\n");
      out.write("                                    <i class=\"material-icons\">check_circle</i>\n");
      out.write("                                </button>\n");
      out.write("                                <br>\n");
      out.write("                            </div>\n");
      out.write("                        </form>\n");
      out.write("                        ");

                            Operaciones op = new Operaciones();
                            if (request.getParameter("Aceptar") != null) {

                                String nombre = request.getParameter("usuario");
                                String contra = request.getParameter("pwd");
                                String rol    = request.getParameter("usertype");
                                HttpSession lacceso  = request.getSession();
                                HttpSession lacceso2 = request.getSession();
                                
                                switch (op.logear(nombre, contra)) {
                                    case 1:

                                        lacceso.setAttribute("acceso", nombre);
                                        lacceso.setAttribute("nivel", 1);                                       
                                        response.sendRedirect("index.jsp");
                                        break;
                                    case 2:
                                        lacceso2.setAttribute("administrador", nombre);
                                        lacceso2.setAttribute("nivel", 2);
                                        response.sendRedirect("index2.jsp");
                                        break;
                                    default:
                                        out.println("<br><h5 class='center' style='color:#d22a3a;'>El usuario no existe o la contraseña es incorrecta!!!</h5>");
                                        break;
                                }
                            }
                            if (request.getParameter("cerrar") != null) {
                                session.invalidate();
                            }
                        
      out.write("\n");
      out.write("                        ");
       /*===  crear cookie  ===*/   
                            /*
                                Date fechaActual = new Date();
                                String fechaUltimoAcceso = fechaActual.toString();
                                Cookie cookieFecha = new Cookie("ultimoAcceso", fechaUltimoAcceso);
                                cookieFecha.setPath("/");
                                cookieFecha.setMaxAge(60 * 60 * 24);
                            */
                        
      out.write("\n");
      out.write("                    </div>                   \n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </section>\n");
      out.write("\n");
      out.write("        <!-- Preloader -->\n");
      out.write("        <div id=\"preloader\">\n");
      out.write("            <div class=\"preloader-position\"> \n");
      out.write("                <img src=\"assets/img/logo-colored.png\" alt=\"Acceso\" >\n");
      out.write("                <div class=\"progress\">\n");
      out.write("                    <div class=\"indeterminate\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <!-- End Preloader -->\n");
      out.write("\n");
      out.write("        <!-- jQuery -->\n");
      out.write("        <script src=\"assets/js/jquery-2.1.3.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("        <script src=\"assets/materialize/js/materialize.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/jquery.easing.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/smoothscroll.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/jquery.inview.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/menuzord.js\"></script>\n");
      out.write("        <script src=\"assets/js/equalheight.js\"></script>\n");
      out.write("        <script src=\"assets/js/imagesloaded.js\"></script>\n");
      out.write("        <script src=\"assets/js/jquery.stellar.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/jquery.countTo.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/jquery.shuffle.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/masonry.pkgd.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/twitterFetcher.min.js\"></script>\n");
      out.write("        <script src=\"assets/flexSlider/jquery.flexslider-min.js\"></script>\n");
      out.write("        <script src=\"assets/js/jquery.magnific-popup.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/scripts.js\"></script>\n");
      out.write("\n");
      out.write("    </body>\n");
      out.write("</html>\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
