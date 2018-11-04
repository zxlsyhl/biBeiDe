package zxl.qipei.biBeiDe.controller;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import zxl.qipei.biBeiDe.model.PageModel;
import zxl.qipei.biBeiDe.service.ProductService;
import zxl.qipei.biBeiDe.utils.StringUtils;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/16.
 */
@Controller
@RequestMapping("/product")
public class ProductContrller {
    private Logger logger = LogManager.getLogger(ProductContrller.class);

    @Autowired
    private ProductService productService;


    @RequestMapping("/productsList")
    public String productsList(HttpServletRequest request, PageModel pageModel) {
        Map<String, String> params = new HashMap<String ,String>();
        String id = request.getParameter("id");
        if(StringUtils.isEmpty(id)){
            params.put("id",id);
        }
        String typeId = request.getParameter("typeId");
        if(StringUtils.isEmpty(typeId)){
            params.put("type_id",typeId);
        }
        String productName = request.getParameter("productName");
        if(StringUtils.isEmpty(productName)){
            params.put("product_name",productName);
        }
        String productModelNum = request.getParameter("productModelNum");
        if(StringUtils.isEmpty(productModelNum)){
            params.put("product_model_num",productModelNum);
        }
        params.put("status","0");
        if(pageModel.getTotalNum()==0){
            int totalNum = productService.queryProductTotalNum(params);
            pageModel.init(totalNum);
        }

        List<Map<String,Object>> productList = productService.queryProduct(params,pageModel);
        request.setAttribute("productList",productList);
        request.setAttribute("pageModel",pageModel);
        return "/product/productsList";
    }

    @RequestMapping("/productsTypeList")
    public String productsTypeList(HttpServletRequest request) {
        List<Map<String,Object>> productTypes = productService.queryProductTypes();
        request.setAttribute("productTypes",productTypes);
        return "product/productsTypeList";
    }



    @RequestMapping("/toAddProduct")
    public String toAddProduct(HttpServletRequest request){
        String managerId = (String) request.getSession().getAttribute("managerId");
        if(StringUtils.isEmpty(managerId)){
            request.setAttribute("handelUrl","/manager/toLogin");
            request.setAttribute("handelDesc","回到登录页面");
            request.setAttribute("resultCode","-1");
            request.setAttribute("resultDesc","未登录操作失败");
            return "/result";
        }
        logger.info("进入添加产品初始准备方法");
        List<Map<String,Object>> productTypes = productService.queryProductTypes();
        request.setAttribute("productTypes",productTypes);
        return "/product/addProduct";
    }

    @RequestMapping("/addProduct")
    public String addProduct(HttpServletRequest request){
        String managerId = (String) request.getSession().getAttribute("managerId");
        logger.info("managerId="+managerId);
        if(StringUtils.isEmpty(managerId)){
            request.setAttribute("handelUrl","/manager/toLogin");
            request.setAttribute("handelDesc","回到登录页面");
            request.setAttribute("resultCode","-1");
            request.setAttribute("resultDesc","未登录操作失败");
            return "/result";
        }
        logger.info("进入添加产品方法");
        String handelUrl = "/product/toAddProduct";
        String handelDesc = "继续添加产品";
        String resultCode = "-1";
        String resultDesc = "添加产品失败";
        String typeId = request.getParameter("typeId");
        String productName = request.getParameter("productName");
        String productModelNum = request.getParameter("productModelNum");
        String productImg = request.getParameter("productImg");
        String productDesc = request.getParameter("productDesc");
        boolean addFlag = productService.addProduct(typeId,productName,productModelNum,productImg,productDesc,managerId);
        if(addFlag){
            resultCode = "0";
            resultDesc = "添加产品成功";
        }
        else{
            resultCode = "-1";
            resultDesc = "添加产品失败";
        }
        request.setAttribute("handelUrl",handelUrl);
        request.setAttribute("handelDesc",handelDesc);
        request.setAttribute("resultCode",resultCode);
        request.setAttribute("resultDesc",resultDesc);
        return "/result";
    }

    @RequestMapping("/toAddProductType")
    public String toAddProductType(HttpServletRequest request){
        String managerId = (String) request.getSession().getAttribute("managerId");
        if(StringUtils.isEmpty(managerId)){
            request.setAttribute("handelUrl","/manager/toLogin");
            request.setAttribute("handelDesc","回到登录页面");
            request.setAttribute("resultCode","-1");
            request.setAttribute("resultDesc","未登录操作失败");
            return "/result";
        }
        logger.info("进入添加产品类型初始准备方法");
        return "/product/addProductType";
    }

    @RequestMapping("/addProductType")
    public String addProductType(HttpServletRequest request){
        String managerId = (String) request.getSession().getAttribute("managerId");
        if(StringUtils.isEmpty(managerId)){
            request.setAttribute("handelUrl","/manager/toLogin");
            request.setAttribute("handelDesc","回到登录页面");
            request.setAttribute("resultCode","-1");
            request.setAttribute("resultDesc","未登录操作失败");
            return "/result";
        }
        logger.info("进入添加产品类型方法");
        String handelUrl = "/product/toAddProductType";
        String handelDesc = "继续添加产品类型";
        String resultCode = "-1";
        String resultDesc = "添加产品类型失败";
        String typeName = request.getParameter("typeName");
        String typeDesc = request.getParameter("typeDesc");
        boolean addFlag = productService.addProductType(typeName,typeDesc,managerId);
        if(addFlag){
            resultCode = "0";
            resultDesc = "添加产品类型成功";
        }
        else{
            resultCode = "-1";
            resultDesc = "添加产品类型失败";
        }
        request.setAttribute("handelUrl",handelUrl);
        request.setAttribute("handelDesc",handelDesc);
        request.setAttribute("resultCode",resultCode);
        request.setAttribute("resultDesc",resultDesc);
        return "/result";
    }
}
