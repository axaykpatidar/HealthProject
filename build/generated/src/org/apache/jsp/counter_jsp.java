package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

public final class counter_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write(" <div class=\"stats\">\n");
      out.write("            <div class=\"container\">\t\n");
      out.write("                <div class=\"row\">\n");
      out.write("                    <div class=\"col-md-3 col-sm-3 stats-grid stats-grid-1 gridw3\">\n");
      out.write("                        <i class=\"fa fa-smile-o\" aria-hidden=\"true\"></i>\n");
      out.write("                        <div class=\"numscroller\" data-slno='1' data-min='0' data-max='158' data-delay='3' data-increment=\"1\">85</div>\n");
      out.write("                        <h4>Happy Customers</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 col-sm-3 stats-grid stats-grid-2 gridw3\">\n");
      out.write("                        <i class=\"fa fa-trophy\" aria-hidden=\"true\"></i>\n");
      out.write("                        <div class=\"numscroller\" data-slno='1' data-min='0' data-max='63' data-delay='3' data-increment=\"1\">95</div>\n");
      out.write("                        <h4>Awards </h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 col-sm-3 stats-grid stats-grid-3 gridw3\">\n");
      out.write("                        <i class=\"fa fa-laptop\" aria-hidden=\"true\"></i>\n");
      out.write("                        <div class=\"numscroller\" data-slno='1' data-min='0' data-max='421' data-delay='3' data-increment=\"1\">80</div>\n");
      out.write("                        <h4>collabaration</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"col-md-3 col-sm-3 stats-grid stats-grid-4 gridw3\">\n");
      out.write("                        <i class=\"fa fa-users\" aria-hidden=\"true\"></i>\n");
      out.write("                        <div class=\"numscroller\" data-slno='1' data-min='0' data-max='562' data-delay='3' data-increment=\"1\">90</div>\n");
      out.write("                        <h4>Members</h4>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"clearfix\"></div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>");
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
