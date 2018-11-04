/*
if(srh1.value.Trim()==""){...}
*/
String.prototype.Trim=function(){return this.replace(/(^\s*)|(\s*$)/g,"");}
//function String.prototype.Trim(){return this.replace(/(^\s*)|(\s*$)/g,"");}
function $2(val){ return document.getElementById(val); }
/*
autoRun(30, "demo", "marquePic1", "marquePic2");
*/
function autoRun(speed, demo1, maq1, maq2)
{
	var demo = document.getElementById(demo1);
	var marquePic1 = document.getElementById(maq1);
	var marquePic2 = document.getElementById(maq2);
	marquePic2.innerHTML = marquePic1.innerHTML		 
	function Marquee1()
	{
		if(demo.scrollLeft>=marquePic1.scrollWidth)
		{ demo.scrollLeft=0; }
		else
		{ demo.scrollLeft++; }
	}
	var MyMar = setInterval(Marquee1, speed) 
	demo.onmouseover = function(){ clearInterval(MyMar); } 
	demo.onmouseout = function(){ MyMar=setInterval(Marquee1,speed); }
}

/*
chk_search("en", "srh_form", "srh");
*/
function chk_search(typ, form, srh, url, txt_kwds)
{
	var form1 = document.getElementById(form);
	var srh1 = document.getElementById(srh);
	var txt_kwds, txt_error, txt_href;
	if(typ == "cn")
	{
		txt_error = "������Ҫ���������ݣ�";
		txt_href = url + "?srh=";
	}else
	{
		txt_error = "Please enter search content!";
		txt_href = url + "?srh=";
	}
	
	form1.onsubmit = chkpost;
	srh1.value = txt_kwds;
	srh1.onclick = _onclick;
	srh1.onblur = _onblur;
	srh1.onmouseover = _onmouserover;
	
	function _onmouserover()
	{
		this.select();
	}
	
	function chkpost()
	{
		if(srh1.value.Trim()==""||srh1.value.Trim()==txt_kwds)
		{
			alert(txt_error);
			srh1.value = "";
			srh1.select();
			return false;
		}else
		{
			location = txt_href + escape(srh1.value);
		}
		return false;
	}
	
	function _onblur()
	{
		if(srh1.value.Trim()=="")
		{
			srh1.value = txt_kwds;
		}
	}
	
	function _onclick()
	{
		if(srh1.value.Trim()==txt_kwds)
		{
			srh1.value = "";
		}
	}
}

/*
open1('http://www.biBeiDe.com/js/newproducts.asp','500','310');
*/
function open1(url,x,y)
{
	newWindow=window.open(url,"newwindow","width="+x+",height="+y+",top="+((window.screen.height-y)/2)+",left="+((window.screen.width-x)/2))
	newWindow.focus();
}

/*
window.onload=function(){showModal('http://www.biBeiDe.com/js/reg_Login.asp',500,320);}
javascript:window.returnValue='http://www.biBeiDe.com/js/reg.asp';window.close();
*/
function showModal(url,width,height)
{
	try
	{
		var ret = window.showModalDialog(url,window,'dialogHeight:'+height+' px; dialogWidth:'+width+' px; dialogTop: px; dialogLeft: px; edge: Raised; center: Yes; help: No; resizable: No; status: No; scroll:yes;');
        if(ret=="reload")
        {
            this.location.reload();
        }else if(ret!=null)
		{
			this.location=ret;
		}
        return ret;
	}
	catch(e){}	
}

//DrawImage(this,100,100);
function DrawImage(ImgD,width,height)
{  
	var image = new Image();  
	image.src=ImgD.src;
	if(image.width>0  &&  image.height>0)
	{
		if(image.width/image.height>=  width/height)
		{
			if(image.width>width)
			{
				ImgD.width=width;  
				ImgD.height=(image.height*width)/image.width;  
			}
			else
			{
				ImgD.width=image.width;      
				ImgD.height=image.height;  
			}
			//ImgD.alt=image.width+"��"+image.height;  
		}
		else
		{
			if(image.height>height)
			{
				ImgD.height=height;  
				ImgD.width=(image.width*height)/image.height;            
			}
			else
			{
				ImgD.width=image.width;
				ImgD.height=image.height;  
			}
			//ImgD.alt=image.width+"��"+image.height;  
		}
	}  
}

/*
loadimgdx("imgdx",111,111)
*/
function loadimgdx(imgname,w,h)
{
	var img = document.getElementsByName(imgname);
	for(var i=0;i<img.length;i++)
	{
		loadimg(img[i],w,h);
	}
	
	function loadimg(img,w,h)
	{
		var load1 = new Image();
		var src=img.src;
		img.src = "js/loading.gif"/*tpa=http://www.biBeiDe.com/js/js/loading.gif*/;
		load1.onload = function(){
			img.src = load1.src;
			if(w&&h){ DrawImage(img,w,h); }
		}
		load1.onerror = function(){
			img.src = load1.src;
		}
		load1.src = src;
	}
}

//body="resizeModal();"
function resizeModal()
{
	if(window.dialogArguments == null)
	{
		return; //���Է�ģ̬����
	}
	//���ĸ߶�
	var width=document.body.scrollWidth;
	var height = document.body.scrollHeight;
	//���ȥ�߶�
	var widthLeft = document.body.scrollLeft;
	var heightTop = document.body.scrollTop;
	//dialogHeight, dialogHeight
	var diaWidth, diaHeight;
	// dialogLeft, dialogTop
	var diaLeft, diaTop;
	
	if (window.XMLHttpRequest) {
		diaWidth = width+widthLeft+5
		diaHeight = height+heightTop+5
	}
	else
	{
		//IE6�����Զ������߶ȣ�Ҫ��45
		diaWidth = width+widthLeft+55
		diaHeight = height+heightTop+55
	}
	diaLeft = (window.screen.width-diaWidth)/2;
	diaTop = (window.screen.height-diaHeight)/2;
	window.dialogLeft=diaLeft;
	window.dialogTop=diaTop;
	document.body.scroll="no";
	window.dialogHeight= diaHeight+"px";
	window.dialogWidth= diaWidth+"px";	
	//window.attachEvent('onload', function(){resetDialogHeight();});
	//http://www.cftea.com/c/2006/08/VW0FHA7VEAAN96HU.asp
}

