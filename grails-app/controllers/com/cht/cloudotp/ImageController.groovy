package com.cht.cloudotp

import cht.paas.util.*;
import com.appleprince.service.face.ServiceResponse
import grails.converters.*;
import java.security.MessageDigest
import javax.ws.rs.core.UriBuilder
import org.apache.wink.client.Resource
import org.apache.wink.client.RestClient
import org.apache.wink.providers.json4j.*;


class ImageController {
	
	CloudLogger logger = CloudLogger.getLogger();
	
    def index() { 
		
		logger.setLevel(LogLevel.ALL);

	}
	
	def imgChk() {
		
		
		logger.setLevel(LogLevel.ALL);
		logger.info("enter imgChk...");
		

	}
	
	def apiStatus() {
		
		logger.setLevel(LogLevel.ALL);
		logger.info("enter apiStatus...");
		
		String isvAccount="367f7deaa1ce47b185a0c91cb6d8f714";  // ISV帳號名稱
		String isvKey="n+ABj+1w6e1Ht2A2ziBh0Q==";  // ISV密鑰
	
		MyHiFaceService my =new MyHiFaceService();
		def apiReturn=my.getAPIAccess(isvAccount, isvKey, "16");
		
		
		if(apiReturn!=null&&apiReturn.code==0){
			System.out.println("OKOK! apiReturn.info.token="+apiReturn.info.token);
			logger.info("OKOK! apiReturn.info.token="+apiReturn.info.token);
		
			apiReturn = my.checkFaceAStatus(apiReturn.info.sign, apiReturn.info.token);
			
			
		}else{
			System.out.println("NO! apiReturn error"+apiReturn.code);
			logger.info("NO! apiReturn error="+apiReturn.code);
		}
		
		render view : 'apiStatus', model : [apiReturn:apiReturn];
		
	}
	
	def ajaxImgChk(String imgUrl) {
		
		logger.setLevel(LogLevel.ALL);
		imgUrl = imgUrl.trim();
		
		//MyProjectService my = new MyProjectService();
		//my.test();
		
		String isvAccount="367f7deaa1ce47b185a0c91cb6d8f714";  // ISV帳號名稱
		String isvKey="n+ABj+1w6e1Ht2A2ziBh0Q==";  // ISV密鑰
	
		//imgUrl = "http://love.youthwant.com.tw/LoveSchool_xfile/M_place/91/100004491//GRAPH/071221160830z11Y.jpg";
		
		imgUrl=URLEncoder.encode(imgUrl.toString(), "UTF-8");
		
		MyHiFaceService my =new MyHiFaceService();
		def apiReturn=my.getAPIAccess(isvAccount, isvKey, "16");
		
		def imgReturn = null;
		
		if(apiReturn!=null&&apiReturn.code==0){
			System.out.println("OKOK! apiReturn.info.token="+apiReturn.info.token);
			logger.info("OKOK! apiReturn.info.token="+apiReturn.info.token);
		
			//my.checkFaceAStatus(apiReturn.info.sign, apiReturn.info.token);
			
			
			imgReturn = my.imgRecognition(apiReturn.info.sign, apiReturn.info.token,imgUrl);

			
		}else{
			System.out.println("NO! apiReturn error"+apiReturn.code);
			logger.info("NO! apiReturn error="+apiReturn.code);
		}
		
		
		render imgReturn.toString();
	}
	
	
	def ajaxAPIStatus() {
		
		logger.setLevel(LogLevel.ALL);

		String isvAccount="367f7deaa1ce47b185a0c91cb6d8f714";  // ISV帳號名稱
		String isvKey="n+ABj+1w6e1Ht2A2ziBh0Q==";  // ISV密鑰
	
		MyHiFaceService my =new MyHiFaceService();
		def apiReturn=my.getAPIAccess(isvAccount, isvKey, "16");
		
		
		if(apiReturn!=null&&apiReturn.code==0){
			System.out.println("OKOK! apiReturn.info.token="+apiReturn.info.token);
			logger.info("OKOK! apiReturn.info.token="+apiReturn.info.token);
		
			apiReturn = my.checkFaceAStatus(apiReturn.info.sign, apiReturn.info.token);
			
			
		}else{
			System.out.println("NO! apiReturn error"+apiReturn.code);
			logger.info("NO! apiReturn error="+apiReturn.code);
		}
		
		
		//render apiReturn.toString();
		
		render(contentType: 'text/json') { apiReturn };
	}
	
	
	def ajaxImgChkOLD() {
	
		logger.setLevel(LogLevel.ALL);
	
		
		//MyProjectService my = new MyProjectService();
		//my.test();
		
		String isvAccount="367f7deaa1ce47b185a0c91cb6d8f714";  // ISV帳號名稱
		String isvKey="n+ABj+1w6e1Ht2A2ziBh0Q==";  // ISV密鑰
	
		
		MyHiFaceService my =new MyHiFaceService();
		def apiReturn=my.getAPIAccess(isvAccount, isvKey, "16");
		
		def imgReturn = null;
		
		if(apiReturn!=null&&apiReturn.code==0){
			System.out.println("OKOK! apiReturn.info.token="+apiReturn.info.token);
			logger.info("OKOK! apiReturn.info.token="+apiReturn.info.token);
		
			//my.checkFaceAStatus(apiReturn.info.sign, apiReturn.info.token);
			
			
			imgReturn = my.imgRecognition(apiReturn.info.sign, apiReturn.info.token,"http://foo.bar/image.jpg");
			
			/*
			//my.checkFaceAStatus();
			URL url =new URL("http://image.kmt.org.tw/people/20090606164842.jpg");
			
			String serviceUrlPrefix = "http://cht-face-api.hicloud.net.tw:8080/service-face";
			//建立UriBuilder物件
			UriBuilder builder = UriBuilder.fromPath(serviceUrlPrefix).path("/status");
			//設定圖片網址
			//builder.queryParam("url", URLEncoder.encode(url.toString(), "UTF-8"));
			//建立RestClient物件
			RestClient restClient = new RestClient();
			//建立Resource物件
			Resource resource = restClient.resource(builder.build());
			//產生驗證字串
			String authorization = String.format("CHT token=\"%s\",sign=\"%s\"", apiReturn.info.token, apiReturn.info.sign);
			
			System.out.println("OKOK! authorization="+authorization);
			logger.info("OKOK! authorization="+authorization);
			
			
			//設定web request參數，執行web request，取得response，parsing JSON結果
			//ServiceResponse response = resource.header("authorization", authorization).accept("application/javascript").get(ServiceResponse.class);
			String responseStr = resource.header("authorization", authorization).accept("text/plain").get(String.class);
			
			System.out.println("OKOK! responseStr="+responseStr);
			logger.info("OKOK! responseStr="+responseStr);*/
			
		}else{
			System.out.println("NO! apiReturn error"+apiReturn.code);
			logger.info("NO! apiReturn error="+apiReturn.code);
		}
		
		
		render imgReturn.toString();
	}
	
	
	
	
}
