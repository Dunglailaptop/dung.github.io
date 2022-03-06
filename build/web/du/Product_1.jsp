<%-- 
    Document   : index
    Created on : Dec 12, 2021, 10:25:02 AM
    Author     : USER
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="main.css">
        <link rel="stylesheet" href="base.css">
         <link rel="stylesheet" href="./css/fontawesome-free-5.15.4-web/css/all.min.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="header">
                <nav class="container">

                <ul class="main-menu">
                    <li><a href=""><i class="fas fa-home"></i> Trang chủ</a></li>
                    <li class="thongbao"><a href=""><i class="fas fa-info-circle"></i> Thông báo</a>
                         <div class="notification">
                                <header class="header_notify-header">
                                    <h3>Thông báo mới nhận</h3><!-- comment -->
                                </header>
                                <ul class="header_notify-list">
                                    <li class="header_notify-item header_notify-item--viewd">
                                        <a href="" class="header_notify-link">
                                            <img src="" alt="" class="header_notify-img">
                                            <div class="header_notify-info">
                                                <span class="header_notify-name">mi pham</span><!-- comment -->
                                                <span class="header_notify-descrition">mo ta san pham</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header_notify-item header_notify-item--viewd">
                                        <a href="" class="header_notify-link">
                                            <img src="" alt="" class="header_notify-img">
                                            <div class="header_notify-info">
                                                <span class="header_notify-name">mi pham</span><!-- comment -->
                                                <span class="header_notify-descrition">mo ta san pham</span>
                                            </div>
                                        </a>
                                    </li>
                                    <li class="header_notify-item header_notify-item--viewd">
                                        <a href="" class="header_notify-link">
                                            <img src="" alt="" class="header_notify-img">
                                            <div class="header_notify-info">
                                                <span class="header_notify-name">mi pham</span><!-- comment -->
                                                <span class="header_notify-descrition">mo ta san pham</span>
                                            </div>
                                        </a>
                                    </li>
                                </ul>
                                <footer class="header_notify-footer">
                                    <a href="" class="header_notify-footer-btn">
                                        Xem Tất cả
                                    </a>
                                </footer>
                            </div>
                    </li>
                    <li><a href=""><i class="far fa-question-circle"></i> hỗ trợ</a></li><!-- comment -->
                   
                </ul>
                    <ul class="main-menu">
                   
                    <li><a href=""><i class="fas fa-user-plus"></i> Đăng ký</a></li><!-- comment -->
                    <li><a href=""><i class="fas fa-user"></i> Đăng nhập</a></li><!-- comment -->
                </ul>
               </nav>
                <div class="search">
                     <a href="#" class="logo">
                    <img src="https://xyzscripts.com/data/clone/chotot-clone-script-og.png" >
                </a>
                    <li class="search-btn">
                       <input type="text" name="" placeholder="tim kiem">
                            <button>
                                   <i class="fas fa-search"></i>
                             </button>
                    </li><!-- comment -->
                    <div class="search-btn">
                        <a href="#"> <i class="fas fa-shopping-cart"></i></a>
<!--                        <div class="cart_report">
                            <img  src="./picture/no-product.jpg" class="product_img">
                           
                        </div>-->
                         
                    </div>
                </div>
            </div>
        <div class="app_container">
            <div class="grid_row app_content">
              <div class="grid_column-2">
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
              <div class="grid_column-8">
                  <div class="home-filter">
                      <span class="home-filter-label"> sap xep theo</span>
                      <button class="btn">pho bien</button>
                      <button class="btn">moi nhat</button><!-- comment -->
                      <button class="btn">ban chay</button>
                      <div class="select-input">
                          <span class="select-input-label"> gia</span>
                          <i class="select-input-icon fas fa-angle-down"></i>
                          <ul class="select-input_list">
                              <li class="select-input-item">
                                  <a href="#" class="select-input_link">gia: thap den cao</a>
                              </li>   
                              <li class="select-input-item">
                                  <a href="#" class="select-input_link">gia: cao den thap</a>
                              </li>
                          </ul>
                              
                              
                              
                      </div>
                      <div class="home-filter_page">
                          <span class="home-filter_page-num">
                              <span class="home-filter_page-current">1</span>/14
                          </span>
                          <div class="home-filter_page-control">
                              <a href="" class="home-filter_page-btn">
                                  <i class="home-filter_page-icon fas fa-angle-left"></i>
                              </a>
                               <a href="" class="home-filter_page-btn">
                                  <i class="home-filter_page-icon fas fa-angle-right"></i>
                              </a>
                          </div>
                      </div>
                  </div>
                  <div class="home-product">
                      <div class="grid_row">
                              <c:forEach items="${productList}" var="product" >
                             <div class="grid_column-2-4">
                              <a class="home-product-item" href="#">
                                  <div class="home-product-item-img" style="background-image: url('${product.image}');">
                                      
                                   </div>
                                  <h4 class="home-product-item-name">${product.name}</h4>
                                  <div class="home-product-item_price">
                                      <span class="home-product-item_price-old">1500000</span>
                                      <span class="home-product-item_price-current">${product.price}</span>
                                  </div>
                                  <div class="home-product-item_action">
                                      <span class="home-product-item_heart-like home-product-item_heart-liked">
                                          <i class="home-product-item_heart-like-icon-emty fas fa-heart"></i>
                                           <i class="home-product-item_heart-liked-icon-fill far fa-heart"></i>
                                      </span>
                                      <div class="home-product-item_rating">
                                          <i class="home-product-item_rating-gold fas fa-star"></i><!-- comment -->
                                          <i class="home-product-item_rating-gold fas fa-star"></i><!-- comment -->
                                          <i class="home-product-item_rating-gold fas fa-star"></i><!-- comment -->
                                          <i class="home-product-item_rating-gold fas fa-star"></i><!-- comment -->
                                          <i class=" fas fa-star"></i> 
                                      </div>
                                      <span class="home-product-item_sold">Đã bán </span>
                                  </div>
                                  <div class="home-product-item_origin">
                                      <span class="home-product-item_brand">${product.id}</span><!-- comment -->
                                      <span class="home-product-item_origin_brand">nhat ban</span>
                                  </div>
                                  <div class="home-product-item_favourite">
                                      <i class="fas fa-check"></i>
                                      yeu thich
                                  </div>
                                  <div class="home-product-item_sale-off">
                                      <span class="home-product-item_sale-off-pecent">10%</span>
                                      <span class="home-product-item_sale-off-label">giam</span><!-- comment -->
                                  </div>
                              </a>
                              </div>
                              </c:forEach>
                        
                          
                         
                         
                         
                      </div>
                      
                  </div>
              </div>
            
            </div>               
           </div>
        </div>
    </body>
</html>
