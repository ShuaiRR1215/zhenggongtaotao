
package pers.zgesw.utils;

import java.util.Random;

import org.apache.commons.codec.binary.Hex;

/**
 * @author Administrator
 * @E_Mail 1225803134@qq.com
 * @date 2017年7月12日 下午5:01:59
 * @description 对密码进行加密的辅助类
 */
public class EncryptionUtils {

	public static String encode(String password, String salt) {
		byte[] bytes = (password + salt).getBytes();
		return Hex.encodeHexString(bytes);

	}

	public static String getSalt() {
		Random random = new Random();
		char[] crr = "123vwxyzABCDEF^&*()0aVWXYZ~:|789!@p%NOhijklmbc#$6qrstuLUVWXYZ~:|789!@p%NOhijklmnoMGHIJK45PQRSTdefg"
				.toCharArray();
		StringBuilder stringBuilder = new StringBuilder();
		int length = random.nextInt(17) + 16;
		for (int i = 0; i < length; i++) {
			stringBuilder.append(crr[random.nextInt(crr.length)]);
		}

		return stringBuilder.toString();
	}

}
