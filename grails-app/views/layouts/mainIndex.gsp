<!DOCTYPE html>
<!--[if lt IE 7 ]> <html lang="en" class="no-js ie6"> <![endif]-->
<!--[if IE 7 ]>    <html lang="en" class="no-js ie7"> <![endif]-->
<!--[if IE 8 ]>    <html lang="en" class="no-js ie8"> <![endif]-->
<!--[if IE 9 ]>    <html lang="en" class="no-js ie9"> <![endif]-->
<!--[if (gt IE 9)|!(IE)]><!--> <html lang="en" class="no-js"><!--<![endif]-->
    <html lang="en">
    <head>
        <meta charset="utf-8">
        <title><g:layoutTitle default="安心客服-管理站台"/></title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="description" content="雲端身分確認系統～～">
        <meta name="author" content="poshun">
        <!-- The styles -->
        <link id="bs-css" rel="stylesheet" href="${resource(dir: 'css', file: 'bootstrap-cerulean.css')}" type="text/css">
        <style type="text/css">
          body {
            padding-bottom: 40px;
          }
          .sidebar-nav {
            padding: 9px 0;
          }
        </style>
        <link href="${resource(dir: 'css', file: 'bootstrap-responsive.css')}" rel="stylesheet">
        <link href="${resource(dir: 'css', file: 'charisma-app.css')}" rel="stylesheet">
        <link href="${resource(dir: 'css', file: 'opa-icons.css')}" rel="stylesheet">
        <!-- The HTML5 shim, for IE6-8 support of HTML5 elements -->
        <!--[if lt IE 9]>
          <script src="http://html5shim.googlecode.com/svn/trunk/html5.js"></script>
        <![endif]-->
        <!-- The fav icon -->
        <link rel="shortcut icon" href="${resource(dir: 'img', file: 'favicon.ico')}" type="image/x-icon">
        <g:layoutHead/>
        <r:layoutResources />
    </head>
    
    <body>
        <!-- topbar starts -->
    <div class="navbar">
        <div class="navbar-inner">
            <div class="container-fluid">
                <a class="btn btn-navbar" data-toggle="collapse" data-target=".top-nav.nav-collapse,.sidebar-nav.nav-collapse">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </a>
                <a class="brand" href="${createLink(uri: '/')}"> <img alt="Logo" src="${resource(dir: 'img', file: 'logo20.png')}" /> <span>雲端課程作業 4 元件使用</span></a>
                
                
                <!-- user dropdown starts -->
                <div class="btn-group pull-right" >
                    <a class="btn dropdown-toggle" data-toggle="dropdown" href="#">
                        <i class="icon-user"></i><span class="hidden-phone">User您好！</span>
                        <span class="caret"></span>
                    </a>
                    <ul class="dropdown-menu">
                        <li><a href="#">個人檔案</a></li>
                        <li class="divider"></li>
                        <li><a href="#">登出</a></li>
                    </ul>
                </div>
                <!-- user dropdown ends -->
                
                <div class="top-nav nav-collapse">
                    <ul class="nav">
                        <li><a href="#">主功能頁</a></li>
                        <li>
                            <form class="navbar-search pull-left">
                                <input placeholder="搜尋" class="search-query span2" name="query" type="text">
                            </form>
                        </li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
    <!-- topbar ends -->
        <div class="container-fluid">
        <div class="row-fluid">
                
            <!-- left menu starts -->
            <div class="span2 main-menu-span">
                <div class="well nav-collapse sidebar-nav">
                    <ul class="nav nav-tabs nav-stacked main-menu">
                        <li class="nav-header hidden-tablet">使用者功能選單</li>
                        <li><a class="ajax-link" href="${createLink(uri: '/')}"><i class="icon-home"></i><span class="hidden-tablet">控制面板</span></a></li>
                        <li><a class="ajax-link" href="${createLink(uri: '/')}image/apiStatus"><i class="icon-heart"></i><span class="hidden-tablet">hinet圖片辨識api狀態</span></a></li>
                       <li><a class="ajax-link" href="${createLink(uri: '/')}image/imgChk"><i class="icon-eye-open"></i><span class="hidden-tablet">圖片性別辨識</span></a></li>
                        <!--<li><a class="ajax-link" href="${createLink(uri: '/')}image/"><i class="icon-eye-open"></i><span class="hidden-tablet">上傳圖片/圖片管理</span></a></li>-->
                    </ul>
                   
                </div><!--/.well -->
            </div><!--/span-->
            <!-- left menu ends -->
            
            <noscript>
                <div class="alert alert-block span10">
                    <h4 class="alert-heading">警告!</h4>
                    <p>您的瀏覽器不支援 <a href="http://en.wikipedia.org/wiki/JavaScript" target="_blank">JavaScript</a> 請開啟以正常使用本系統.</p>
                </div>
            </noscript>
            
            
            <g:layoutBody/>
            
            
         </div><!--/fluid-row-->
                
        <hr>

        <div class="modal hide fade" id="myModal">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">×</button>
                <h3>Settings</h3>
            </div>
            <div class="modal-body">
                <p>Here settings can be configured...</p>
            </div>
            <div class="modal-footer">
                <a href="#" class="btn" data-dismiss="modal">Close</a>
                <a href="#" class="btn btn-primary">Save changes</a>
            </div>
        </div>

        <footer>
            <p class="pull-left">&copy; <a href="." target="_blank">雲端課程作業 4 元件使用</a> 2013</p>
            <p class="pull-right">系統設計: <a href="http://www.cht.com.tw">黃小橘</a></p>
        </footer>
        
    </div><!--/.fluid-container-->

    <!-- external javascript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <!-- jQuery -->
    <script src="${resource(dir: 'js', file: 'jquery-1.9.1.min.js')}"></script>
    <script src="${resource(dir: 'js', file: 'bootstrap.min.js')}"></script>
    
    <g:javascript library="application"/>
    <r:layoutResources />
    <div id="spinner" class="spinner" style="display:none;"><g:message code="spinner.alt" default="Loading&hellip;"/></div>
        
  </body>
  
</html>
