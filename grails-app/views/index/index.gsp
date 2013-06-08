<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="mainIndex"/>
		<title>安心客服 - 管理站台</title>
	</head>
	<body>
	    
	<div id="content" class="span10">
            <!-- content starts -->
            

            <div>
                <ul class="breadcrumb">
                    <li>
                        <a href="#">首頁</a> <span class="divider">/</span>
                    </li>
                    <li>
                        <a href="#">歡迎！</a>
                    </li>
                </ul>
            </div>
            
            
             <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header well" data-original-title>
                        <h2><i class="icon-picture"></i>最新消息～  hi  歡迎回來！～</h2>
                        
                    </div>
                    <div class="box-content">
                        <h1><small> 請使用左邊功能選單進行操作 ～～～</small> </h1>
                        
                        本作業練習使用遠端雲元件，來進行圖片的性別辨識。  請使用左邊的功能選單進行操作。 <br><br>
                        
                        
                         
                    </div>
                    
                </div><!--/span-->
                
            
            </div><!--/row-->
            
            <br><br>
            
            <div class="sortable row-fluid">
                <a data-rel="tooltip" class="well span3 top-block" href="#">
                    <span class="icon32 icon-color icon-key"></span>
                    <div>目前持有的otp鎖</div>
                    <div>0</div>
                    <span class="notification">0</span>
                </a>

                <a data-rel="tooltip" title="" class="well span3 top-block" href="#">
                   <g:if test='${needOtpProtect==true}'>
                        <span class="icon32 icon-color icon-locked"></span>
                        <div>帳號保護的狀態</div>
                        <div>受保護</div>
                        <span class="notification green"></span>          
                   </g:if>
                   <g:else>
                         <span class="icon32 icon-color icon-unlocked"></span>
                        <div>帳號保護的狀態</div>
                        <div>未受保護</div>
                        <span class="notification green"></span>
                   </g:else>
                    
                </a>

                <a data-rel="tooltip" class="well span3 top-block" href="#">
                    <span class="icon32 icon-color icon-search"></span>
                    <div>您的身分被查詢次數</div>
                    <div>0</div>
                    <span class="notification yellow">0</span>
                </a>
                
                <a data-rel="tooltip" class="well span3 top-block" href="#">
                    <span class="icon32 icon-color icon-envelope-closed"></span>
                    <div>您有幾個未讀的訊息</div>
                    <div>0</div>
                    <span class="notification red">0</span>
                </a>
            </div>

           

    
                    <!-- content ends -->
     </div><!--/#content.span10-->
	
	</body>
</html>
