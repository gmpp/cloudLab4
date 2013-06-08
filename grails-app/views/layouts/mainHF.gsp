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
                <a class="brand" href="index.html"> <img alt="Logo" src="${resource(dir: 'img', file: 'logo20.png')}" /> <span>雲端安心客服 管理系統</span></a>
                
             
                
                <div class="top-nav nav-collapse">
                    <ul class="nav">
                        <li><a href="#">主功能頁</a></li>
                    </ul>
                </div><!--/.nav-collapse -->
            </div>
        </div>
    </div>
    <!-- topbar ends -->
        <div class="container-fluid">
        <div class="row-fluid">
                  
            <g:layoutBody/>
                
         </div><!--/fluid-row-->
        

        <footer>
            <p class="pull-left">&copy; <a href="." target="_blank">雲端安心客服驗證 管理系統</a> 2013</p>
            <p class="pull-right">系統設計: <a href="http://www.cht.com.tw">中華電信</a></p>
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
