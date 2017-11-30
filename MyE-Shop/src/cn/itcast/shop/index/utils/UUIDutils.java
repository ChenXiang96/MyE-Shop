package cn.itcast.shop.index.utils;

import java.util.UUID;

/**
 * 生成随机字符串的工具类
 * @author lenovo
 *
 */
public class UUIDutils {
	/**
	 * 获得随机字符串
	 * @return
	 */
	public static String getUUID(){
		return UUID.randomUUID().toString().replace("-", "");
		
	}

}
