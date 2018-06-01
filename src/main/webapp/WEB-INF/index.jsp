<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
    <link rel="stylesheet" href="css/semantic.css">
    <link rel="stylesheet" href="css/swiper.min.css">
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
    <script src="js/semantic.js"></script>
    <style>
        .right.inverted.secondary.menu.left_menu .item:hover,
        .right.inverted.secondary.menu.left_menu .ui.dropdown.item:hover{
            background-color: #9bcd9b;
            color: #3c3c3c;
         }
        .ui.inverted.fixed.menu.Imenu{
            background-color: rgba(60,60,60,0.92);
            -webkit-box-shadow: 0px 3px 2px 0 rgba(34, 36, 38, 0.5);
            box-shadow: 0px 3px 2px 0 rgba(34, 36, 38, 0.5);
        }
        .swiper-container {
            width: 100%;
            height: 500px;
            margin-top:80px ;
        }
        .swiper-slide {
            text-align: center;
            font-size: 18px;
            background: #fff;

            /* Center slide text vertically */
            display: -webkit-box;
            display: -ms-flexbox;
            display: -webkit-flex;
            display: flex;
            -webkit-box-pack: center;
            -ms-flex-pack: center;
            -webkit-justify-content: center;
            justify-content: center;
            -webkit-box-align: center;
            -ms-flex-align: center;
            -webkit-align-items: center;
            align-items: center;
        }
        .news{
            color: #3c3c3c;
            font-family: "Microsoft YaHei UI";
            font-size:20px;
            line-height: 28px;
        }

    </style>
</head>
<body>
<!--头部-->
<div class="ui inverted fixed menu Imenu">
        <!--左边-->
        <div class="left item">
            <h2 class="ui inverted header">
                麻类作物数据中心
                <p class="sub header">
                    Bast fIber Crop Data Center
                </p>
            </h2>
        </div>
        <!--右边-->
        <div class="right inverted secondary menu left_menu">
            <a href="index.do" class="ui dropdown item">Home</a>
            <div class="ui dropdown item">Genome browse<i class="icon dropdown"></i>
                <div class="menu">
                    <a href="Jute.do" class="item">Jute</a>
                	<a href="Kenaf.do" class="item">Kenaf</a>
                	<a href="Hemp.do" class="item">Hemp</a>
                </div>
            </div>
            <div class="ui dropdown item">Germplasm<i class="icon dropdown"></i>
                <div class="menu">
                    <a href="Germplasm.do" class="item">varieties</a>
                    <a href="Germplasm.do" class="item">accessicons</a>
                    <a href="Germplasm.do" class="item">phenotype data</a>
                </div>
            </div>
            <a href="#" class="ui dropdown item">Expression</a>
            <div class="ui dropdown item">Motecular Marker<i class="icon dropdown"></i>
                <div class="menu">
                    <a class="item">SSR</a>
                    <a class="item">SNP</a>
                    <a class="item">InDel</a>
                </div>
            </div>
            <a href="#" class="ui dropdown item">Tools</a>
            <a href="Download.do" class="ui dropdown item">Download</a>
            <a href="About_Us.do" class="ui dropdown item">About us</a>
        </div>
</div>

<!--中部-->
<div style="height: 550px;" >
<!--新闻轮播图-->
    <div class="swiper-container" style="width: 960px;">
        <div class="swiper-wrapper">
            <div class="swiper-slide"><img src="./img/1.jpg"></div>
            <div class="swiper-slide"><img src="./img/2.jpg"></div>
            <div class="swiper-slide"><img src="./img/3.jpg"></div>
            <div class="swiper-slide"><img src="./img/4.jpg"></div>
            <div class="swiper-slide"><img src="./img/5.jpg"></div>
        </div>
        <!-- Add Pagination -->
        <div class="swiper-pagination"></div>
        <!-- Add Arrows -->
        <div class="swiper-button-next"></div>
        <div class="swiper-button-prev"></div>
    </div>

</div>
<!--<div class="ui text" style="margin: 25px auto;width: 1200px;">
    <h4 class="ui horizontal header divider">
        <a href="#" style="color: #3c3c3c" s>最新消息</a>
    </h4>
