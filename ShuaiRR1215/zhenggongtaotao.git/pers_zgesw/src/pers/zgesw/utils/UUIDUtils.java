package pers.zgesw.utils;

import java.util.UUID;

public class UUIDUtils {
	public static String getUUID(){
		String code = UUID.randomUUID().toString()+UUID.randomUUID().toString();
		return code.replace("-", "").toUpperCase();
	}
}
