<%-- 
    Document   : DANGNHAP
    Created on : Oct 20, 2021, 9:44:31 AM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <form method="GET" action="danhnhap">
        <table>
            <tr>
                <td>User Name</td><!-- comment -->
                <td><input type="text" name="username"/></td><!-- comment -->
            </tr><!-- comment -->
           
             <tr>
                <td>Password</td><!-- comment -->
                <td><input type="text" name="password"/></td>
            </tr>
             <tr>
                 <td colspan="2"><button>submit</button><input type="reset"></td>
            </tr>
            
        </table>
    </form>  
           
    </body>
</html>