/*
function chkradio(obj1)
{
	var chkd=false;
	for(i=0;i<=obj1.length-1;i++)
	{
		if(obj1[i].checked)
		chkd=true;
		//alert(obj1[i].value);
	}
	return chkd;
}
*/

function HuaBan()
{
	<!-- Original:  Altan (snow@altan.hr) -->
	<!-- Smaller flakes, subtle snowfall variables, code beautifcation and makeSnow function by NoSLZZP -->
	
	var no = 6; // snow number
	var speed = 12; // smaller number moves the snow faster
	var snowflake = "1.gif"/*tpa=http://www.biBeiDe.com/js/1.gif*/;
	
	var ns4up = (document.layers) ? 1 : 0;  // browser sniffer
	var ie4up = (document.all) ? 1 : 0;
	var dx, xp, yp;    // coordinate and position variables
	var am, stx, sty;  // amplitude and step variables
	var i, doc_width = 1004, doc_height = 500;
	if (ns4up) {
	  doc_width = self.innerWidth;
	  doc_height = self.innerHeight;
	} else if (ie4up) {
	  doc_width = 1004;
	  doc_height = 500;
	}
	doc_width =document.body.clientWidth;//???
	dx = new Array();
	xp = new Array();
	yp = new Array();
	am = new Array();
	stx = new Array();
	sty = new Array();
	for (i = 0; i < no; ++ i) { 
	  dx[i] = 0;                        // set coordinate variables
	  xp[i] = Math.random()*(doc_width-50);  // set position variables
	  yp[i] = Math.random()*doc_height;
	  am[i] = Math.random()*20;         // set amplitude variables
	  stx[i] = 0.02 + Math.random()/10; // set step variables
	  sty[i] = 0.7 + Math.random();     // set step variables
	  if (ns4up) {                      // set layers
		if (i == 0) {
		  document.write("<layer name=\"dot"+ i +"\" left=\"15\" ");
		  document.write("top=\"15\" visibility=\"show\"><img src=\"");
		  document.write(snowflake + "\" border=\"0\"></layer>");
		} else {
		  document.write("<layer name=\"dot"+ i +"\" left=\"15\" ");
		  document.write("top=\"15\" visibility=\"show\"><img src=\"");
		  document.write(snowflake + "\" border=\"0\"></layer>");
		}
	  } else if (ie4up) {
		if (i == 0) {
		  document.write("<div id=\"dot"+ i +"\" style=\"POSITION: ");
		  document.write("absolute; Z-INDEX: "+ i +"; VISIBILITY: ");
		  document.write("visible; TOP: 15px; LEFT: 15px;\"><img src=\"");
		  document.write(snowflake + "\" border=\"0\"></div>");
		} else {
		  document.write("<div id=\"dot"+ i +"\" style=\"POSITION: ");
		  document.write("absolute; Z-INDEX: "+ i +"; VISIBILITY: ");
		  document.write("visible; TOP: 15px; LEFT: 15px;\"><img src=\"");
		  document.write(snowflake + "\" border=\"0\"></div>");
		}
	  }
	}
	this.snowNS=function() {  // Netscape main animation function
	  for (i = 0; i < no; ++ i) {  // iterate for every dot
		yp[i] += sty[i];
		if (yp[i] > doc_height-50) {
		  xp[i] = Math.random()*(doc_width-am[i]-30);
		  yp[i] = 0;
		  stx[i] = 0.02 + Math.random()/10;
		  sty[i] = 0.7 + Math.random();
		  doc_width = self.innerWidth;
		  doc_height = self.innerHeight;
		}
		dx[i] += stx[i];
		document.layers["dot"+i].top = yp[i];
		document.layers["dot"+i].left = xp[i] + am[i]*Math.sin(dx[i]);
	  }
	  setTimeout("snowNS()", speed);
	}
	
	this.snowIE=function() {  // IE main animation function
	  for (i = 0; i < no; ++ i) {  // iterate for every dot
		yp[i] += sty[i];
		if (yp[i] > doc_height-50) {
		  xp[i] = Math.random()*(doc_width-am[i]-30);
		  yp[i] = 0;
		  stx[i] = 0.02 + Math.random()/10;
		  sty[i] = 0.7 + Math.random();
		  doc_width = document.body.clientWidth;
		  doc_height = document.body.clientHeight;
		}
		dx[i] += stx[i];
		document.all["dot"+i].style.pixelTop = yp[i];	
		document.all["dot"+i].style.pixelLeft = xp[i] + am[i]*Math.sin(dx[i]);
	  }
	  setTimeout("snowIE()", speed);
	}
	
	if (ns4up) {
	  snowNS();
	} else if (ie4up) {
	  snowIE();
	}
}

function chkradio(obj1)
{
	var chkd=false;
	for(i=0;i<=obj1.length-1;i++)
	{
		if(obj1[i].checked)
		chkd=true;
		//alert(obj1[i].value);
	}
	return chkd;
}

function chk_nbsp(aaa)
{
	var str1=""
	for(i=0;i<aaa.value.length;i++)
	{str1=str1+" ";}	
	if(aaa.value==str1)
	{
		aaa.value="";
		aaa.focus();
		return false;
	}
}