<%-- 
    Document   : index
    Created on : Jan 29, 2019, 9:25:15 PM
    Author     : Su Mit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title>
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
        <form  action="InsertCode" method="post">
<marquee direction="" behavior="alternate" scrollamount="10"
 onmouseover="stop();" onmouseout="start();">Student Registration Form</marquee>
            <center>
        <fieldset>
            <h2>Hello Sir...Welcome To Admin Zone</h2>
                <a href="display.jsp"><input type="button" value="Student Detail's"></a>
        </fieldset>
                </center>
 <fieldset>

<legend align="center">Personal Info</legend>
<table  align="center">
<tr>
<td>Student Name</td>
<td><input type="text" placeholder="Enter Your Name" name="name"/></td>
</tr>
<tr>
<td>Father's Name</td>
<td><input type="text" placeholder="Enter Your Father's Name" name="fname"/></td>
</tr>
<tr>
<td>Mother's Name</td>
<td><input type="text" placeholder="Enter Your Mother's Name" name="mname"></td>
</tr>
<tr>
<td>Gender</td> 
<td><input type="radio" name="a" value="Male">Male </td>
 <td><input type="radio" name="a" value="Female">Female</td>
</tr>


<tr>
<td>DOB</td>
<td><input type="date" name="dob"/>
</tr>
<tr>
<td>Email</td>
<td><input type="email" placeholder="Enter your Email" name="email"></td>
</tr>


<tr>
<td>Adhaar Card No.</td>
<td> <input type="text" placeholder="Enter Your Adhaar No." name="adhaar"> </td>
</tr>
<tr>
<td>Mobile No</td>
<td><input type="number"placeholder="Enter Contact number"name="contact"/></td>
</tr>
<tr>
<td>Address</td>
<td><textarea rows="" cols="" maxlength="200" 
placeholder="Enter your address"name="address"></textarea></td>
</tr>




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
