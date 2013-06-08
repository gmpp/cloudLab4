package com.cht.cloudotp;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.List;

public class ByteUtils {
    private static ByteBuffer buffer = ByteBuffer.allocate(4);    

    public static byte[] intToBytes(int x) {
        buffer.putInt(0, x);
        return buffer.array();
    }

    public static long bytesToInt(byte[] bytes) {
        buffer.put(bytes, 0, bytes.length);
        buffer.flip();//need flip 
        return buffer.getInt();
    }
    
    public static byte[] streamCopy(List<byte[]> srcArrays) {
    	byte[] destAray = null;
    	ByteArrayOutputStream bos = new ByteArrayOutputStream();
    	try {
	    	for (byte[] srcArray:srcArrays) {
	    	bos.write(srcArray);
	    	}
	    	bos.flush();
	    	destAray = bos.toByteArray();
    	} catch (IOException e) {
    		e.printStackTrace();
    	} finally {
	    	try {
	    		bos.close();
	    	} catch (IOException e) {
	    		e.printStackTrace();
	    	}
    	}
    	return destAray;
    }
    
    public static String byte2hex(byte[] b){
        String hs="";
        String stmp="";
        for (int n=0;n<b.length;n++){
         stmp=(java.lang.Integer.toHexString(b[n] & 0XFF));
         if (stmp.length()==1) hs=hs+"0"+stmp;
         else hs=hs+stmp;
        }
        return hs.toUpperCase();
    }
}