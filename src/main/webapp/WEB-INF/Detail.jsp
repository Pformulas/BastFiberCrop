<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Genome browse</title>
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
                <a href="Jute.do" class="item">Jute</a>
                <a href="Kenaf.do" class="item">Kenaf</a>
                <a href="Hemp.do class="item">Hemp</a>
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
<div class="ui stackable doubling grid" style="font-size: 18px;">
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
    <div class="centered row">
        <div class="eight wide column">
            <div class="ui form">
                <div class="field">
                    <label>基因编号</label>
                    <div class="two fields">
                        <div class="field">
                            <textarea rows="2" style="resize: none"></textarea>
                        </div>
                    </div>
                </div>
                <div class="field">
                    <label>基因组序列</label>
                    <textarea style="resize: none"></textarea>
                </div>
                <div class="field">
                    <label>CDS序列</label>
                    <textarea style="resize: none"></textarea>
                </div>
                <div class="field">
                    <label>蛋白序列</label>
                    <textarea style="resize: none"></textarea>
                </div>
            </div>
        </div>
    </div>
    <div class="row"></div>
    <div class="row">
        <div class="center aligned column">
            <button class="ui inverted green large button">返回</button>
        </div>
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