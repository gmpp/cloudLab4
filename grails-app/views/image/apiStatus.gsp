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
                        <a href="${createLink(uri: '/')}">首頁</a> <span class="divider">/</span>
                    </li>
                    <li>
                        <a href="#">hinet圖片辨識api狀態</a>
                    </li>
                </ul>
            </div>
        
            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header well" data-original-title>
                        <h2><i class="icon-picture"></i>hinet圖片辨識api狀態：</h2>
                        <div class="box-icon">
                         
                            <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                            <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        
                        <div class="box-content">
                            
                          <g:if test='${flash.message}'>
                                   <div class="alert alert-success"> ${flash.message} <button class="close" data-dismiss="alert" type="button">×</button></div>
                           </g:if>
                            <g:if test='${flash.error}'>
                                   <div class="alert alert-error"> ${flash.error} <button class="close" data-dismiss="alert" type="button">×</button></div>
                           </g:if>   
                            
                            影像辨識元件回傳：
                           <h3 style="color: red"> ${apiReturn} </h3>
                       
                    </div>
                        
                    </div>
                </div><!--/span-->
            
            </div><!--/row-->

    
                    <!-- content ends -->
     </div><!--/#content.span10-->
	
	<div class="modal hide fade" id="pageModal">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h3>Settings</h3>
            </div>
            <div class="modal-body">
                <p>Here settings can be configured...</p>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" data-dismiss="modal">取消</a>
                <a href="#" class="btn btn-primary">確定</a>
            </div>
    </div>
	
	</body>
</html>
