<%-- 
    Document   : leftcatelogry
    Created on : Dec 26, 2021, 10:54:43 PM
    Author     : USER
--%>
    <link rel="stylesheet" href="main.css">
        <link rel="stylesheet" href="base.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
              <div class="grid_column-2">
           <nav class="category">
                <h3 class="category_heading"><i class="fas fa-list-ul"></i><!-- comment -->
                    Danh Mục</h3><!-- comment -->
                <ul class="category-list">
                    <li class="category-item category-item-active">
                        <a href="productlist" class="category-item_link">SAN PHAM</a>
                    </li>
                    <c:forEach items="${category}" var="c">
                    <li class="category-item ">
                        <a href="category?cateid=${c.cateid}" class="category-item_link ${tag == c.cateid ? "active":""}">${c.cname}</a>
                    </li><!-- comment -->
                    </c:forEach>
                </ul>                
            </nav>
                  
                    <nav class="category">
                <h3 class="category_heading"><i class="fas fa-list-ul"></i><!-- comment -->
                    Danh Mục</h3><!-- comment -->
                <ul class="category-list">
                    <li class="category-item category-item-active">
                        <a href="#" class="category-item_link">TRang diem mat</a>
                    </li>
                    <li class="category-item ">
                        <a href="#" class="category-item_link">TRang diem mat</a>
                    </li><!-- comment -->
                    <li class="category-item ">
                        <a href="#" class="category-item_link">TRang diem mat</a>
                    </li>
                </ul>                
            </nav>
              </div><!-- comment -->