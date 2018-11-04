package zxl.qipei.biBeiDe.utils;

import java.io.IOException;
import java.io.InputStream;
import java.util.Properties;

/**
 * Created by 123456 on 2017/12/5.
 */
public class ConfigUtil {
    public static Properties prop =  new Properties();
    static  {
        InputStream in = ConfigUtil.class.getResourceAsStream( "/public.properties" );
        try  {
            prop.load(in);
        }  catch  (IOException e) {
            e.printStackTrace();
        }
    }
}
