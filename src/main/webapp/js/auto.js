function auto(speed,mainBox,box1,box2) {
    box2.innerHTML=box1.innerHTML; //克隆box2为box1
    function Marquee1(){
//当滚动至box1与box2交界时
        if(box2.offsetTop-mainBox.scrollTop<=mainBox.offsetTop){
            mainBox.scrollTop-=box1.offsetHeight; //mainBox跳到最顶端

        }else{
            console.log(box2.offsetTop-mainBox.scrollTop)
            mainBox.scrollTop++
        }
    }
    var MyMar1=setInterval(Marquee1,speed)//设置定时器
    //鼠标移上时清除定时器达到滚动停止的目的
    mainBox.onmouseover=function() {clearInterval(MyMar1)}
    //鼠标移开时重设定时器
    mainBox.onmouseout=function(){MyMar1=setInterval(Marquee1,speed)}
}