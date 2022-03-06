<%-- 
    Document   : manage
    Created on : Jan 18, 2022, 8:48:47 PM
    Author     : USER
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.0//EN" "http://www.w3.org/TR/REC-html40/strict.dtd">
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
          <link rel="stylesheet" href="manageacc.css">
         
         <link rel="stylesheet" href="./css/fontawesome-free-5.15.4-web/css/all.min.css">
    </head>
    <body>
                     <jsp:include page="menu.jsp"></jsp:include>
        <div class="warpper-two">
            <div class="tittle-table">
        <h1>manage account admin</h1>
        <ul class="change_menu">
             <a href="#" class="add_change" onclick="sow()"><i class="fas fa-plus-square"></i> add</a>
            <a href="#" class="add_delete"><i class="fas fa-trash-alt"></i>delete</a>
        </ul>
            </div>
           
            
        <table class="contain-table">
            
            <thead>
                <tr>
                    <th>check</th>
                    <th>username</th>
                    <th>gender</th>
                    <th>password</th>
                    <th>idsell</th>
                    <th>admin</th>
                    <th>Edit</th>
                     
                </tr>
            </thead>
            <c:forEach items="${listsell}" var="o">
            <tbody>
                <tr class="active-row">
                    <td class="check"><input  type="checkbox" style="width:50px;"></td>
                    <td>${o.userName}</td><!-- comment -->
                    <td>${o.gender}</td><!-- comment -->
                    <td>${o.password}</td>
                    <td>${o.idsell}</td>
                    <td>${o.admin}</td>
                
                    <td><a href="changeacc?pid=${o.userName}"  ><i class="fas fa-edit">change</i></a>
                          <a href="deleteaccount?ppid=${o.userName}"><i class="fas fa-trash-alt"></i>delete</a></td> 
                          
                </tr>
<!--                  <tr>
                    <td>kh01</td> comment 
                    <td>giay vans</td> comment 
                    <td><img src="picture/vans.jpg" class="img234"/></td>
                    <td>1500000</td>
                    <td><a href="#">change</a>/<a href="#">delete</a></td> comment 
                </tr>
                  <tr>
                    <td>kh01</td> comment 
                    <td>giay vans</td> comment 
                    <td><img src="picture/vans.jpg" class="img234"/></td>
                    <td>1500000</td>
                    <td><a href="#">change</a>/<a href="#">delete</a></td> comment 
                </tr>-->
            </tbody>
            </c:forEach>
        </table>
             <div class="tittle-table">
        <h1>manage account admin</h1>
        <ul class="change_menu">
             <a href="#" class="add_change" onclick="shownew2()"><i class="fas fa-plus-square"></i> add</a>
            <a href="#" class="add_delete"><i class="fas fa-trash-alt"></i>delete</a>
        </ul>
            </div>
        <table class="contain-table">
            
            <thead>
                <tr>
                    <th>check</th>
                    <th>cateid</th>
                    <th>categoryname</th>

                    <th>Edit</th>
                     
                </tr>
            </thead>
            <c:forEach items="${category}" var="o">
            <tbody>
                <tr class="active-row">
                    <td class="check"><input  type="checkbox" style="width:50px;"></td>
                    <td>${o.cateid}</td><!-- comment -->
                    <td>${o.cname}</td><!-- comment -->
                  
                
                    <td><a href="changecategory?cateid=${o.cateid}"  ><i class="fas fa-edit">change</i></a>
                          <a href="deletecategory?catedeleteid=${o.cateid}"><i class="fas fa-trash-alt"></i>delete</a></td> 
                          
                </tr>
<!--                  <tr>
                    <td>kh01</td> comment 
                    <td>giay vans</td> comment 
                    <td><img src="picture/vans.jpg" class="img234"/></td>
                    <td>1500000</td>
                    <td><a href="#">change</a>/<a href="#">delete</a></td> comment 
                </tr>
                  <tr>
                    <td>kh01</td> comment 
                    <td>giay vans</td> comment 
                    <td><img src="picture/vans.jpg" class="img234"/></td>
                    <td>1500000</td>
                    <td><a href="#">change</a>/<a href="#">delete</a></td> comment 
                </tr>-->
            </tbody>
            </c:forEach>
        </table>
        </div>
          <jsp:include page="footer.jsp"></jsp:include>  
            <div class="modal" id="new">
            <div class="modal_overlay" >
            </div>
            <div class="modal_body" >
                <form action="insertaccount" method="GET">
                <div class="modal_inner">
<!--                    <button  onclick="show_hide()"><i class="fas fa-edit">close</i></button>-->
                      <h1>new account</h1>
                    <div class="mid">
                        <li>
                     <td>username</td><!-- comment -->
                <td><input type="text" name="username" class="mid_text"/></td><!-- comment -->
                    </li>
                    <li>
                <td>gender</td><!-- comment -->
                <td><input type="text" name="gender" class="mid_text"/></td>
                   </li><!-- comment -->
                        <li>
                <td>password</td><!-- comment -->
                <td><input type="text" name="password" class="mid_text"/></td>
                        </li>
                        
                                 <li>
                <td>idsell</td><!-- comment -->
                <td><input type="text" name="idsell" class="mid_text"/></td>
                      </li><!-- comment -->
                             <li>
                <td>admin</td><!-- comment -->
                <td><input type="text" name="admin" class="mid_text"/></td>
                        </li>
                                 
                  
                    <div class="mid2">
                        <td colspan="2" ><input type="submit" class="addnew" value="Add">
                            <input type="reset" class="reset"></td>
                 <button  onclick="sow()" class="close"><i class="fas fa-edit">close</i></button>
                    </div>
                </div>
                </div>
                </form>
            </div>
            </div>
                
        <div class="modal2" id="changenew2">
            <div class="modal_overlay2" >
            </div>
            <div class="modal_body2" >
                <form action="insertcategory" method="GET">
                <div class="modal_inner2">
<!--                    <button  onclick="show_hide()"><i class="fas fa-edit">close</i></button>-->
                      <h1>new account</h1>
                    <div class="mid22">
                        <li>
                     <td>cateid</td><!-- comment -->
                <td><input type="text" name="cateid" class="mid_text2"/></td><!-- comment -->
                    </li>
                    <li>
                <td>usernamecate</td><!-- comment -->
                <td><input type="text" name="namecate" class="mid_text2"/></td>
                   </li><!-- comment -->
                        <li>
             
                                 
                  
                    <div class="mid22-button">
                        <td colspan="2" ><input type="submit" class="addnew2" value="Add">
                            <input type="reset" class="reset2"></td>
                 
                    </div>
                </div>
                </div>
                </form>
                <button  onclick="shownew2()" class="close2"><i class="fas fa-edit">close</i></button>
            </div>
            </div>

            
        <script>
            var a;
            function shownew2(){
            if(a===1){
                document.getElementById("changenew2").style.display="none";
                return a=0;
            }
            else{
                document.getElementById("changenew2").style.display="inline";
                return a=1;
            }
        }
         function sow(){
            if(a===1){
                document.getElementById("new").style.display="none";
                return a=0;
            }
            else{
                document.getElementById("new").style.display="inline";
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
