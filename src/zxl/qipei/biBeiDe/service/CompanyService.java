package zxl.qipei.biBeiDe.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zxl.qipei.biBeiDe.dao.BaseDAO;
import zxl.qipei.biBeiDe.utils.DateUtil;
import zxl.qipei.biBeiDe.utils.StringUtils;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/16.
 */
@Service("companyService")
public class CompanyService {
    @Autowired
    private BaseDAO baseDAO;

    public Map<String,Object> queryCompayInfo(String queryType){
        Map<String,Object > companyInfo = new HashMap<String ,Object >();
        String queryData = "";
        if("1".equals(queryType)){
            queryData = " * ";
        }
        else if("2".equals(queryType)){
            queryData = " id,company_name,company_addr,company_tel,company_fax,company_pc,company_url1,company_email1," +
                    "company_email2,status,manager_id,oper_time,company_simple,company_detail,company_img";
        }
        else{
            queryData = " * ";
        }
        String sql = "select "+queryData+" from company_info where status = '0'";
        List<Map<String,Object>> companyList = baseDAO.queryList(sql);
        if(companyList!=null && companyList.size()>0){
            companyInfo = companyList.get(0);
        }
        return companyInfo;
    }


    public boolean updateCompayInfo(String id,String companyName,String companyAddr,String companyTel,String companyFax
            ,String companyPc,String companyUrl1,String companyEmail1,String companyEmail2,String companyDetail,String companySimple,String managerId){
        String operTime = DateUtil.getTimespaces("yyyyMMddHHmmssSSS");
        String setSql = "";
        if(!StringUtils.isEmpty(companyName)){
            setSql+= " company_name= '"+companyName+"',";
        }
        if(!StringUtils.isEmpty(companyAddr)){
            setSql+= " company_addr= '"+companyAddr+"',";
        }
        if(!StringUtils.isEmpty(companyTel)){
            setSql+= " company_tel= '"+companyTel+"',";
        }
        if(!StringUtils.isEmpty(companyFax)){
            setSql+= " company_fax= '"+companyFax+"',";
        }
        if(!StringUtils.isEmpty(companyPc)){
            setSql+= " company_pc= '"+companyPc+"',";
        }
        if(!StringUtils.isEmpty(companyUrl1)){
            setSql+= " company_url1= '"+companyUrl1+"',";
        }
        if(!StringUtils.isEmpty(companyEmail1)){
            setSql+= " company_email1= '"+companyEmail1+"',";
        }
        if(!StringUtils.isEmpty(companyEmail2)){
            setSql+= " company_email2= '"+companyEmail2+"',";
        }
        if(!StringUtils.isEmpty(managerId)){
            setSql+= " manager_id= '"+managerId+"',";
        }
        if(!StringUtils.isEmpty(operTime)){
            setSql+= " oper_time= '"+operTime+"',";
        }
        if(!StringUtils.isEmpty(companyDetail)){
            setSql+= " company_detail= '"+companyDetail+"',";
        }
        if(!StringUtils.isEmpty(companySimple)){
            setSql+= " company_simple= '"+companySimple+"',";
        }
        if(!StringUtils.isEmpty(setSql)){
            setSql = setSql.substring(0,setSql.length()-1);
        }
        String sql = "update company_info set " +setSql+" where id = "+id;
        return baseDAO.updateDs(sql);
    }
}
