<%-- 
    Document   : newjsp
    Created on : Nov 29, 2021, 10:39:35 PM
    Author     : USER
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>from login in</title>
       
        <link rel="stylesheet" href="app.css">
    </head>
    <body>
    
        <div id="wrapper">
            <form method="GET" action="danhnhap" id="from-login">
                <h1 class="from-heading" >From đăng nhập</h1><!-- comment -->
                 
                <div class="from-group">
                    
                    <input type="text"  class="from-input" name="username"  placeholder="Tên đăng nhập">
                    
                </div>
                <div class="from-group">
                    <input type="text" class="from-input" name="password" placeholder="Mật khẩu"><!-- comment -->                    
                </div>
                <input type="submit" value="Đăng nhập" class="from-submit">
            
                
                <a href="./dangky.jsp"><input  type="button" value="Đăng ký"  class="from-submit"></a>
                
            </form>
            
    
    
        </div>
    </body>
</html>
