package zxl.qipei.biBeiDe.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import zxl.qipei.biBeiDe.model.PageModel;
import zxl.qipei.biBeiDe.service.NewsCenterService;
import zxl.qipei.biBeiDe.utils.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/15.
 */
@Controller
@RequestMapping("/newsCenter")
public class NewsCenterContrller {
    private Logger logger = LogManager.getLogger(NewsCenterContrller.class);

    @Autowired
    private NewsCenterService newsCenterService;

    @RequestMapping("/queryNewsCenter")
    public String  queryNewsCenter(HttpServletRequest request, PageModel pageModel){
        Map<String,String> params = new HashMap<String ,String>();
        String id = request.getParameter("id");
        if(StringUtils.isEmpty(id)){
            params.put("id",id);
        }
        String newsTitle = request.getParameter("newsTitle");
        if(StringUtils.isEmpty(newsTitle)){
            params.put("newsTitle",newsTitle);
        }
        String managerId = request.getParameter("managerId");
        if(StringUtils.isEmpty(managerId)){
            params.put("managerId",managerId);
        }
        params.put("status","0");
        if(pageModel.getTotalNum()==0){
            int totalNum = newsCenterService.queryNewsCenterTotalNum(params);
            pageModel.init(totalNum);
        }
        List<Map<String,Object>> newsCenterList = newsCenterService.queryNewsCenter(params,pageModel,"2");
        request.setAttribute("newsCenterList",newsCenterList);
        request.setAttribute("pageModel",pageModel);
        return "/newsCenter/news_centerList";
    }

    @RequestMapping("/newSCenterDetail")
    public String newSCenterDetail(HttpServletRequest request){
        Map<String,String> params = new HashMap<String ,String>();
        String id = request.getParameter("id");
        if(!StringUtils.isEmpty(id)){
            params.put("id",id);
        }
        List<Map<String,Object>> newsCenterList = newsCenterService.queryNewsCenter(params,null,"1");
        if(newsCenterList!=null && newsCenterList.size()>0){
            request.setAttribute("newCenter",newsCenterList.get(0));
        }
        return "newsCenter/news_centerDetail";
    }

    @RequestMapping("/toNewsCenterAdd")
    public String  toNewsCenterAdd(HttpServletRequest request){
        return "/newsCenter/news_centerAdd";
    }

    @RequestMapping("/newsCenterAdd")
    public String  newsCenterAdd(HttpServletRequest request){
        String managerId = (String) request.getSession().getAttribute("managerId");
        logger.info("managerId="+managerId);
        if(StringUtils.isEmpty(managerId)){
            request.setAttribute("handelUrl","/manager/toLogin");
            request.setAttribute("handelDesc","回到登录页面");
            request.setAttribute("resultCode","-1");
            request.setAttribute("resultDesc","未登录操作失败");
            return "/result";
        }
        logger.info("进入添加新闻方法");
        String handelUrl = "/newsCenter/toNewsCenterAdd";
        String handelDesc = "继续添加新闻";
        String resultCode = "-1";
        String resultDesc = "添加新闻失败";
        String newsTitle = request.getParameter("newsTitle");
        String newsContent = request.getParameter("newsContent");
        boolean addFlag = newsCenterService.newsCenterAdd(newsTitle,newsContent,managerId);
        if(addFlag){
            resultCode = "0";
            resultDesc = "添加新闻成功";
        }
        else{
            resultCode = "-1";
            resultDesc = "添加新闻失败";
        }
        request.setAttribute("handelUrl",handelUrl);
        request.setAttribute("handelDesc",handelDesc);
        request.setAttribute("resultCode",resultCode);
        request.setAttribute("resultDesc",resultDesc);
        return "/result";
    }
}
