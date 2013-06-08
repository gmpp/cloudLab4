package com.cht.cloudotp;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

public class SHAUtils {
	
	public static String getSHA(String key){
		
		MessageDigest md;
		String shaStr="";
		try {
			md = MessageDigest.getInstance("SHA");
			md.update(key.getBytes()); 
			 shaStr = ByteUtils.byte2hex(md.digest()); 
		} catch (NoSuchAlgorithmException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return shaStr;
         
	}

}
