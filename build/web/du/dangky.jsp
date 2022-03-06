<%-- 
    Document   : dangky
    Created on : Dec 1, 2021, 2:17:41 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
         <link rel="stylesheet" href="dgky.css">
    </head>
    <body>
            
        <div id="wrapper">
            <form method="POST" action="login2" id="from-login">
                <h1 class="from-heading" >From Đăng ký</h1><!-- comment -->
                 
                                   <div class="from-group">
                     <input type="text" class="from-input" name="username" placeholder="username">
                   </div>  
                                                   <div class="from-group">
                     <input type="text" class="from-input" name="gender" placeholder="gender">
                   </div>  
                    <div class="from-group">
                     <input type="text" class="from-input" name="password" placeholder="password">
                   </div>  
               <input type="submit" value="xác nhận" class="from-submit">
               
                <a href="dangnhap.jsp"><input type="button" value="đăng nhập" class="from-submit"></a>
            </form>
        </div>
    </body>
</html>
