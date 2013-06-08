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
                        <a href="#">圖片性別辨識</a>
                    </li>
                </ul>
            </div>
        
            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header well" data-original-title>
                        <h2><i class="icon-picture"></i>圖片性別辨識：</h2>
                        <div class="box-icon">
                         
                            <a href="#" class="btn btn-minimize btn-round"><i class="icon-chevron-up"></i></a>
                            <a href="#" class="btn btn-close btn-round"><i class="icon-remove"></i></a>
                        </div>
                    </div>
                    <div class="box-content">
                        
                        <div class="box-content">
                          
                          請輸入圖片絕對位置 ex: http://image.kmt.org.tw/people/20090606164842.jpg <br> <br>
                       
                            
                          圖片位置 ： <input type="text" id="imgUrl" class="input-xlarge focused" />   <a style="margin-top: -10px;" href="#" class="btn btn-primary" id="btnId" onclick="chkImg('${createLink(uri: '/')}image/ajaxImgChk','pageModal')">確定</a>
                      
                          <h3 style="color: red"><div id="resp"></div></h3>
                       
                        </div>
                        
                    </div>
                </div><!--/span-->
            
            </div><!--/row-->

    
                    <!-- content ends -->
     </div><!--/#content.span10-->
	
	<div class="modal hide fade" id="pageModal">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h3>圖片辨識中 請耐心等候....</h3>
            </div>
            <div class="modal-body">
                <p>圖片辨識中 請耐心等候....  </p>
                <img title="${resource(dir: 'img/ajax-loaders/', file: 'ajax-loader-5.gif')}" src="${resource(dir: 'img/ajax-loaders/', file: 'ajax-loader-5.gif')}"></img>  <img id="previewImg" width="150px" height="200px"/>
            
                <h3><div id="respModal"></div></h3> 
            
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" data-dismiss="modal">取消</a>
            </div>
    </div>
	
	</body>
</html>
