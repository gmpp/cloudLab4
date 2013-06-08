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
                        <a href="#">影像上傳/管理功能</a>
                    </li>
                </ul>
            </div>
        
            <div class="row-fluid sortable">
                <div class="box span12">
                    <div class="box-header well" data-original-title>
                        <h2><i class="icon-picture"></i>影像上傳/管理功能：</h2>
                        <div class="box-icon">
                            <a href="${createLink(uri: '/')}image/addInput" class="btn btn-round" title="新增影像"><i class="icon icon-color icon-plus"></i></a>
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
                            
                        <table class="table table-striped table-bordered bootstrap-datatable datatable">
                          <thead>
                              <tr><th>影像編號</th> <th>圖檔</th> <th>圖檔URL</th> </tr>
                          </thead>   
                          <tbody>
                           
                            <g:each var="userObj" in="${users}">
                            <tr> 
                                <td>${userObj.id}</td>
                                <td>${userObj.username}</td>
                                <td class="center">${userObj.realName}</td>
                                <td class="center"><div>是否啟用：${userObj.enabledIcon}</div><div>帳號過期：${userObj.accountExpiredIcon}</div><div>帳號被鎖：${userObj.accountLockedIcon}</div></td>
                                <td class="center">
                                    ${userObj.mobile}<>
                                    ${userObj.email}
                                </td>
                                <td class="center">
                                    <a class="btn btn-success" href="${createLink(uri: '/')}user/listUserInfo?id=${userObj.id}"> <i class="icon-zoom-in icon-white"></i>檢視詳細</a>
                                     <a class="btn btn-primary" href="${createLink(uri: '/')}user/addChUserInput?chId=${chId}"> <i class="icon-user icon-white"></i>新增該頻道使用者</a>
                                    <a class="btn btn-info" href="${createLink(uri: '/')}user/listUserInfo?id=${userObj.id}"> <i class="icon-edit icon-white"></i> 編輯 </a>
                                    <a class="btn btn-danger" onclick="doDelete('${createLink(uri: '/')}user/delete?id=','${userObj.id}')" href="#"> <i class="icon-trash icon-white"></i> 刪除 </a>
                                </td>
                            </tr>
                            </g:each>
                            
                          </tbody>
                      </table>            
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
