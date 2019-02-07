<%-- 
    Document   : index
    Created on : Jan 31, 2019, 11:26:33 AM
    Author     : Su Mit
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <form action="LoginCode" method="post">
            <center>
                <h1>Admin Login</h1>
                <hr>
                <table>
                <tr>
                <td>
                Username :
                </td>
                <td><input type="text" name="username"></td>
                </tr>
                <tr>
                <td>
                Password :
                </td>
                <td><input type="password" name="password"></td>
                </tr>
                
              
                
                </table>
                <center><input type="submit" value="Login"></center>
                <hr>
            </center>
        </form>
    </body>
</html>
