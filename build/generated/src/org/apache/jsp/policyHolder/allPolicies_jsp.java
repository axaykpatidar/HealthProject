package org.apache.jsp.policyHolder;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import beans.Policy;
import daos.PolicyDao;
import daos.PolicyHolderDao;
import daos.UserDao;
import beans.PolicyHolder;
import java.util.ArrayList;
import beans.User;

public final class allPolicies_jsp extends org.apache.jasper.runtime.HttpJspBase
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

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!--\n");
      out.write("Author: W3layouts\n");
      out.write("Author URL: http://w3layouts.com\n");
      out.write("-->\n");
      out.write("<!doctype html>\n");
      out.write("<html lang=\"en\">\n");
      out.write("\n");
      out.write("    <head>\n");
      out.write("        <!-- Required meta tags -->\n");
      out.write("        <meta charset=\"utf-8\">\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1, shrink-to-fit=no\">\n");
      out.write("\n");
      out.write("    <i class=\"fa-fa-user\"><title>Claim Page</title></i>\n");
      out.write("\n");
      out.write("    <!-- Template CSS -->\n");
      out.write("    <link rel=\"stylesheet\" href=\"assets/css/style-liberty.css\">\n");
      out.write("\n");
      out.write("    <!-- google fonts -->\n");
      out.write("    <link href=\"//fonts.googleapis.com/css?family=Nunito:300,400,600,700,800,900&display=swap\" rel=\"stylesheet\">\n");
      out.write("</head>\n");
      out.write("\n");
      out.write("     <script src='//ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js'></script><script src=\"//m.servedby-buysellads.com/monetization.js\" type=\"text/javascript\"></script>\n");
      out.write("    <script>\n");
      out.write("        (function () {\n");
      out.write("            if (typeof _bsa !== 'undefined' && _bsa) {\n");
      out.write("                // format, zoneKey, segment:value, options\n");
      out.write("                _bsa.init('flexbar', 'CKYI627U', 'placement:w3layoutscom');\n");
      out.write("            }\n");
      out.write("        })();\n");
      out.write("    </script>\n");
      out.write("    <script>\n");
      out.write("        (function () {\n");
      out.write("            if (typeof _bsa !== 'undefined' && _bsa) {\n");
      out.write("                // format, zoneKey, segment:value, options\n");
      out.write("                _bsa.init('fancybar', 'CKYDL2JN', 'placement:demo');\n");
      out.write("            }\n");
      out.write("        })();\n");
      out.write("    </script>\n");
      out.write("    <script>\n");
      out.write("        (function () {\n");
      out.write("            if (typeof _bsa !== 'undefined' && _bsa) {\n");
      out.write("                // format, zoneKey, segment:value, options\n");
      out.write("                _bsa.init('stickybox', 'CKYI653J', 'placement:w3layoutscom');\n");
      out.write("            }\n");
      out.write("        })();\n");
      out.write("    </script>\n");
      out.write("    <!--<script>(function(v,d,o,ai){ai=d.createElement(\"script\");ai.defer=true;ai.async=true;ai.src=v.location.protocol+o;d.head.appendChild(ai);})(window, document, \"//a.vdo.ai/core/w3layouts_V2/vdo.ai.js?vdo=34\");</script>-->\n");
      out.write("    <div id=\"codefund\"><!-- fallback content --></div>\n");
      out.write("    <script src=\"https://codefund.io/properties/441/funder.js\" async=\"async\"></script>\n");
      out.write("\n");
      out.write("    <!-- Global site tag (gtag.js) - Google Analytics -->\n");
      out.write("    <script async src='https://www.googletagmanager.com/gtag/js?id=UA-149859901-1'></script>\n");
      out.write("    <script>\n");
      out.write("        window.dataLayer = window.dataLayer || [];\n");
      out.write("        function gtag() {\n");
      out.write("            dataLayer.push(arguments);\n");
      out.write("        }\n");
      out.write("        gtag('js', new Date());\n");
      out.write("\n");
      out.write("        gtag('config', 'UA-149859901-1');\n");
      out.write("    </script>\n");
      out.write("\n");
      out.write("    <script>\n");
      out.write("        window.ga = window.ga || function () {\n");
      out.write("            (ga.q = ga.q || []).push(arguments)\n");
      out.write("        };\n");
      out.write("        ga.l = +new Date;\n");
      out.write("        ga('create', 'UA-149859901-1', 'demo.w3layouts.com');\n");
      out.write("        ga('require', 'eventTracker');\n");
      out.write("        ga('require', 'outboundLinkTracker');\n");
      out.write("        ga('require', 'urlChangeTracker');\n");
      out.write("        ga('send', 'pageview');\n");
      out.write("    </script>\n");
      out.write("    <script async src='assets/js/autotrack.js'></script>\n");
      out.write("\n");
      out.write("    <meta name=\"robots\" content=\"noindex\">\n");
      out.write("<body><link rel=\"stylesheet\" href=\"assets/css/demobar_w3_4thDec2019.css\">\n");
      out.write("         \n");
      out.write("    <!-- Demo bar start -->\n");
      out.write("    <div id=\"w3lDemoBar\" class=\"w3l-demo-bar\">\n");
      out.write("        <a href=\"dashboard.jsp\" ga-on=\"click\" ga-event-category=\"Collective Admin Panel Template\" ga-event-action=\"view\" ga-event-label=\"Collective Admin Panel - view\">\n");
      out.write("            <span class=\"w3l-icon -back\">\n");
      out.write("                <svg xmlns=\"http://www.w3.org/2000/svg\" width=\"24\" height=\"24\" viewBox=\"0 0 24 24\"><path opacity=\".87\" fill=\"none\" d=\"M0 0h24v24H0V0z\"/><path d=\"M16.62 2.99c-.49-.49-1.28-.49-1.77 0L6.54 11.3c-.39.39-.39 1.02 0 1.41l8.31 8.31c.49.49 1.28.49 1.77 0s.49-1.28 0-1.77L9.38 12l7.25-7.25c.48-.48.48-1.28-.01-1.76z\"/></svg>\n");
      out.write("            </span>\n");
      out.write("            <span class=\"w3l-text\">Back</span>\n");
      out.write("        </a>\n");
      out.write("    </div>\n");
      out.write("\n");
      out.write("    <div class=\"se-pre-con\"></div>\n");
      out.write("    <section>\n");
      out.write("        <!-- sidebar menu start -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "sidebar.jsp", out, false);
      out.write("\n");
      out.write("        <!-- //sidebar menu end -->\n");
      out.write("        <!-- header-starts -->\n");
      out.write("        ");
      org.apache.jasper.runtime.JspRuntimeLibrary.include(request, response, "navbar.jsp", out, false);
      out.write("\n");
      out.write("        <!-- //header-ends -->\n");
      out.write("        <!-- main content start -->\n");
      out.write("        <div class=\"main-content\">\n");
      out.write("\n");
      out.write("            <!-- content -->\n");
      out.write("            <div class=\"container-fluid content-top-gap\">\n");
      out.write("\n");
      out.write("                <nav aria-label=\"breadcrumb\">\n");
      out.write("                    <ol class=\"breadcrumb my-breadcrumb\">\n");
      out.write("                        <li class=\"breadcrumb-item\"><a href=\"dashboard.jsp\">Home</a></li>\n");
      out.write("                        <li class=\"breadcrumb-item active\" aria-current=\"page\">Dashboard</li>\n");
      out.write("                    </ol>\n");
      out.write("                </nav>\n");
      out.write("                 \n");
      out.write("                \n");
      out.write("                <!-- data tables -->\n");
      out.write("                <div class=\"data-tables\">\n");
      out.write("                    \n");
      out.write("                </div>\n");
      out.write("                <!-- //data tables -->\n");
      out.write("                <!-- accordions -->\n");
      out.write("                 <!-- //accordions -->\n");
      out.write("\n");
      out.write("                <!-- modals -->\n");
      out.write("                 <!-- //modals -->\n");
      out.write("\n");
      out.write("            </div>\n");
      out.write("            <!-- //content -->\n");
      out.write("        </div>\n");
      out.write("        <!-- main content end-->\n");
      out.write("    </section>\n");
      out.write("    <!--footer section start-->\n");
      out.write("    <footer class=\"dashboard\">\n");
      out.write("        <p>&copy 2020 Collective. All Rights Reserved | Design by <a href=\"https://w3layouts.com/\" target=\"_blank\"\n");
      out.write("                                                                     class=\"text-primary\">W3layouts.</a></p>\n");
      out.write("    </footer>\n");
      out.write("    <!--footer section end-->\n");
      out.write("    <!-- move top -->\n");
      out.write("    <button onclick=\"topFunction()\" id=\"movetop\" class=\"bg-primary\" title=\"Go to top\">\n");
      out.write("        <span class=\"fa fa-angle-up\"></span>\n");
      out.write("    </button>\n");
      out.write("    <script>\n");
      out.write("        // When the user scrolls down 20px from the top of the document, show the button\n");
      out.write("        window.onscroll = function () {\n");
      out.write("            scrollFunction()\n");
      out.write("        };\n");
      out.write("\n");
      out.write("        function scrollFunction() {\n");
      out.write("            if (document.body.scrollTop > 20 || document.documentElement.scrollTop > 20) {\n");
      out.write("                document.getElementById(\"movetop\").style.display = \"block\";\n");
      out.write("            } else {\n");
      out.write("                document.getElementById(\"movetop\").style.display = \"none\";\n");
      out.write("            }\n");
      out.write("        }\n");
      out.write("\n");
      out.write("        // When the user clicks on the button, scroll to the top of the document\n");
      out.write("        function topFunction() {\n");
      out.write("            document.body.scrollTop = 0;\n");
      out.write("            document.documentElement.scrollTop = 0;\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    <!-- /move top -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"assets/js/jquery-3.3.1.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/jquery-1.10.2.min.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- chart js -->\n");
      out.write("    <script src=\"assets/js/Chart.min.js\"></script>\n");
      out.write("    <script src=\"assets/js/utils.js\"></script>\n");
      out.write("    <!-- //chart js -->\n");
      out.write("\n");
      out.write("    <!-- Different scripts of charts.  Ex.Barchart, Stackedchart, Linechart, Piechart -->\n");
      out.write("    <script src=\"assets/js/bar.js\"></script>\n");
      out.write("    <script src=\"assets/js/stacked.js\"></script>\n");
      out.write("    <script src=\"assets/js/linechart.js\"></script>\n");
      out.write("    <script src=\"assets/js/pie.js\"></script>\n");
      out.write("    <!-- //Different scripts of charts.  Ex.Barchart, Stackedchart, Linechart, Piechart -->\n");
      out.write("\n");
      out.write("    <!-- data tables js -->\n");
      out.write("    <script>\n");
      out.write("        $(document).ready(function () {\n");
      out.write("            $('#example').DataTable();\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("    <!-- //data tables js -->\n");
      out.write("\n");
      out.write("    <script src=\"assets/js/jquery.dataTables.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("    <script src=\"assets/js/faq.js\"></script>\n");
      out.write("\n");
      out.write("    <script src=\"assets/js/jquery.nicescroll.js\"></script>\n");
      out.write("    <script src=\"assets/js/scripts.js\"></script>\n");
      out.write("\n");
      out.write("    <!-- close script -->\n");
      out.write("    <script>\n");
      out.write("        var closebtns = document.getElementsByClassName(\"close-grid\");\n");
      out.write("        var i;\n");
      out.write("\n");
      out.write("        for (i = 0; i < closebtns.length; i++) {\n");
      out.write("            closebtns[i].addEventListener(\"click\", function () {\n");
      out.write("                this.parentElement.style.display = 'none';\n");
      out.write("            });\n");
      out.write("        }\n");
      out.write("    </script>\n");
      out.write("    <!-- //close script -->\n");
      out.write("\n");
      out.write("    <!-- disable body scroll when navbar is in active -->\n");
      out.write("    <script>\n");
      out.write("        $(function () {\n");
      out.write("            $('.sidebar-menu-collapsed').click(function () {\n");
      out.write("                $('body').toggleClass('noscroll');\n");
      out.write("            })\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("    <!-- disable body scroll when navbar is in active -->\n");
      out.write("\n");
      out.write("    <!-- loading-gif Js -->\n");
      out.write("    <script src=\"assets/js/modernizr.js\"></script>\n");
      out.write("    <script>\n");
      out.write("        $(window).load(function () {\n");
      out.write("            // Animate loader off screen\n");
      out.write("            $(\".se-pre-con\").fadeOut(\"slow\");;\n");
      out.write("        });\n");
      out.write("    </script>\n");
      out.write("    <!--// loading-gif Js -->\n");
      out.write("\n");
      out.write("\n");
      out.write("    <!-- Bootstrap Core JavaScript -->\n");
      out.write("    <script src=\"assets/js/bootstrap.min.js\"></script>\n");
      out.write("\n");
      out.write("\n");
      out.write("</body>\n");
      out.write("\n");
      out.write("</html>\n");
      out.write(" \n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
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