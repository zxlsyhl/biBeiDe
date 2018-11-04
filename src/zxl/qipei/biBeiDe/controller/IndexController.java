package zxl.qipei.biBeiDe.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import zxl.qipei.biBeiDe.model.PageModel;
import zxl.qipei.biBeiDe.service.CompanyService;
import zxl.qipei.biBeiDe.service.NewsCenterService;
import zxl.qipei.biBeiDe.service.ProductService;
import zxl.qipei.biBeiDe.utils.ConfigUtil;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by 123456 on 2017/11/29.
 */
@Controller
@RequestMapping("/index")
public class IndexController {
    private static Logger logger = LogManager.getLogger(LogManager.ROOT_LOGGER_NAME);

    @Autowired
    private ProductService productService;

    @Autowired
    private NewsCenterService newsCenterService;

    @Autowired
    private CompanyService companyService;

    @RequestMapping("/toOne")
    public String toIndex(HttpServletRequest request) {
        String imagePath = ConfigUtil.prop.getProperty("imagePath");
        logger.warn("imagePath:"+imagePath);
        System.out.println("imagePath:"+imagePath);
        logger.info("imagePath:"+imagePath);
        request.setAttribute("imagePath", imagePath);
        Map<String, Object> companyInfo = companyService.queryCompayInfo("2");
        logger.info("公司有效信息："+companyInfo.toString());
        request.getSession().setAttribute("companyInfo",companyInfo);
        return "/busi/index";
    }

    @RequestMapping("/home")
    public String home(HttpServletRequest request) {
        request.setAttribute("name", "biBeiDe");
        Map<String,String> params = new HashMap<String, String>();
        PageModel pageModel = new PageModel();
        pageModel.setPageSize(6);
        pageModel.setPageNo(1);
        List<Map<String,Object>> productList = productService.queryProduct(params,pageModel);
        for (Map<String,Object> product:productList) {
            try {
                String productImg = (String) product.get("product_img");
                productImg = productImg.replace("<img","<img width=\"102\" height=\"100\" border=\"0\"");
                product.put("product_img",productImg);
            }
            catch (Exception e){
                logger.error("转换图片时异常:"+e);
                e.printStackTrace();
            }
        }
        request.setAttribute("productList",productList);

        Map<String,String> params2 = new HashMap<String ,String>();
        params2.put("status","0");
        //pageModel = new PageModel();
        List<Map<String,Object>> newsCenterList = newsCenterService.queryNewsCenter(params2,pageModel,"2");
        request.setAttribute("newsCenterList",newsCenterList);

        return "/busi/home";
    }

    @RequestMapping("/products")
    public String products(HttpServletRequest request) {
        request.setAttribute("name", "biBeiDe");
        return "/product/products";
    }


    @RequestMapping("/aboutUs")
    public String aboutUs(HttpServletRequest request) {
        Map<String, Object> companyInfo = companyService.queryCompayInfo("1");
        request.setAttribute("companyInfoDetail",companyInfo);
        return "/company/about_us";
    }


    @RequestMapping("/contactUs")
    public String contactUs(HttpServletRequest request) {
        request.setAttribute("name", "biBeiDe");
        return "/busi/contact_us";
    }


    @RequestMapping("/equipment")
    public String equipment(HttpServletRequest request) {
        request.setAttribute("name", "biBeiDe");
        return "/busi/equipment";
    }


    @RequestMapping("/feedback")
    public String feedback(HttpServletRequest request) {
        request.setAttribute("name", "biBeiDe");
        return "/busi/feedback";
    }

    @RequestMapping("/honors")
    public String honors(HttpServletRequest request) {
        request.setAttribute("name", "biBeiDe");
        return "/busi/honors";
    }

    @RequestMapping("/newsCenter")
    public String newsCenter(HttpServletRequest request) {
        request.setAttribute("name", "biBeiDe");
        return "/newsCenter/news_center";
    }



    @RequestMapping("/upload")
    public String upload(HttpServletRequest request) {
        request.setAttribute("name", "biBeiDe");
        return "upload/index";
    }

    @RequestMapping("/uploadNew")
    public String uploadNew(HttpServletRequest request) {
        request.setAttribute("name", "biBeiDe");
        return "redirect:/ueditor/index.jsp";
    }



    public static void main(String[] agrs){
        logger.info("ssssss");
    }
}
