package zxl.qipei.biBeiDe.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import zxl.qipei.biBeiDe.service.CompanyService;
import zxl.qipei.biBeiDe.utils.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/16.
 */
@Controller
@RequestMapping("/company")
public class CompanyContrller {
    private Logger logger = LogManager.getLogger(CompanyContrller.class);

    @Autowired
    private CompanyService companyService;

    @RequestMapping("/queryAllnfo")
    public String queryAllInfo(HttpServletRequest request){
        Map<String, Object> companyInfo = companyService.queryCompayInfo("1");
        request.setAttribute("companyInfoDetail",companyInfo);
        return "/company/about_us";
    }

    @RequestMapping("/toUpdateInfo")
    public String toUpdateInfo(HttpServletRequest request){
        Map<String, Object> companyInfo = companyService.queryCompayInfo("2");
        request.setAttribute("companyInfoDetail",companyInfo);
        return "/company/about_usUpdate";
    }

    @RequestMapping("/updateInfo")
    public String updateInfo(HttpServletRequest request){
        String managerId = (String) request.getSession().getAttribute("managerId");
        if(StringUtils.isEmpty(managerId)){
            request.setAttribute("handelUrl","/manager/toLogin");
            request.setAttribute("handelDesc","回到登录页面");
            request.setAttribute("resultCode","-1");
            request.setAttribute("resultDesc","未登录操作失败");
            return "/result";
        }
        logger.info("进入修改公司信息方法");
        String handelUrl = "/company/toUpdateInfo";
        String handelDesc = "继续修改公司信息";
        String resultCode = "-1";
        String resultDesc = "修改公司信息失败";
        String id = request.getParameter("id");
        String companyName = request.getParameter("companyName");
        String companyAddr = request.getParameter("companyAddr");
        String companyTel = request.getParameter("companyTel");
        String companyFax = request.getParameter("companyFax");
        String companyPc = request.getParameter("companyPc");
        String companyUrl1 = request.getParameter("companyUrl1");
        String companyEmail1 = request.getParameter("companyEmail1");
        String companyEmail2 = request.getParameter("companyEmail2");
        String companyDetail = request.getParameter("companyDetail");
        String companySimple = request.getParameter("companySimple");

        boolean addFlag = companyService.updateCompayInfo(id,companyName,companyAddr,companyTel,companyFax,companyPc,companyUrl1,companyEmail1,companyEmail2,companyDetail,companySimple,managerId);
        if(addFlag){
            resultCode = "0";
            resultDesc = "修改公司信息成功";
        }
        else{
            resultCode = "-1";
            resultDesc = "修改公司信息失败";
        }
        request.setAttribute("handelUrl",handelUrl);
        request.setAttribute("handelDesc",handelDesc);
        request.setAttribute("resultCode",resultCode);
        request.setAttribute("resultDesc",resultDesc);
        return "/result";
    }

}
