<%-- 
    Document   : display
    Created on : Jan 29, 2019, 10:42:34 PM
    Author     : Su Mit
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <center>
        <h1>Student Detail's</h1>
        <hr>
        
        <br>
        <a href="student_reg.jsp"><img style= "width:70px; height: 50px" src="images/download.png" ></a><br> <br>
        <table border="2" cellpadding="10" cellspacing="2" >
                        <thead>
                            <tr>
                                <th>S. No</th>
                                <th>Name</th>
                                <th>Father's Name</th>
                                <th>Mother's Name</th>
                                <th>Gender</th>
                                <th>Date of birth</th>
                                <th>Adhaar No.</th>
                                <th>Contact</th>
                                <th>Address</th>   
                                <th>Delete</th>   
                                 <th>Edit</th> 
                            </tr>
                        </thead>
                        <%
                            int n=1;
                            ConnectionManager cm= new ConnectionManager();
                            String q="select * from student_details";
                            ResultSet rs= cm.selectQuery(q);
                            
                            while(rs.next())
                            {
                        %>
                        
                        <thead>
                            <tr>
                                <td><%=n%></td>
                                <td><%=rs.getString(2) %></td>
                                <td><%=rs.getString(3) %></td>                                
                                <td><%=rs.getString(4) %></td>
                                <td><%=rs.getString(5) %></td>
                                <td><%=rs.getString(6) %></td>
                                <td><%=rs.getString(7) %></td>
                                <td><%=rs.getString(8) %></td>
                                <td><%=rs.getString(9) %></td>
                                <td><a href="deldetail?eid=<%=rs.getInt(1)%>">Delete</a></td>
                                <td><a href="code/editdetail.jsp?eid=<%=rs.getInt(1)%>">Edit</a></td>
                            </tr>
                        </thead>
                       
                        
                        <%
                           n++; }
                        %>
                    
                    </table>
                        </center>
    </body>
</html>
