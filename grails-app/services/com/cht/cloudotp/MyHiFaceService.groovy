package com.cht.cloudotp;

import grails.converters.*;

import com.cht.cloudotp.*;
import cht.paas.util.*;

class MyHiFaceService {

	CloudLogger logger = CloudLogger.getLogger();

	public Object getAPIAccess(String isvAccount, String isvKey,String apiCH){
		
		
		logger.setLevel(LogLevel.ALL);
		
		long timeStamp = new Date().getTime();
		String none= "16A"+String.valueOf(timeStamp);
		String timeStampStr= String.valueOf(timeStamp);
		
		String tmpStr = isvKey+none+timeStampStr;
		String shaStr = SHAUtils.getSHA(tmpStr).toLowerCase();
		
		String url = "http://api.hicloud.hinet.net/SrvMgr/requestToken/"+isvAccount+"/"+apiCH+"/"+none+"/"+timeStampStr+"/"+shaStr;
		
		System.out.println('in getAPIAccess URL=:'+url);
		logger.info("in getAPIAccess URL=:" +url);

		
		WebPageFetchUtilService ws = new WebPageFetchUtilService();
		String apiReturn = ws.UrlConnectGetIntoString(url);
		System.out.println('fbReturn:'+apiReturn);
		logger.info("in getAPIAccess apiReturn=:" +apiReturn);
		
		def userJSON = JSON.parse(apiReturn);
		
		return userJSON;
	}
	
	public Object checkFaceAStatus(String sign,String token){
		
		logger.setLevel(LogLevel.ALL);
		
		
		String url = "http://cht-face-api.hicloud.net.tw:8080/service-face/status";
		
		System.out.println('in checkFaceAStatus URL=:'+url);
		logger.info("in checkFaceAStatus URL=:" +url);
		
		//產生驗證字串
		String authorization = String.format("CHT token=\"%s\",sign=\"%s\"", token, sign);
		
		System.out.println("OKOK! authorization="+authorization);
		logger.info("OKOK! authorization="+authorization);

		
		WebPageFetchUtilService ws = new WebPageFetchUtilService();
		String apiReturn = ws.UrlConnectGetIntoStringWitHeader(url, authorization);
		System.out.println('apiReturn:'+apiReturn);
		logger.info("in checkFaceAStatus apiReturn=:" +apiReturn);
		
		def userJSON = JSON.parse(apiReturn);
		
		return userJSON;
	}
	
	
	public Object imgRecognition(String sign,String token,String imgUrl){
		
		logger.setLevel(LogLevel.ALL);
		
		
		String url = "http://cht-face-api.hicloud.net.tw:8080/service-face/images?url="+imgUrl;
		
		System.out.println('in checkFaceAStatus URL=:'+url);
		logger.info("in checkFaceAStatus URL=:" +url);
		
		//產生驗證字串
		String authorization = String.format("CHT token=\"%s\",sign=\"%s\"", token, sign);
		
		System.out.println("OKOK! authorization="+authorization);
		logger.info("OKOK! authorization="+authorization);

		
		WebPageFetchUtilService ws = new WebPageFetchUtilService();
		String apiReturn = ws.UrlConnectGetIntoStringWitHeader(url, authorization);
		System.out.println('apiReturn:'+apiReturn);
		logger.info("in checkFaceAStatus apiReturn=:" +apiReturn);
		
		def userJSON = JSON.parse(apiReturn);
		
		return userJSON;
	}
	
	
    
}
