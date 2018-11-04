package zxl.qipei.biBeiDe.aop;

import org.apache.logging.log4j.LogManager;
import org.apache.logging.log4j.Logger;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.ProceedingJoinPoint;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import zxl.qipei.biBeiDe.utils.StringUtils;

import javax.servlet.ServletResponse;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

/**
 * 验证用户是否登录
 * Created by 123456 on 2017/8/19.
 */
public class LogInterceptor {
    private static Logger logger = LogManager.getLogger(LogInterceptor.class);


    private Object checkLogin(ProceedingJoinPoint joinPoint) throws Throwable {
        HttpSession session = SysContext.getSession();
        String managerId = (String) session.getAttribute("managerId");
        if(StringUtils.isEmpty(managerId)) {
            logger.debug("Session已超时，正在跳转回登录页面");
            //response.sendRedirect("login");
            return "redirect:/index.jsp";
        }
        else{
            return joinPoint.proceed();
        }
    }
}
