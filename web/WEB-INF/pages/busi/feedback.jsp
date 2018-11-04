<%--
  Created by IntelliJ IDEA.
  User: 123456
  Date: 2017/11/29
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>武汉必备德汽配公司</title>
    <meta name="description" content="武汉必备德汽配公司"/>
    <meta name="keywords" content="必备德"/>
    <link href="<%=request.getContextPath()%>/css/css.css" rel="stylesheet" type="text/css"/>
    <script language="javascript" src="<%=request.getContextPath()%>/js/pub.js"></script>
</head>


<div>
    <table width="1002" border="0" align="center" cellpadding="0" cellspacing="0" bgcolor="#FFFFFF"
           style="padding:10px 6px 25px 6px; margin-top:10px;">
        <tr>
            <td>
                <table width="990" border="0" cellspacing="0" cellpadding="0">
                    <tr>
                        <td width="220" valign="top">
                            <div>
                                <!-- products list start-->
                                <jsp:include page="/product/productsTypeList"/>

                                <!-- products list end-->
                            </div>

                        </td>
                        <td width="10"></td>
                        <td width="760" valign="top">
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:10px;">
                                <tr>
                                    <td>
                                        <object classid="clsid:D27CDB6E-AE6D-11cf-96B8-444553540000"
                                                codebase="swflash.cab#version=7,0,19,0"
                                                tppabs="http://download.macromedia.com/pub/shockwave/cabs/flash/swflash.cab#version=7,0,19,0"
                                                width="760" height="250">
                                            <param name="movie" value="<%=request.getContextPath()%>/images/pagebanner.swf"
                                                   tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/pagebanner.swf"/>
                                            <param name="quality" value="high"/>
                                            <embed src="<%=request.getContextPath()%>/images/pagebanner.swf"
                                                   tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/pagebanner.swf" quality="high"
                                                   pluginspage="http://www.macromedia.com/go/getflashplayer"
                                                   type="application/x-shockwave-flash" width="760"
                                                   height="250"></embed>
                                        </object>
                                    </td>
                                </tr>
                            </table>
                            <table width="100%" border="0" cellspacing="0" cellpadding="0" style="margin-bottom:25px;">
                                <tr>
                                    <td width="42%" height="30" class="blackbt">Feedback</td>
                                    <td width="58%">
                                        <div align="right"><img src="<%=request.getContextPath()%>/images/home_icon.gif"
                                                                tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/home_icon.gif"
                                                                width="16" height="15" align="absmiddle"/> Home -&gt;
                                            Feedback
                                        </div>
                                    </td>
                                </tr>
                                <tr>
                                    <td colspan="2" bgcolor="#e0e0e0"><img src="<%=request.getContextPath()%>/images/redline.gif"
                                                                           tppabs="http://www.cn-aodi.com<%=request.getContextPath()%>/images/redline.gif"
                                                                           width="100" height="1"/></td>
                                </tr>
                            </table>
                            <table width="96%" border="0" align="center" cellpadding="0" cellspacing="0">
                                <tr>
                                    <td align="left" class="s12-21"><span class="font08"><strong>Dear Clients:</strong></span><br/>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Tell us what you think about our products,
                                        our company, our web site, or anything else that comes to mind. We welcome all
                                        of your comments and suggestions. We may deal with it as soon as posible. Glad
                                        to hear from you. <br/>
                                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Thanks more!
                                    </td>
                                </tr>
                                <tr>
                                    <td align="left" style="border-bottom:1px dashed #CCCCCC">&nbsp;</td>
                                </tr>
                            </table>
                            <script language="JavaScript" src="../inquiry.haibo.net/en/CheckSenderMail.js"
                                    tppabs="http://inquiry.haibo.net/en/CheckSenderMail.js"
                                    type="text/javascript"></script>
                            <table width="80%" border="0" align="center" class="Tab_For_Email" style="margin-top:15px;">
                                <form action="http://inquiry.haibo.net/En/Inquiry.asp" method="post">
                                    <input type="hidden" name="send_companyname" id="companyname"
                                           value="Zhejiang Aodi Machinery Manufacturing Co., Ltd."/>
                                    <input type="hidden" name="send_mailto" id="send_mailto" value="aodi@zjaodi.com"/>
                                    <tr>
                                        <td width="23%" align="left" class="a12"><font color="#FF0000">*</font>Subject:
                                        </td>
                                        <td width="77%" align="left" class="a12"><input type="text" name="send_title"
                                                                                        id="send_title" size="45"/></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="a12"><font color="#FF0000">*</font>Inquiry Message:</td>
                                        <td align="left" class="a12"><textarea name="send_content" id="send_content"
                                                                               rows="8" cols="55"></textarea></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="a12"><font color="#FF0000">*</font>Your Company:</td>
                                        <td align="left" class="a12"><input type="text" name="send_comname"
                                                                            id="send_comname" size="45"/></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="a12"><font color="#FF0000">*</font>Your Name:</td>
                                        <td align="left" class="a12"><input type="text" name="send_person"
                                                                            id="send_person" size="45"/></td>
                                    </tr>
                                    <tr>
                                        <td align="left" valign="top" class="a12"><font color="#FF0000">*</font>Your
                                            E-mail:
                                        </td>
                                        <td align="left" class="a12"><input type="text" name="send_email"
                                                                            id="send_email" size="45"/>
                                            <br/>
                                            <font color="#FF0000">(Please make sure your E-mail address is correct.
                                                Else, the receiver cannot reply you afterwards.)</font></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="a12"><font color="#FF0000">*</font>Your Tel:</td>
                                        <td align="left" class="a12"><input type="text" name="send_tel" id="send_tel"
                                                                            size="45"/></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="a12">&nbsp;Your Fax:</td>
                                        <td align="left" class="a12"><input type="text" name="send_fax" id="send_fax"
                                                                            size="45"/></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="a12">&nbsp;Your Country / Region:</td>
                                        <td align="left" class="a12"><input type="text" name="send_address"
                                                                            id="send_address" size="45"/></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="a12">&nbsp;Your Website:</td>
                                        <td align="left" class="a12"><input type="text" name="send_website"
                                                                            id="send_website" size="45"/></td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="a12">&nbsp;Business Type:</td>
                                        <td align="left" class="a12"><input type="checkbox" name="send_comtype"
                                                                            id="send_dls" value="Agent"/>
                                            <label for="send_dls">Agent</label>
                                            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                            <input type="checkbox" name="send_comtype" id="send_pfs"
                                                   value="Distributor/Wholesaler"/>
                                            <label for="send_pfs">Distributor/Wholesaler</label>
                                            <br/>
                                            <input type="checkbox" name="send_comtype" id="send_cks" value="Exporter"/>
                                            <label for="send_cks">Exporter&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</label>
                                            <input type="checkbox" name="send_comtype" id="send_jks" value="Importer"/>
                                            <label for="send_jks">Importer</label>
                                            <br/>
                                            <input type="checkbox" name="send_comtype" id="send_scs"
                                                   value="Manufacturer"/>
                                            <label for="send_scs">Manufacturer</label>
                                            <input type="checkbox" name="send_comtype" id="send_lss" value="Retailer"/>
                                            <label for="send_lss">Retailer</label>
                                            <br/>
                                            <input type="checkbox" name="send_comtype" id="send_qt" value="Others"/>
                                            <label for="send_qt">Others</label>
                                            <input type="text" name="send_qt_value" id="send_qt_value"/>
                                        </td>
                                    </tr>
                                    <tr>
                                        <td align="left" class="a12"><font color="#FF0000">*</font>Code:</td>
                                        <td align="left" class="a12"><input type="text" size="5" name="send_yzm"
                                                                            id="send_yzm" maxlength="8"/>
                                            <img src="" id="send_Img_yzm" align="absmiddle" onclick="Changeyzm();"
                                                 style="cursor:pointer;"/> See clearly? Click <a
                                                    href="javascript:Changeyzm();"><font
                                                    color="red">Refresh</font></a><br/>
                                            Please enter the number next to!
                                        </td>
                                    </tr>
                                    <script language="JavaScript" type="text/javascript">Changeyzm();</script>
                                    <tr height="30">
                                        <td class="a12"></td>
                                        <td height="40" align="left" class="a12"><input name="submit" type="submit"
                                                                                        class="btn_submit" id="submit"
                                                                                        onclick="return CheckSenderMail();"
                                                                                        value="  "/></td>
                                    </tr>
                                </form>
                            </table>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</div>
</html>


