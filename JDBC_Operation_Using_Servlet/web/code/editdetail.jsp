<%-- 
    Document   : editdetail
    Created on : Jan 30, 2019, 1:19:19 AM
    Author     : Su Mit
--%>



<%@page import="java.sql.ResultSet"%>
<%@page import="MyPackage.ConnectionManager"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Detail's</title>
        <style>
        marquee
        {
        color:blue;
        font-family:impact;
        font-size:50px;
        }
        </style>
    </head>
    <body>
        <form action="../UpdateCode" method="post">
<marquee direction="" behavior="alternate" scrollamount="10"
 onmouseover="stop();" onmouseout="start();">Registration Form</marquee>
            <center>
        <fieldset>
                <a href="../display.jsp"><input type="button" value="Student Detail's"></a>
        </fieldset>
                </center>
 <fieldset>

<legend align="center">Personal Info</legend>
<table  align="center">
    
    <%
                           String eid=request.getParameter("eid");
                            ConnectionManager cm= new ConnectionManager();
                            String q="select * from student_details where id='"+eid+"'";
                            ResultSet rs=cm.selectQuery(q);
                            rs.next();
                            {
    
    
    
    %>
    <tr>
<td>ID</td>
<td><input type="text" placeholder="Enter Your Name" name="eid" value="<%=rs.getString(1) %>"/></td>
</tr>
<tr>
<td>Student Name</td>
<td><input type="text" placeholder="Enter Your Name" name="name" value="<%=rs.getString(2) %>"/></td>
</tr>
<tr>
<td>Father's Name</td>
<td><input type="text" placeholder="Enter Your Father's Name" name="fname" value="<%=rs.getString(3) %>"/></td>
</tr>
<tr>
<td>Mother's Name</td>
<td><input type="text" placeholder="Enter Your Mother's Name" name="mname" value="<%=rs.getString(4) %>"></td>
</tr>
<tr>
<td>Gender</td> 
<td><input type="radio" name="a" value="Male" >Male </td>
 <td><input type="radio" name="a" value="Female">Female</td>
</tr>


<tr>
<td>DOB</td>
<td><input type="date" name="dob" value="<%=rs.getString(6) %>"/>
</tr>



<tr>
<td>Adhaar Card No.</td>
<td> <input type="text" placeholder="Enter Your Adhaar No." name="adhaar" value="<%=rs.getString(7) %>"> </td>
</tr>
<tr>
<td>Mobile No</td>
<td><input type="number"placeholder="Enter Contact number"name="contact"value="<%=rs.getString(8) %>" /></td>
</tr>
<tr>
<td>Address</td>
<td><textarea rows="" cols="" maxlength="200" 
placeholder="Enter your address" name="address"><%=rs.getString(9) %></textarea></td>
</tr>
<%

}
%>




</table>

</fieldset>
<br>
<fieldset>

<legend align="center"></legend>
<table  align="center">
<tr>
<td><input type="submit" value="Submit" />
<input type="reset"  value="Reset"/></td>
</tr>
</table>
</fieldset>
</form>
    </body>
</html>