</div>-->
<div class="ui stackable doubling one column grid" style="font-size: 18px;">
    <!--分隔条-->
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column" style="margin-top: 25px;">
            <h4 class="ui horizontal header divider">
                <a href="#" style="color: #3c3c3c;font-size: 20px;">最新消息</a>
            </h4>
        </div>
        <div class="four wide column"></div>
    </div>
    <!--最新消息-->
    <c:forEach items="${newList }" var="bean">
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column">
            <p><i class="leaf green icon"></i>${bean.content }&nbsp;&nbsp; ${bean.time  }</p>
        </div>
        <div class="four wide column"></div>
    </div>
    </c:forEach>
    <!--更多消息-->
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column">
            <a href="index.do?currentPage=${(page.currentPage) % (page.totalPage) + 1}" style="color: #3c3c3c">更多消息<i class="angle double right icon"></i><i class="angle double right icon"></i><i class="angle double right icon"></i></a>
        </div>
    </div>
    <div class="row"></div>
    <div class="row"></div>
    <!--图片-->
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column">
            <div class="ui image">
                <img src="img/介绍.jpg" alt="图片"/>
            </div>
        </div>
        <div class="four wide column"></div>
    </div>
    <div class="row"></div>
    <div class="row"></div>
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column" style="margin-top: 25px;">
            <h4 class="ui horizontal header divider">
                <a href="#" style="color: #3c3c3c;font-size: 20px;">友情链接</a>
            </h4>
        </div>
        <div class="four wide column"></div>
    </div>
    <!-- 这里是自动下滚图的开始-->
    <div class="row">
        <div class="five wide column"></div>
        <div class="six wide column" style="margin-top: 25px;">
            <div id="mainBox" style="overflow:hidden;height:300px;margin: 0 auto;">
                <div id="box1" style="text-align: center" >
                    <div>
                        <div class="news">Marker Search1</div>
                        <p ><a href="http://www.baidu.com">(1) Markers for integratedmap-1, -2;</a></p>
                        <p ><a href="www.qq.com">(2) Markers for 1218 map</a></p>
                        <p></p>
                        <br>
                    </div>

                    <div>
                        <div class="news">Marker Search2</div>
                        <p><a href="www.baidu.com">(1) Markers for integratedmap-1, -2;</a></p>
                        <p><a href="www.baidu.com">(2) Markers for 1218 map</a></p>
                        <p></p>
                        <br>
                    </div>

                    <div>
                        <div class="news">Marker Search3</div>
                        <p><a href="www.baidu.com">(1) Markers for integratedmap-1, -2;</a></p>
                        <p><a href="www.baidu.com">(2) Markers for 1218 map</a></p>
                        <p></p>
                        <br>
                    </div>
                    <div>
                        <div class="news">Marker Search4</div>
                        <p><a href="www.baidu.com">(1) Markers for integratedmap-1, -2;</a></p>
                        <p><a href="www.baidu.com">(2) Markers for 1218 map</a></p>
                        <p></p>
                        <br>
                    </div>
                </div>
                <div id="box2" style="text-align: center"></div>
            </div>
        </div>
        <div class="five wide column"></div>
    </div>
    <!-- 这里是自动下滚图的结束-->
    <div class="row"></div>
    <div class="row"></div>
</div>
<div class="ui centered grid">
    <!--底部-->
    <div class="black inverted row">
        <div class="ui inverted link list">
            <a href="#" class="item">版权所有：福建农林大学作物研究所</a>
            <a href="#" class="item">地址：福建福州仓山区</a>
            <a href="#" class="item">网站图片严禁盗用，违者将追究法律责任</a>
            <a href="#" class="item">若图片设计版权问题，请联系我们</a>
        </div>
    </div>
</div>
<script src="js/swiper.min.js"></script>
<script src="js/auto.js"></script>
<script>
  $('.ui.dropdown.item').dropdown({
    on:'hover'
  });

  //这里是新闻轮播图的js设置
  var swiper = new Swiper('.swiper-container', {
      pagination: '.swiper-pagination',
      nextButton: '.swiper-button-next',
      prevButton: '.swiper-button-prev',
      paginationClickable: true,
      spaceBetween: 30,
      centeredSlides: true,
      autoplay: 2000,
      autoplayDisableOnInteraction: false,
      loop:true,
  });
  var box2=document.getElementById("box2");
  var box1=document.getElementById("box1");
  var mainBox=document.getElementById("mainBox");

  //自动滚动函数，第一个speed越大越快
  auto(20,mainBox,box1,box2)
</script>
</body>
</html>