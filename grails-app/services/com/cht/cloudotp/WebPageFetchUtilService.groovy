package com.cht.cloudotp

class WebPageFetchUtilService {

	
    /**
     * 給定特定網址，將網頁內容回傳成字串
	 * @param urlString 目標網頁
	 * @return 回傳成字串
     */
    public String UrlConnectGetIntoString(String urlString){
		
		URL url = new URL(urlString);
		HttpURLConnection conn =
			(HttpURLConnection) url.openConnection();

		// Check for successful response code or throw error
		if (conn.getResponseCode() != 200)
		{
		  return null;
		}

		// Buffer the result into a string
		BufferedReader buffrd = new BufferedReader( new InputStreamReader(conn.getInputStream()) );
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = buffrd.readLine()) != null)
		{
		  sb.append(line);
		}

		buffrd.close();
		
		return sb.toString();	
	}
	
	public String UrlConnectGetIntoStringWitHeader(String urlString,String authorization){
		
		URL url = new URL(urlString);
		HttpURLConnection conn =
			(HttpURLConnection) url.openConnection();
			
			conn.setRequestProperty("authorization", authorization);

		// Check for successful response code or throw error
		if (conn.getResponseCode() != 200)
		{
		  return null;
		}

		// Buffer the result into a string
		BufferedReader buffrd = new BufferedReader( new InputStreamReader(conn.getInputStream()) );
		StringBuilder sb = new StringBuilder();
		String line;
		while ((line = buffrd.readLine()) != null)
		{
		  sb.append(line);
		}

		buffrd.close();
		
		return sb.toString();
	}
	
	
	
    /**
     * 給定特定網址，將檔案抓回特定位置存放 
	 * @param sURL下載網址,
     * @param cookie 使用cookie(可為null),
     * @param referer  referer(可為null),
     * @param filePath 存放檔案路徑(一定要有),
     * @param fileName 檔名
     * @return boolean true or false
     */
    public boolean getFileFromURL(String sURL, String cookie, String referer, String filePath, String fileName) {
 
        boolean doSuccess = true;
        try {
            URL url = new URL(sURL);
            HttpURLConnection URLConn = null;
         
            URLConn = (HttpURLConnection) url.openConnection();
            // 要求的標頭header
            URLConn.setRequestProperty("User-agent", "Mozilla/5.0 (Windows; U; Windows NT 6.0; zh-TW; rv:1.9.1.2) "
                            + "Gecko/20090729 Firefox/3.5.2 GTB5 (.NET CLR 3.5.30729)");
            URLConn.setRequestProperty("Accept", "text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8");
            URLConn.setRequestProperty("Accept-Language", "zh-tw,en-us;q=0.7,en;q=0.3");
            URLConn.setRequestProperty("Accept-Charse","Big5,utf-8;q=0.7,*;q=0.7");
            // 是否使用cookie
            if (cookie != null){
                URLConn.setRequestProperty("Cookie", cookie);
            }
            // 是否使用referer
            if (referer != null){
                URLConn.setRequestProperty("Referer", referer);
            }

            // 建立連線
            URLConn.connect();
            // 取得下載inputstream連線
            BufferedInputStream bis = new BufferedInputStream(URLConn.getInputStream());
           
            File dir = new File(filePath);
         
            if (!dir.exists()){
                dir.mkdirs();
            }
            File file = new File(dir.getAbsolutePath() + File.separator + fileName);
        
            BufferedOutputStream bos = new BufferedOutputStream(new FileOutputStream(file));
 
            byte[] tmp = new byte[1024];
            int len;
            while ((len = bis.read(tmp)) != -1) {
                //System.out.print(tmp);
                bos.write(tmp, 0, len);
            }
            bos.flush();
            bos.close();
            bis.close();
        } catch (IOException e) {
            doSuccess = false;
            e.printStackTrace();
        }
        return doSuccess;
    }
	
	
	/**
	 * 讀取url跳轉的網址
	 * @param urlString 原始的url
	 * @return 跳轉的網址
	 */
	public String urlConnGetRediectUrl(String urlString){
		
		String redirUrl = null;
		URL url = new URL(urlString);
		HttpURLConnection conn = (HttpURLConnection) url.openConnection();

		// Check for successful response code or throw error
		if (conn.getResponseCode() != 200)
		{
		  return null;
		}else{
			//System.out.print("URL header="+conn.getHeaderFields().toString());
			//System.out.println( "redirected url: " + conn.getURL() );
			redirUrl = conn.getURL();
		}
		return redirUrl;
	}
	
	
}
