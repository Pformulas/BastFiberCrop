<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Download</title>
    <link rel="stylesheet" href="css/semantic.css">
    <script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
    <script src="js/semantic.js"></script>
    <style>
        body{
            font-family: "Microsoft YaHei UI";
        }
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
                <a href="#" class="item">SSR</a>
                <a href="#" class="item">SNP</a>
                <a href="#" class="item">InDel</a>
            </div>
        </div>
        <a href="#" class="ui dropdown item">Tools</a>
        <a href="Download.do" class="ui dropdown item">Download</a>
        <a href="About_Us.do" class="ui dropdown item">About us</a>
    </div>
</div>

<!--中部-->
<div class="ui doubling stackable one column grid" style="font-size: 18px;">
    <!--分隔条-->
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column" style="margin-top: 100px;">
            <h4 class="ui horizontal header divider">
                <a href="#" style="color: #3c3c3c;font-size: 20px;">下载数据</a>
            </h4>
        </div>
        <div class="four wide column"></div>
    </div>
    <!--间隔-->
    <div class="row"></div>
    <div class="row"></div>
    <!--下载项目-->
	
	<c:forEach items="${downloadList }" var="bean">
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column">
            <div class="ui feed">
                <div class="ui event">
                    <div class="label">
                        <img src="img/jhk-1514787687547.jpeg" alt=""/>
                    </div>
                    <div class="content">下载项目</div>
                </div>
            </div>
        </div>
        <div class="four wide column"></div>
    </div>
    <div class="row">
        <div class="five wide column"></div>
        <div class="four wide column">
            <div class="content"><i class="leaf green icon"></i><span class="item" style="color:#4183c4">${bean }</span></div>
        </div>
        <div class="two wide column">
            <div class="content"><i class="linkify icon"></i><a href="#" class="item">Chick here</a></div>
        </div>
        <div class="five wide column"></div>
    </div>
	</c:forEach>

    <!--间隔-->
    <div class="row"></div>
    <div class="row"></div>
    <!--底部的叶子和文字-->
    <div class="eight column centered row" style="font-size: 15px;">
        <div class="column">
            <div class="ui small image">
                <img src="img/grass.png" alt=""/>
            </div>
        </div>
        <div class="column">
            <div class="ui items">
                <div class="item" style="font-weight: bold;">
                    <div class="content">
                        <div class="description">
                            <p style="margin-bottom: 0px">麻类作物数据中心</p>
                            <p>Bast fIber Crop Data Center</p>
                        </div>
                        <div class="description" style="margin-top: 25px">
                            <p>福建福州仓山区</p>
                            <p>TEL: 010-xxxxxxxx</p>
                            <p>QQ: 790452xxx</p>
                            <p>EMAIL: 790452xxx@qq.com</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!--间隔-->
    <div class="row"></div>
    <div class="row"></div>
</div>
<!--底部-->
<div class="ui centered grid">
    <div class="black inverted row">
        <div class="ui inverted link list">
            <a href="#" class="item">版权所有：福建农林大学作物研究所</a>
            <a href="#" class="item">地址：福建福州仓山区</a>
            <a href="#" class="item">网站图片严禁盗用，违者将追究法律责任</a>
            <a href="#" class="item">若图片设计版权问题，请联系我们</a>
        </div>
    </div>
</div>
<script>
  $('.ui.dropdown.item').dropdown({
    on:'hover'
  });
</script>
</body>
</html>