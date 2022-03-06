<%-- 
    Document   : newjsp1
    Created on : Jan 26, 2022, 8:09:34 PM
    Author     : USER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="cssmanage.css">
         
         <link rel="stylesheet" href="./css/fontawesome-free-5.15.4-web/css/all.min.css">
    </head>
    <body>
         <jsp:include page="menu.jsp"></jsp:include>
           <div class="modal_add" id="change">
            <div class="modal_overlay_add" >
            </div>
            <div class="modal_body_add" >
                <div class="modal_inner_add">
                    <h1>EDIT PRODUCT</h1>
          <form action="updateacc" method="GET">
                <div class="modal_inner">
<!--                    <button  onclick="show_hide()"><i class="fas fa-edit">close</i></button>-->
                     
                    <div class="mid">
                        <li>
                     <td>username</td><!-- comment -->
                <td><input  value="${detail.userName}" type="text" name="username" class="mid_text"/></td><!-- comment -->
                    </li>
                    <li>
                <td>gender</td><!-- comment -->
                <td><input value="${detail.gender}" type="text" name="gender" class="mid_text"/></td>
                   </li><!-- comment -->
                        <li>
                <td>password</td><!-- comment -->
                <td><input value="${detail.password}"  type="text" name="password" class="mid_text"/></td>
                        </li>
                      
                                 <li>
                <td>idsell</td><!-- comment -->
                <td><input value="${detail.idsell}"  type="text" name="idsell" class="mid_text"/></td>
                      </li><!-- comment -->
                             <li>
                <td>admin</td><!-- comment -->
                <td><input value="${detail.admin}" type="text" name="admin" class="mid_text"/></td>
                        </li>
                                
                       
                       
               
           
                     
                </div>
               <div class="mid_add2">
                        <td colspan="2"><button><a href="" class="close2"><i class="fas fa-edit">close</i></a></button>
                            </td>
                            <div class="button-edit">
                        <input type="reset" class="reset2">
                        <button class="addnew2" type="submit">submit</button>
                        </div>
                    </div>
               
            </div>
                          </form>
            </div>
           </div>
          <jsp:include page="footer.jsp"></jsp:include>  
                  <script>
            var a;
            function show_hide(){
            if(a!==0){
                document.getElementById("change").style.display="flex";
                return a=0;
            }
            else{
                document.getElementById("change").style.display="none";
                return a=1;
            }
        }
         function sow(){
            if(a!==0){
                document.getElementById("newmn").style.display="none";
                return a=0;
            }
            else{
                document.getElementById("newmn").style.display="inline";
                return a=1;
            }
        }
        function show(){
            if(a!==0){
                document.getElementById("change2").style.display="flex";
                return a=0;
            }
            else{
                document.getElementById("change2").style.display="none";
                return a=1;
            }
        }
        function close(){
            document.getElementById("change").style.display="none";
        }
         </script>
    </body>
</html>
