<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib prefix="s" uri="/struts-tags" %>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
    pageContext.setAttribute("basePath", basePath);
%>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>

<meta charset="UTF-8">
<title>Delux后台</title>
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">

<!-- CSS -->

<link rel="stylesheet" href="${basePath}/adminloginCSS/css/supersized.css">
<link rel="stylesheet" href="${basePath}/adminloginCSS/css/login.css">
<link href="${basePath}/adminloginCSS/css/bootstrap.min.css" rel="stylesheet">
<!-- HTML5 shim, for IE6-8 support of HTML5 elements -->
<!--[if lt IE 9]>
	<script src="js/html5.js"></script>
<![endif]-->
<script src="adminloginCSS/js/jquery-1.8.2.min.js"></script>
<script type="text/javascript" src="${basePath}/adminloginCSS/js/jquery.form.js"></script>
<script type="text/javascript" src="${basePath}/adminloginCSS/js/tooltips.js"></script>
<script type="text/javascript" src="${basePath}/adminloginCSS/js/login.js"></script> 
</head>

<body>

<div class="page-container">
	<div class="main_box">
		<div class="login_box">
			<div class="login_logo">
				<img src="adminloginCSS/images/logo.png" >
			</div>
		<form action="" id="login_form" method="post">
			<div class="login_form">
				
					<div class="form-group">
						<label for="j_username" class="t">账    号:</label> 
						<input value="" name="username" type="text" id="username" name="username"  class="form-control x319 in" 
						autocomplete="off" >
					</div>
					<div class="form-group">
						<label for="j_password" class="t">密   码:</label> 
						<input value="" name="password" type="password" id="password"  name="password" 
						class="password form-control x319 in" >
					</div>
					
					<div class="form-group">
						<label class="t"></label>
						<label for="j_remember" class="m">
						<input id="j_remember" type="checkbox" value="true">&nbsp;记住登陆账号!</label>
					</div>
					<div class="form-group space">
						<label class="t"></label>
						<button type="button"  id="submit_btn" 
						class="btn btn-primary btn-lg">&nbsp;&nbsp;&nbsp;&nbsp;登&nbsp;录&nbsp;</button>
						<input type="reset" value="&nbsp;&nbsp;&nbsp;&nbsp;重&nbsp;置&nbsp;" class="btn btn-default btn-lg">
					</div>
				</form>
			</div>
		</div>
		<div class="bottom">Copyright &copy; 2019 - 2020 <a href="#">系统登陆</a></div>
	</div>
</div>

<!-- Javascript -->

<script src="${basePath}/adminloginCSS/js/supersized.3.2.7.min.js"></script>
<script src="${basePath}/adminloginCSS/js/supersized-init.js"></script>
<script src="${basePath}/adminloginCSS/js/scripts.js"></script>
<div style="text-align:center;">

</div>
</body>

</html>