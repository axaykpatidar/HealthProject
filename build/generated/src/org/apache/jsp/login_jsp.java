package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.*;
import beans.Admin;
import beans.User;
import daos.AdminDao;
import daos.UserDao;

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
      out.write(" \n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("        <meta name=\"description\" content=\"\">\n");
      out.write("        <meta name=\"author\" content=\"\">\n");
      out.write("\n");
      out.write("        <title>Login Page</title>\n");
      out.write("        <link rel=\"icon\" type=\"image/ico\" href=\"assets/images/c3.ico\"> \n");
      out.write("\n");
      out.write("        <!-- Bootstrap core CSS -->\n");
      out.write("        <link href=\"assets/css/bootstrap.min.css\" rel=\"stylesheet\">\n");
      out.write("\n");
      out.write("        <!-- Custom styles for this template -->\n");
      out.write("        <link href=\"assets/css/shop-homepage.css\" rel=\"stylesheet\">\n");
      out.write("        <link rel=\"stylesheet\" href=\"assets/css/animate.min.css\">\n");
      out.write("\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "base.jsp", out, false);
      out.write("\n");
      out.write("        <style>\n");
      out.write("            body{\n");
      out.write("    background: -webkit-linear-gradient(left, #0072ff, #00c6ff);\n");
      out.write("}\n");
      out.write(".contact-form{\n");
      out.write("    background: #fff;\n");
      out.write("    margin-top: 10%;\n");
      out.write("    margin-bottom: 5%;\n");
      out.write("    width: 70%;\n");
      out.write("}\n");
      out.write(".contact-form .form-control{\n");
      out.write("    border-radius:1rem;\n");
      out.write("}\n");
      out.write(".contact-image{\n");
      out.write("    text-align: center;\n");
      out.write("}\n");
      out.write(".contact-image img{\n");
      out.write("    border-radius: 6rem;\n");
      out.write("    width: 11%;\n");
      out.write("    margin-top: -3%;\n");
      out.write("    transform: rotate(29deg);\n");
      out.write("}\n");
      out.write(".contact-form form{\n");
      out.write("    padding: 14%;\n");
      out.write("}\n");
      out.write(".contact-form form .row{\n");
      out.write("    margin-bottom: -7%;\n");
      out.write("}\n");
      out.write(".contact-form h3{\n");
      out.write("    margin-bottom: 8%;\n");
      out.write("    margin-top: -10%;\n");
      out.write("    text-align: center;\n");
      out.write("    color: #0062cc;\n");
      out.write("}\n");
      out.write(".contact-form .btnContact {\n");
      out.write("    width: 50%;\n");
      out.write("    border: none;\n");
      out.write("    border-radius: 1rem;\n");
      out.write("    padding: 1.5%;\n");
      out.write("    background: #dc3545;\n");
      out.write("    font-weight: 600;\n");
      out.write("    color: #fff;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write(".btnContactSubmit\n");
      out.write("{\n");
      out.write("    width: 50%;\n");
      out.write("    border-radius: 1rem;\n");
      out.write("    padding: 1.5%;\n");
      out.write("    color: #fff;\n");
      out.write("    background-color: #0062cc;\n");
      out.write("    border: none;\n");
      out.write("    cursor: pointer;\n");
      out.write("}\n");
      out.write("       \t.login-form {\n");
      out.write("\t\twidth: 340px;\n");
      out.write("    \tmargin: 50px auto;\n");
      out.write("\t}\n");
      out.write("    .login-form form {\n");
      out.write("    \tmargin-bottom: 15px;\n");
      out.write("        background: #f7f7f7;\n");
      out.write("        box-shadow: 0px 2px 2px rgba(0, 0, 0, 0.3);\n");
      out.write("        padding: 30px;\n");
      out.write("    }\n");
      out.write("    .login-form h2 {\n");
      out.write("        margin: 0 0 15px;\n");
      out.write("    }\n");
      out.write("    .form-control, .btn {\n");
      out.write("        min-height: 38px;\n");
      out.write("        border-radius: 2px;\n");
      out.write("    }\n");
      out.write("    .btn {        \n");
      out.write("        font-size: 15px;\n");
      out.write("        font-weight: bold;\n");
      out.write("    }\n");
      out.write("        </style>\n");
      out.write("     \n");
      out.write("        <script> \n");
      out.write("        function checkRole() { \n");
      out.write("            var ele = document.getElementsByName('role'); \n");
      out.write("            var userid = document.getElementById('userid');\n");
      out.write("            //alert(userid.value);\n");
      out.write("                for(i = 0; i < ele.length; i++) { \n");
      out.write("                if(ele[i].checked){ \n");
      out.write("                if((ele[i].value)==\"admin\"){\n");
      out.write("                    window.location.assign(\"admin/ForgetPassword.jsp?userid=\"+userid.value);\n");
      out.write("                }else if((ele[i].value)==\"user\"){\n");
      out.write("                    window.location.assign(\"user/ForgetPassword.jsp?userid=\"+userid.value);\n");
      out.write("                }\n");
      out.write("            } \n");
      out.write("            } \n");
      out.write("             } \n");
      out.write("        \n");
      out.write("    </script>\n");
      out.write("         \n");
      out.write("        \n");
      out.write("        </head>\n");
      out.write("\n");
      out.write("        <body>\n");
      out.write("\n");
      out.write("            <!-- Navigation -->\n");
      out.write("           \n");
      out.write("            <!-- Page Content -->\n");
      out.write("            <div class=\"container contact-form\">\n");
      out.write("            <div class=\"contact-image\">\n");
      out.write("                <img src=\"assets/images/log.jpg\" style=\" transform: rotate(0deg)\" alt=\"rocket_contact\"/>\n");
      out.write("            </div>\n");
      out.write("               \n");
      out.write("\n");
      out.write("<div class=\"login-form\">\n");
      out.write("    ");

        Cookie cookies [] = request.getCookies();
        String userid="";
        String password="";
        
        for (Cookie c : cookies){
            if(c.getName().equals("userid"))
                userid= c.getValue();
            if (c.getName().equals("password"))
                password = c.getValue();
        }
        
        
        
    String msg = request.getParameter("msg");
    if(msg!=null)
        out.println("<font color='red' size='5' face='corbel'>"+msg+"</font>");
    
      out.write("\n");
      out.write("      ");
      beans.User user = null;
      synchronized (session) {
        user = (beans.User) _jspx_page_context.getAttribute("user", PageContext.SESSION_SCOPE);
        if (user == null){
          user = new beans.User();
          _jspx_page_context.setAttribute("user", user, PageContext.SESSION_SCOPE);
        }
      }
      out.write("\n");
      out.write("     <form method=\"post\">\n");
      out.write("     ");
      org.apache.jasper.runtime.JspRuntimeLibrary.introspect(_jspx_page_context.findAttribute("user"), request);
      out.write("\n");
      out.write("  \n");
      out.write("         <h2 class=\"text-center\">Log in</h2>       \n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <input type=\"text\" id=\"userid\"  value=\"");
      out.print(userid);
      out.write("\" class=\"form-control\" placeholder=\"userid\" required=\"required\" name=\"userid\">\n");
      out.write("        </div>\n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <input type=\"password\" value=\"");
      out.print(password);
      out.write("\" class=\"form-control\" placeholder=\"password\" required=\"required\" name=\"password\"> \n");
      out.write("        </div>\n");
      out.write("        <div class=\"bg-light\" >\n");
      out.write("            <h6>Select Role</h6>\n");
      out.write("            <input type=\"radio\" name=\"role\" id=\"role1\" value=\"admin\"> <label for=\"admin\">Admin</label>\n");
      out.write("              <input type=\"radio\" name=\"role\" id=\"role2\" value=\"user\"> <label for=\"user\">User</label>\n");
      out.write("        </div>\n");
      out.write("         \n");
      out.write("        <div class=\"form-group\">\n");
      out.write("            <button type=\"submit\" name=\"submit\" class=\"btn btn-primary btn-block\">Log in</button>\n");
      out.write("        </div>\n");
      out.write("        <div class=\"clearfix\">\n");
      out.write("            <label class=\"pull-left checkbox-inline\"><input type=\"checkbox\" name=\"remember\" value=\"remember\"> Remember me</label>\n");
      out.write("            <a href=\"#\" onclick=\"checkRole();\" id=\"forget\" class=\"pull-right\">Forgot Password?</a>\n");
      out.write("        </div>        \n");
      out.write("       \n");
      out.write("    </form>\n");
      out.write("    <p class=\"text-center\"><a href=\"#\">Create an Account</a></p>\n");
      out.write("</div>\n");
      out.write("                \n");
      out.write("                \n");
      out.write("    </div>\n");
      out.write("             \n");
      out.write("        <!-- /.container -->\n");
      out.write("\n");
      out.write("        <!-- Footer -->\n");
      out.write("         <!-- Bootstrap core JavaScript -->\n");
      out.write("        <script src=\"assets/jquery/jquery.min.js\"></script>\n");
      out.write("        <script src=\"assets/js/bootstrap.bundle.min.js\"></script>\n");
      out.write("\n");
      out.write("        \n");
      out.write("         ");
 if(request.getParameter("submit")!=null){
           userid= request.getParameter("userid");
           password = request.getParameter("password");
           String role = request.getParameter("role");
           if(role==null){      
               response.sendRedirect("login.jsp?msg=Select any role");
           }
          else if(role.equals("admin")){
               AdminDao ado = new AdminDao();
               Admin admin = ado.getDetailsByLogin(userid, password);
                System.out.println("admin"+admin);
                System.out.println("name:"+admin.getName());
                System.out.println("image:"+admin.getImage());
               if(admin==null)
                   response.sendRedirect("login.jsp?msg=Invalid Userid or password");
               else {
                     String remember = null;
               remember = request.getParameter("remember");
               System.out.println("rem:"+remember);
              if (remember != null && remember.equalsIgnoreCase("remember")) {
                        Cookie c = new Cookie("userid", userid);
                        Cookie c2 = new Cookie("password", password);
                        c.setMaxAge(60 * 60 * 24);
                        c2.setMaxAge(60 * 60 * 24);
                        response.addCookie(c);
                        response.addCookie(c2);
                    }

                   session.setAttribute("admin", admin);
                   response.sendRedirect("admin/dashboard.jsp");
               }
               
           }
           else if(role.equals("user")){
           UserDao ud = new UserDao();
           int id = ud.isValid(userid, password);
           if(id!=-1)
           {
               String remember = null;
               remember = request.getParameter("remember");
               if (remember != null && remember.equalsIgnoreCase("remember")) {
                        Cookie c = new Cookie("userid", userid);
                        Cookie c2 = new Cookie("password", password);
                        c.setMaxAge(60 * 60 * 24);
                        c2.setMaxAge(60 * 60 * 24);
                        response.addCookie(c);
                        response.addCookie(c2);
                    }
               System.out.println("email:"+id);
               user = ud.getUserByUserId(id);
               System.out.println("user:"+user);
               session.setAttribute("user", user);
               response.sendRedirect("policyHolder/dashboard.jsp");
           }
           else
            response.sendRedirect("login.jsp?msg=Invalid Userid or Password");
          }
           
         
      }
        /* else
         {
              String role = request.getParameter("role");

              if(role==null){      
               response.sendRedirect("newsLogin.jsp?msg=Select any role");
              } else if(role.equals("admin")){
                  
              }
          
         }
  */
         
      out.write("\n");
      out.write("\n");
      out.write("         \n");
      out.write("    </body>\n");
      out.write(" </html>\n");
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
