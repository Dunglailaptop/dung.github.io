<%-- 
    Document   : newjsp
    Created on : Oct 13, 2021, 10:04:39 PM
    Author     : USER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sign in</title>
    </head>
    <body>
          <h1>Sign in</h1><!-- comment -->
    <form method="POST" action="login2">
        <table>
            <tr>
                <td>User Name</td><!-- comment -->
                <td><input type="text" name="username"/></td><!-- comment -->
            </tr><!-- comment -->
            <tr>
                <td>Gender</td><!-- comment -->
                <td><input type="text" name="gender"/></td>
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
           <div>
            <h3>Thông Tin Của Bạn</h3>
            <h4>${username}</h4>
        
          
        </div>
    </body>
</html>
