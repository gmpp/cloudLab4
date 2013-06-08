package com.cht.cloudotp;

import java.net.MalformedURLException;
import java.net.URL;

import com.appleprince.service.face.*;



public class MyProjectService {

	public void test(){
		String isvAccount="367f7deaa1ce47b185a0c91cb6d8f714";  // ISV帳號名稱
		String isvKey="n+ABj+1w6e1Ht2A2ziBh0Q==";  // ISV密鑰
		
		// 取得FaceService實體

		FaceService faceService = new FaceService(isvAccount, isvKey);
		 
		// 進行影像人臉性別辨識
		URL url=null;;  // 欲辨識的影像URL物件
		try {
			url = new URL("http://image.kmt.org.tw/people/20090606164842.jpg");
		} catch (MalformedURLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		ServiceResponse serviceResponse = faceService.recognizeImage(url);
		if(!"ok".equals(serviceResponse.getStatus())) {
		   // service failed
		System.out.println(serviceResponse.getStatus());
		System.out.println(serviceResponse.getCode());
		System.out.println(serviceResponse.getMessage());
		}
		 
		// 取得辨識結果
		TaggedImage image = serviceResponse.getImages()[0];
		System.out.println(image.getUrl());
		System.out.println(image.getWidth());
		System.out.println(image.getHeight());
		for(TaggedImage.Tag tag : image.getTags()) {
		   System.out.println(tag.getX());
		   System.out.println(tag.getY());
		   System.out.println(tag.getWidth());
		   System.out.println(tag.getHeight());
		   System.out.println(tag.getAttributes().get("gender").getValue());
		}
	
	}
	
}
