package zxl.qipei.biBeiDe.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import zxl.qipei.biBeiDe.service.ManagerServcie;
import zxl.qipei.biBeiDe.service.ProductService;
import zxl.qipei.biBeiDe.utils.StringUtils;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.Enumeration;
/**
 * Created by Administrator on 2017/12/14.
 */
@Controller
@RequestMapping("/manager")
public class ManagerController {
    private Logger logger = LogManager.getLogger(ManagerController.class);
    @Autowired
    private ProductService productService;

    @Autowired
    private ManagerServcie managerServcie;

    @RequestMapping("/toLogin")
    public String toLogin(HttpServletRequest request){
        return "mana/login";
    }

    @RequestMapping("/loginManagerIn")
    public String loginManagerIn(HttpServletRequest request){
        HttpSession session = request.getSession();
        String managerId = request.getParameter("managerId");
        String password = request.getParameter("passwordQipe");
        logger.info("进入登录方法 managerId:"+managerId+";password:"+password);
        String handelUrl = "/manager/toLogin";
        String handelDesc = "回到登录页面";
        String resultCode = "-1";
        String resultDesc = "用户名密码不匹配，登录失败";
        if(managerServcie.queryManagerList(managerId,password).size()>0){
            session.setAttribute("managerId",managerId);
        }else{
            request.setAttribute("handelUrl",handelUrl);
            request.setAttribute("handelDesc",handelDesc);
            request.setAttribute("resultCode",resultCode);
            request.setAttribute("resultDesc",resultDesc);
            return "/result";
        }
        return "/mana/index";
    }

    @RequestMapping("/loginOut")
    public String loginOut(HttpServletRequest request){
        HttpSession session = request.getSession();
        Enumeration name = session.getAttributeNames() ;
        while(name.hasMoreElements()){
            String sessionKey = name.nextElement().toString() ;
            session.removeAttribute(sessionKey) ;
            logger.info("退出登录："+sessionKey);
        }
        return "/mana/login";
    }



    @RequestMapping("/toManagerIndex")
    public String toManagerIndex(HttpServletRequest request){
        String managerId = (String) request.getSession().getAttribute("managerId");
        if(StringUtils.isEmpty(managerId)){
            request.setAttribute("handelUrl","/manager/toLogin");
            request.setAttribute("handelDesc","回到登录页面");
            request.setAttribute("resultCode","-1");
            request.setAttribute("resultDesc","未登录操作失败");
            return "/result";
        }
        return "/mana/index";
    }


}
