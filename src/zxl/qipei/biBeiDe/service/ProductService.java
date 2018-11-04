package zxl.qipei.biBeiDe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zxl.qipei.biBeiDe.dao.BaseDAO;
import zxl.qipei.biBeiDe.model.PageModel;
import zxl.qipei.biBeiDe.utils.DateUtil;
import zxl.qipei.biBeiDe.utils.StringUtils;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/13.
 */
@Service("productService")
public class ProductService {
    @Autowired
    private BaseDAO baseDAO;

    public int queryProductTotalNum(Map<String,String> params){
        String sql = "select count(*) from product"+getProductWhereSql(params);
        return (Integer) baseDAO.queryObject(sql,Integer.class);
    }

    public List<Map<String,Object>> queryProduct(Map<String,String> params, PageModel pageModel){
        String sql = "select * from product"+getProductWhereSql(params);
        if(pageModel!=null){
            sql+= " limit "+((pageModel.getPageNo()-1)*pageModel.getPageSize())+","+pageModel.getPageSize();
        }
        return baseDAO.queryList(sql);
    }

    public String getProductWhereSql(Map<String,String> params){
        String whereSql = "";
        if(!StringUtils.isEmpty(params.get("id"))){
            whereSql+=" and id="+params.get("id");
        }
        if(!StringUtils.isEmpty(params.get("type_id"))){
            whereSql+=" and type_id="+params.get("type_id");
        }
        if(!StringUtils.isEmpty(params.get("product_name"))){
            whereSql+=" and product_name='"+params.get("product_name")+"'";
        }
        if(!StringUtils.isEmpty(params.get("product_model_num"))){
            whereSql+=" and product_model_num='"+params.get("product_model_num")+"'";
        }
        if(!StringUtils.isEmpty(params.get("type_id"))){
            whereSql+=" and status='"+params.get("status")+"'";
        }
        if(!StringUtils.isEmpty(whereSql)){
            whereSql = " where 1=1 "+whereSql;
        }
        return whereSql;
    }

    public List<Map<String,Object>> queryProductTypes(){
        String sql = "select * from product_type where status = '0'";
        return baseDAO.queryList(sql);
    }

    public boolean addProduct(String typeId, String productName, String productModelNum,String productImg, String productDesc,String managerId){
        String operTime = DateUtil.getTimespaces("yyyyMMddHHmmssSSS");
        String status = "0";
        String sql = "insert into product (type_id,product_name,product_model_num,product_img,product_desc,manager_id,oper_time,status) values('"+typeId+"','"+productName+"','"+productModelNum+"','"+productImg+"','"+productDesc+"','"+managerId+"','"+operTime+"','"+status+"')";
        return baseDAO.updateDs(sql);
    }


    public boolean addProductType(String typeName,String typeDesc, String managerId){
        String operTime = DateUtil.getTimespaces("yyyyMMddHHmmssSSS");
        String status = "0";
        String sql = "insert into product_type (type_name,type_desc,manager_id,oper_time,status) values('"+typeName+"','"+typeDesc+"','"+managerId+"','"+operTime+"','"+status+"')";
        return baseDAO.updateDs(sql);
    }
}
