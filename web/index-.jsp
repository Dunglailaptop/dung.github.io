<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="./css/fontawesome-free-5.15.4-web/css/all.min.css">
   
    </head>
    <body>
        <style>
            body{
                margin: 0;
            }
            ul li{
                list-style: none;
            }
            .warpper{
              background-color: white;
              color: white;
                  font-size: 1.3rem;
            } 
            .header_menu{
                height:60px;
                border-bottom:1px solid black;
                display:flex;
                justify-content: space-between;
                align-items: center;
                background-color: black;
            }
            .clearfix{
                clear:both;
            }
            .logo{
                float:left;
                height: 20px;
                padding: 10px;
            }
            .logo img{
                height:100%;
                width:auto;
            }
            .main-menu {
                float:right;
                display: flex;
                align-content: center;
                align-items: center;
            }
            .main-menu2{
                  float:right;
                display: flex;
                align-content: center;
                align-items: center;
            }
            .main-menu li{
                float: left;
            }
            li.ds a{
                padding:12px 15px;
                text-decoration: none;
                color: white;
                font-size: 1.3rem;
            }
            li.ds a:hover{
                color: blue;
            }
            i.icon{
                padding: 0px 5px 0 0;
            }
            .content{
                background-color: white;
            }
            
            .img-content{
                width: 960px;
               height: 900px;
            }
            .picture{
                width: 100%;
               height: 100%;
            }
            .menu-picture{
                display:flex;
                justify-content: center;
            }
            .menu-picture li a .picture-1{
                width:300px;
            }
            .content-2{
                background-color: white;
            }
        </style>
        <div class="warpper">
            <div class="header_menu">
                
                <ul class="main-menu">
                    <a href="#" class="logo">
                    <img src="./picture/logo.png"><!-- comment -->
                </a>
                    <li class="ds"><a href="#"><i class="fas fa-home icon"></i>Home</a></li>
                    <li class="ds"><a href="#"><i class="far fa-list-alt icon"></i>Product List</a></li><!-- comment -->
                    <li class="ds"><a href="#"><i class="far fa-question-circle icon"></i>review</a></li><!-- comment -->
                    <li class="ds"><a href="#"><i class="fas fa-phone-square-alt icon"></i>Call</a></li><!-- comment -->
                  
                </ul>
                <div class="clear-fix">
                    <ul class="main-menu2">
                        <li class="ds"><a href="#"><i class="fas fa-user-circle icon"></i>login</a></li><h1>/</h1><!-- comment -->
                      <li class="ds"><a href="#"><i class="fas fa-user-plus icon"></i>sign in</a></li>
                      </ul>
                </div>
            </div>
            <div class="content">
                <a class="img-content">
                    <img class="picture" src="https://d2cdo4blch85n8.cloudfront.net/wp-content/uploads/2020/10/adidas-NMD_R1-The-Mandalorian-Shoes-image-4.jpg"><!-- comment -->
                </a>
               
            </div>
            <div class="content-2">
                 <ul class="menu-picture">
                    <li><a href=""><img class="picture-1" src="http://1000logos.net/wp-content/uploads/2016/10/Adidas-Logo.jpg"></a></li>
                    <li><a href=""><img class="picture-1" src="http://1000logos.net/wp-content/uploads/2017/03/Nike-emblem.jpg"></a></li><!-- comment -->
                    <li><a href=""><img class="picture-1" src="http://1000logos.net/wp-content/uploads/2016/10/Adidas-Logo.jpg"></a></li>
                   
                </ul>
            </div>
            <jsp:include page="footer.jsp"></jsp:include>  
        </div>
    </body>
</html>
