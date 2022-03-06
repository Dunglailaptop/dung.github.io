    <link rel="stylesheet" href="main.css">
        <link rel="stylesheet" href="base.css">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
   <div class="header">
                <nav class="container">

                <ul class="main-menu">
                    <li><a href="productlist"><i class="fas fa-home"></i> Trang chủ</a></li>
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
                    <c:if test="${sessionScope.acc.idsell== 1}">
                    <li><a href="manageproduct"><i class="far fa-question-circle"></i>manage store</a></li>
                    </c:if>
                    <c:if test="${sessionScope.acc.admin== 1}">
                     <li><a href="manageaccount"><i class="far fa-question-circle"></i>manage account</a></li>
                    </c:if>
                </ul>
                    <ul class="main-menu">
                        <c:if test="${sessionScope.acc != null}">
                            <li><a class="picture_user" href=""><i class="  fas fa-user-circle"></i>Hello ${sessionScope.acc.userName}</a></li>
                    <li><a href="logout"><i class="fas fa-sign-out-alt"></i>logout</a></li>
                        </c:if>
                        <c:if test="${sessionScope.acc ==null}">
                    <li><a href="newjsp.jsp"><i class="fas fa-user-plus"></i> Đăng ký</a></li><!-- comment -->
                    <li><a href="DANGNHAP.jsp"><i class="fas fa-user"></i> Đăng nhập</a></li><!-- comment -->
                    </c:if>
                </ul>
               </nav>
                <div class="search">
                     <a href="#" class="logo">
                    <img src="https://xyzscripts.com/data/clone/chotot-clone-script-og.png" >
                </a>
                    <form  method="POST" action="search">
                    <li class="search-btn">
                       <input  name="txt" type="text" placeholder="tim kiem">
                       <button type="submit">
                                   <i class="fas fa-search"></i>
                             </button>
                    </li><!-- comment -->
                    </form>
                    <div class="search-btn">
                        <a href="print"> <i class="fas fa-shopping-cart"></i></a>
<!--                        <div class="cart_report">
                            <img  src="" class="product_img">
                            <h4>hien tai co () san pham <br/>trong gio hang</h4>
                        </div>
                         -->
                    </div>
                </div>
            </div>