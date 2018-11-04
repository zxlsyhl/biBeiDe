package zxl.qipei.biBeiDe.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * 日期处理工具。
 */

public class DateUtil {
	/**
	 * 获取当前时间指格式的时间戳
	 *
	 */
	public static String getTimespaces(String geshi){
		String timeNow = "";
		Date date = new Date();
		SimpleDateFormat sdf = new SimpleDateFormat(geshi);
		timeNow = sdf.format(date);
		return timeNow;
	}
}
