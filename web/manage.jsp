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
          <link rel="stylesheet" href="cssmanage.css">
         
         <link rel="stylesheet" href="./css/fontawesome-free-5.15.4-web/css/all.min.css">
    </head>
    <body>
                     <jsp:include page="menu.jsp"></jsp:include>
        <div class="warpper-two">
            <div class="tittle-table">
        <h1>manage product admin</h1>
        <ul class="change_menu">
             <a href="#" class="add_change" onclick="show()"><i class="fas fa-plus-square"></i> add</a>
            <a href="#" class="add_delete"><i class="fas fa-trash-alt"></i>delete</a>
        </ul>
            </div>
        <table class="contain-table">
            
            <thead>
                <tr>
                    <th>check</th>
                    <th>id</th>
                    <th>name</th>
                    <th>image</th>
                    <th>money</th>
                    <th>Edit</th>
                     
                </tr>
            </thead>
            <c:forEach items="${listsell}" var="o">
            <tbody>
                <tr class="active-row">
                    <td class="check"><input  type="checkbox" style="width:50px;"></td>
                    <td>${o.id}</td><!-- comment -->
                    <td>${o.name}</td><!-- comment -->
                    <td><img src="${o.image}" class="img234"/></td>
                    <td>${o.price}</td>
                
                    <td><a href="change?pid=${o.id}"  ><i class="fas fa-edit">change</i></a>
                          <a href="delete?ppid=${o.id}"><i class="fas fa-trash-alt"></i>delete</a></td><!-- comment -->
                          
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
            <div class="modal" id="change2">
            <div class="modal_overlay" >
            </div>
            <div class="modal_body" >
                <form action="insert" method="GET">
                <div class="modal_inner">
<!--                    <button  onclick="show_hide()"><i class="fas fa-edit">close</i></button>-->
                      <h1>new product</h1>
                    <div class="mid">
                        <li>
                     <td>id</td><!-- comment -->
                <td><input type="text" name="id" class="mid_text"/></td><!-- comment -->
                    </li>
                    <li>
                <td>name</td><!-- comment -->
                <td><input type="text" name="name" class="mid_text"/></td>
                   </li><!-- comment -->
                        <li>
                <td>image</td><!-- comment -->
                <td><input type="text" name="image" class="mid_text"/></td>
                        </li>
                        <div class="picture-main">
                                 <li>
                <td>image1</td><!-- comment -->
                <td><input type="text" name="image1" class="mid_text"/></td>
                      </li><!-- comment -->
                             <li>
                <td>image2</td><!-- comment -->
                <td><input type="text" name="image2" class="mid_text"/></td>
                        </li>
                                 <li>
                <td>image3</td><!-- comment -->
                <td><input type="text" name="image3" class="mid_text"/></td>
                        </li>
                        </div>
                         <li>
                <td>money</td><!-- comment -->
                <td><input type="text" name="money" class="mid_text"/></td>
                 <div class="from-select">
                             <label>categroyid</label>
                         <select  name="category" class="from-select" aria-label="defaut select example">
                         <c:forEach items="${category}" var="o">
                             <option value="${o.cateid}">${o.cname}</option>
                         </c:forEach>
                         </select>
                         </div>
                         </li>
                        
                </div>
                    <div class="mid2">
                        <td colspan="2" ><input type="submit" class="addnew" value="Add">
                            <input type="reset" class="reset"></td>
                 <button  onclick="show()" class="close"><i class="fas fa-edit">close</i></button>
                    </div>
                </div>
                </form>
            </div>
            </div>
                
        

            
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
