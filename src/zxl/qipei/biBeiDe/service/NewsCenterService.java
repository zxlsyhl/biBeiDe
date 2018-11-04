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
 * Created by Administrator on 2017/12/15.
 */
@Service("newsCenterService")
public class NewsCenterService {
    @Autowired
    private BaseDAO baseDAO;

    public String getSqlWhere(Map<String,String> params){
        String whereSql = "";
        if(!StringUtils.isEmpty(params.get("id"))){
            whereSql+=" and id="+params.get("id");
        }
        if(!StringUtils.isEmpty(params.get("newsTitle"))){
            whereSql+=" and news_title="+params.get("news_title");
        }
        if(!StringUtils.isEmpty(params.get("managerId"))){
            whereSql+=" and manager_id='"+params.get("manager_id")+"'";
        }
        if(!StringUtils.isEmpty(params.get("status"))){
            whereSql+=" and status='"+params.get("status")+"'";
        }
        if(!StringUtils.isEmpty(whereSql)){
            whereSql = " where 1=1 "+whereSql;
        }
        return whereSql;
    }

    public int queryNewsCenterTotalNum(Map<String,String> params){
        String sql = "select count(*) from news_center "+getSqlWhere(params);
        return (Integer) baseDAO.queryObject(sql,Integer.class);
    }

    public List<Map<String,Object>> queryNewsCenter(Map<String,String> params, PageModel pageModel, String queryType){
        String queryData = "";
        if("1".equals(queryType)){
            queryData = " * ";
        }else if("2".equals(queryType)){
            queryData = " id,news_title,oper_time,manager_id";
        }else{
            queryData = " * ";
        }
        String sql = "select "+queryData+" from news_center "+getSqlWhere(params);
        if(pageModel!=null){
            sql+= " limit "+((pageModel.getPageNo()-1)*pageModel.getPageSize())+","+pageModel.getPageSize();
        }
        return baseDAO.queryList(sql);
    }

    public boolean newsCenterAdd(String newsTitle, String newsContent, String managerId){
        String operTime = DateUtil.getTimespaces("yyyyMMddHHmmssSSS");
        String status = "0";
        String sql = "INSERT into news_center (news_title,news_content,oper_time,manager_id,status) VALUES('"+newsTitle+"','"+newsContent+"','"+operTime+"','"+managerId+"','"+status+"')";
        return baseDAO.updateDs(sql);
    }
}
