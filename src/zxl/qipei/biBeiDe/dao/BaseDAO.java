package zxl.qipei.biBeiDe.dao;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by Administrator on 2017/12/13.
 */
@Repository("baseDAO")
public class BaseDAO {
    private Logger logger = LogManager.getLogger(BaseDAO.class);
    @Autowired
    public JdbcTemplate jdbcTemplate;

    public Object queryObject(String sql, Class T){
        Object obj = new Object();
        try{
            logger.info("查询数据库："+sql);
            obj = jdbcTemplate.queryForObject(sql,T);
        }
        catch (Exception e){
            logger.error("查询数据库异常："+e);
            e.printStackTrace();
        }
        return obj;
    }

    public List<Map<String,Object>> queryList(String sql){
        List<Map<String,Object>> resultList = new ArrayList<Map<String,Object>>();
        try{
            logger.info("查询数据库："+sql);
            resultList = jdbcTemplate.queryForList(sql);
        }
        catch (Exception e){
            logger.error("查询数据库异常："+e);
            e.printStackTrace();
        }
        return resultList;
    }

    public boolean updateDs(String sql){
        int index = -1;
        try {
            logger.info("更新数据库："+sql);
            index = jdbcTemplate.update(sql);
        }
        catch (Exception e){
            logger.error("更新数据库异常:"+e);
            e.printStackTrace();
        }
        return index>0?true:false;
    }
}
