<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Result</title>
    <link rel="stylesheet" href="css/semantic.css">
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
                <a href="#" class="item">Jute</a>
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
<div class="ui stackable doubling one column grid" style="font-size: 18px;">
    <!--分隔条-->
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column" style="margin-top: 100px;">
            <h4 class="ui horizontal header divider">
                <a href="#" style="color: #3c3c3c;font-size: 20px;">基因组查询</a>
            </h4>
        </div>
        <div class="four wide column"></div>
    </div>
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column" style="text-indent: 2em;line-height: 1.6em">
            全基因组重测序是对已知基因组序列的物种进行不同个体的基因组测序，并在此基础上对个体或群体进行差异性分析。SBC将不同梯度插入片段 （Insert-Size）的测序文库结合短序列（Short-Reads）、双末端（Paired-End）进行测序，帮助客户在全基因组水平上扫描并 检测与重要性状相关的基因序列差异和结构变异，实现遗传进化分析及重要性状候选基因预测。
        </div>
        <div class="four wide column"></div>
    </div>
    <!--间隔-->
    <div class="row"></div>
    <div class="row"></div>
    <!--搜索-->
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column">
            <form class="ui form">
                <!--第一个搜索框-->
                <div class="inline fields">
                    <div class="four wide field">
                        <div class="ui input focus">
                            <input type="text" placeholder="序列ID"  name="id" value=${id}>
                        </div>
                    </div>
                    <div class="six wide field">
                        <div class="field">
                            <div class="field">
                                <select name="JuteSelect">
                                    <option value="0">CC</option>
                                    <option value="1">CO</option>
                                </select>
                            </div>
                        </div>
                    </div>
                    <div class="six wide field">
                        输入序列ID
                    </div>
                </div>
                <!--按钮-->
                <div class="inline fields" style="margin-top: 50px;">
                    <div class="seven wide field"></div>
                    <div class="three wide field">
                        <button class="ui inverted green large button">搜索</button>
                    </div>
                    <div class="seven wide field"></div>
                </div>
            </form>
        </div>
        <div class="four wide column"></div>
    </div>
    <!--间隔-->
    <div class="row"></div>
    <!--表格-->
    <div class="row">
        <div class="four wide column"></div>
        <div class="eight wide column">
        <c:forEach items="${geneList }" var="bean">
      	  	<div class="ui form">
                <div class="field">
                    <label>基因编号</label>
                    <div class="two fields">
                        <div class="field">
                            <span rows="2" style="resize: none;color:#21ba45;font-weight:bold;margin:10px;">${bean.id }</span>
                        </div>
                    </div>
                </div>
                <div class="field">
                    <label>基因组序列</label>
                    <textarea style="resize: none">${bean.gene }</textarea>
                </div>
                <div class="field">
                    <label>CDS序列</label>
                    <textarea style="resize: none">${bean.cds }</textarea>
                </div>
                <div class="field">
                    <label>蛋白序列</label>
                    <textarea style="resize: none">${bean.pro }</textarea>
                </div>
                <br><hr><br>
            </div>
     	</c:forEach>
        <c:if test="${empty geneList}">
             <div class="field">
                    <textarea style="resize: none; margin: 0, auto">无法查询到您需要的内容</textarea>
             </div>	
        </c:if>
               
        </div>
        <div class="four wide column"></div>
    </div>
    <!-- 按钮 -->
    <div class="row">
        <div class="ten wide column"></div>
        <div class="two wide column">
        	<a class="ui inverted green large button" href="JutePost.do?currentPage=${page.currentPage - 1 }&id=${id}&JuteSelect=${JuteSelect }"
    	 		<c:if test="${page.currentPage == 1 }">style="color:#ccc" onclick="javascript:return false"</c:if>
    	 	>上一页</a>
        </div>
        <div class="two wide column">
            <a class="ui inverted green large button" href="JutePost.do?currentPage=${page.currentPage + 1 }&id=${id}&JuteSelect=${JuteSelect }"
    	 		<c:if test="${page.currentPage == page.totalPage }">style="color:#ccc" onclick="javascript:return false"</c:if>
    	 	>下一页</a>
        </div>
        <div class="four wide column"></div>
    </div>
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
<script src="https://cdn.bootcss.com/jquery/3.3.1/jquery.js"></script>
<script src="js/semantic.js"></script>
<script>
  $('.ui.dropdown.item').dropdown({
    on:'hover'
  });
  $('.ui.fluid.search.selection.dropdown').dropdown();
</script>
</body>
</html>