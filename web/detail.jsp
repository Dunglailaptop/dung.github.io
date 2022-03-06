
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
               <link rel="stylesheet" href="main.css">
        <link rel="stylesheet" href="base.css">
         <link rel="stylesheet" href="./css/fontawesome-free-5.15.4-web/css/all.min.css">
         <script src="newjavascript.js"></script>
    </head>
    <body>
         <jsp:include page="menu.jsp"></jsp:include>
         <div class="app_container">
         <div class="grid_row app_content">
          <jsp:include page="leftcatelogry.jsp"></jsp:include>
          <div class="grid_column-8">
              <div class="row">
                  <div class="col-2-1">
                      <img src="${detail.image}" alt="alt" id="ProductImg" />
                      <div class="small-img-row">
                          <div class="small-img-col">
                              <img  src="${detail.image}" width="100%" alt="alt" class="small-img"/>
                          </div>
                           <div class="small-img-col">
                              <img  src="${detail.image1}" width="100%" alt="alt" class="small-img"/>
                           </div><!-- comment -->
                            <div class="small-img-col">
                              <img src="${detail.image2}" width="100%" alt="alt"  class="small-img"/>
                            </div><!-- comment -->
                             <div class="small-img-col">
                              <img  src="${detail.image3}" width="100%" alt="alt" class="small-img"/>
                          </div>
                      </div>
                  </div>
                  <div class="col-2">
                      <p>Home/ T-shirt</p>
                      <h1>${detail.name}</h1><!-- comment -->
                      <h4 class="old">old price:$50.00</h4>
                      <h4 class="new">new price:${detail.price}</h4>
                      <div class="mid">
                      <select>
                          <option>select size</option>
                          <option>xl</option><!-- comment -->
                           <option>xxl</option>
                            <option>s</option>
                           <option>sxl</option>
                      </select> 
                      <input class="sl-class" type="number" value="1">
                 
                      </div><!-- comment -->
                      <div class="cart">
                      <a href="cart?id=${detail.id}" class="btn add1"><i class="fas fa-cart-plus"></i>Add to cart</a>
                      <a href="" class="btn"><i class="fas fa-shopping-basket"></i>Buy Now</a>
                      </div>
                  </div>
                  
              </div>
              <div class="discrption">
                       <h3>Product detail</h3>
                      <p>Lịch sử của pizza bắt nguồn từ thời cổ đại, 
                          khi nhiều nền văn hóa cổ đại làm ra bánh mì dẹt với một lớp phủ bên trên. 
                         .</p>
                  </div>
          </div>
         </div>
         </div>
                       <jsp:include page="footer.jsp"></jsp:include>  
          <script>
              
var ProductImg=document.getElementById("ProductImg");
var Smallimg=document.getElementsByClassName("small-img");

Smallimg[0].onclick= function()
{
    ProductImg.src= Smallimg[0].src;
    
}
Smallimg[1].onclick= function()
{
    ProductImg.src= Smallimg[1].src;
    
}
Smallimg[2].onclick= function()
{
    ProductImg.src= Smallimg[2].src;
    
}
Smallimg[3].onclick= function()
{
    ProductImg.src= Smallimg[3].src;
    
}
          </script>
    </body>
</html>
