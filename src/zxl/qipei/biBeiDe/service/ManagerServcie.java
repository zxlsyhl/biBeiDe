package zxl.qipei.biBeiDe.service;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import zxl.qipei.biBeiDe.dao.BaseDAO;

import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/15.
 */
@Service("managerServcie")
public class ManagerServcie {
    private Logger logger  = LogManager.getLogger(ManagerServcie.class);

    @Autowired
    private BaseDAO baseDAO;

    public List<Map<String,Object>> queryManagerList(String managerId,String password){
        String sql = "select * from manager_info where manager_id='"+managerId+"' and password='"+password+"'";
        return baseDAO.queryList(sql);
    }
}
