package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import java.sql.ResultSet;
import MyPackage.ConnectionManager;

public final class display_jsp extends org.apache.jasper.runtime.HttpJspBase
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
      out.write("<!DOCTYPE html>\n");
      out.write("<html>\n");
      out.write("    <head>\n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=UTF-8\">\n");
      out.write("        <title>JSP Page</title>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <center>\n");
      out.write("        <h1>Student Detail's</h1>\n");
      out.write("        <hr>\n");
      out.write("        \n");
      out.write("        <br>\n");
      out.write("        <a href=\"student_reg.jsp\"><img style= \"width:70px; height: 50px\" src=\"images/download.png\" ></a><br> <br>\n");
      out.write("        <table border=\"2\" cellpadding=\"10\" cellspacing=\"2\" >\n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <th>S. No</th>\n");
      out.write("                                <th>Name</th>\n");
      out.write("                                <th>Father's Name</th>\n");
      out.write("                                <th>Mother's Name</th>\n");
      out.write("                                <th>Gender</th>\n");
      out.write("                                <th>Date of birth</th>\n");
      out.write("                                <th>Adhaar No.</th>\n");
      out.write("                                <th>Contact</th>\n");
      out.write("                                <th>Address</th>   \n");
      out.write("                                <th>Delete</th>   \n");
      out.write("                                 <th>Edit</th> \n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                        ");

                            int n=0;
                            ConnectionManager cm= new ConnectionManager();
                            String q="select * from student_details";
                            ResultSet rs= cm.selectQuery(q);
                            
                            while(rs.next())
                            {
                        
      out.write("\n");
      out.write("                        \n");
      out.write("                        <thead>\n");
      out.write("                            <tr>\n");
      out.write("                                <td>");
      out.print(n);
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rs.getString(2) );
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rs.getString(3) );
      out.write("</td>                                \n");
      out.write("                                <td>");
      out.print(rs.getString(4) );
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rs.getString(5) );
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rs.getString(6) );
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rs.getString(7) );
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rs.getString(8) );
      out.write("</td>\n");
      out.write("                                <td>");
      out.print(rs.getString(9) );
      out.write("</td>\n");
      out.write("                                <td><a href=\"deldetail?eid=");
      out.print(rs.getInt(1));
      out.write("\">Delete</a></td>\n");
      out.write("                                <td><a href=\"code/editdetail.jsp?eid=");
      out.print(rs.getInt(1));
      out.write("\">Edit</a></td>\n");
      out.write("                            </tr>\n");
      out.write("                        </thead>\n");
      out.write("                       \n");
      out.write("                        \n");
      out.write("                        ");

                           n++; }
                        
      out.write("\n");
      out.write("                    \n");
      out.write("                    </table>\n");
      out.write("                        </center>\n");
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
