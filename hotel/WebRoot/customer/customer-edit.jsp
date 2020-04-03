<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path;
pageContext.setAttribute("basePath", basePath);
%>

<%@ taglib uri="/struts-tags" prefix="s" %>
<!--_meta 作为公共模版分离出去-->
<!DOCTYPE HTML>
	<html>
		<head>
			<meta charset="utf-8">
			<meta name="renderer" content="webkit|ie-comp|ie-stand">
			<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
			<meta name="viewport" content="width=device-width,initial-scale=1,minimum-scale=1.0,maximum-scale=1.0,user-scalable=no" />
			<meta http-equiv="Cache-Control" content="no-siteapp" />
			<link rel="Bookmark" href="${basePath}/favicon.ico" >
			<link rel="Shortcut Icon" href="${basePath}/favicon.ico" />
			<!--[if lt IE 9]>
			<script type="text/javascript" src="lib/html5shiv.js"></script>
			<script type="text/javascript" src="lib/respond.min.js"></script>
			<![endif]-->
			<link rel="stylesheet" type="text/css" href="${basePath}/static/h-ui/css/H-ui.min.css" />
			<link rel="stylesheet" type="text/css" href="${basePath}/static/h-ui.admin/css/H-ui.admin.css" />
			<link rel="stylesheet" type="text/css" href="${basePath}/lib/Hui-iconfont/1.0.8/iconfont.css" />
			<link rel="stylesheet" type="text/css" href="${basePath}/static/h-ui.admin/skin/default/skin.css" id="skin" />
			<link rel="stylesheet" type="text/css" href="${basePath}/static/h-ui.admin/css/style.css" />
			<!--[if IE 6]>
			<script type="text/javascript" src="lib/DD_belatedPNG_0.0.8a-min.js" ></script>
			<script>DD_belatedPNG.fix('*');</script>
			<![endif]-->
			<!--/meta 作为公共模版分离出去-->
			
			<title>添加用户 - H-ui.admin v3.1</title>
			<meta name="keywords" content="H-ui.admin v3.1,H-ui网站后台模版,后台模版下载,后台管理系统模版,HTML后台模版下载">
			<meta name="description" content="H-ui.admin v3.1，是一款由国人开发的轻量级扁平化网站后台模板，完全免费开源的网站后台管理系统模版，适合中小型CMS后台系统。">
		</head>
		<body>
			<article class="page-container">
				<form action="${basePath}/sys/customer/updata.action" method="post" class="form form-horizontal" id="form-member-add">
					<input name="id" type="hidden" value='<s:property value="%{model.id}" />' >
					<input name="vipID" type="hidden" value="<s:property value="[0].top" />">
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>用户名：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" class="input-text" value='<s:property value="%{model.customerName}" />' placeholder="" id="username" name="customerName">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>性别：</label>
						<div class="formControls col-xs-8 col-sm-9 skin-minimal">
							<div class="radio-box">
								<input name="customerSex" value="男" type="radio" id="sex-1" checked>
								<label for="sex-1">男</label>
							</div>
							<div class="radio-box">
								<input type="radio" id="sex-2" name="customerSex" value="女">
								<label for="sex-2">女</label>
							</div>
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>手机：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" class="input-text" value="<s:property value='%{model.customerPhone}' />" placeholder="" id="mobile" name="customerPhone">
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3"><span class="c-red">*</span>身份证：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" class="input-text" name="customerCard" value='<s:property value="%{model.customerCard}" />' >
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3">地址：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<input type="text" value='<s:property value="%{model.customerAddress}"/>'class="input-text" name="customerAddress" >
						</div>
					</div>
					<div class="row cl">
						<label class="form-label col-xs-4 col-sm-3">备注：</label>
						<div class="formControls col-xs-8 col-sm-9">
							<s:textarea theme="simple" value="%{model.notes}" name="notes"  cols="" rows="" class="textarea"  placeholder="备注" ></s:textarea>
						</div>
					</div>
					<div class="row cl">
						<div class="col-xs-8 col-sm-9 col-xs-offset-4 col-sm-offset-3">
							<input class="btn btn-primary radius" type="submit" value="&nbsp;&nbsp;提交&nbsp;&nbsp;">
						</div>
					</div>
				</form>
			</article>
			
			<!--_footer 作为公共模版分离出去-->
			<script type="text/javascript" src="${basePath}/lib/jquery/1.9.1/jquery.min.js"></script> 
			<script type="text/javascript" src="${basePath}/lib/layer/2.4/layer.js"></script>
			<script type="text/javascript" src="${basePath}/static/h-ui/js/H-ui.min.js"></script> 
			<script type="text/javascript" src="${basePath}/static/h-ui.admin/js/H-ui.admin.js"></script> <!--/_footer 作为公共模版分离出去-->
			
			<!--请在下方写此页面业务相关的脚本--> 
			<script type="text/javascript" src="${basePath}/lib/My97DatePicker/4.8/WdatePicker.js"></script>
			<script type="text/javascript" src="${basePath}/lib/jquery.validation/1.14.0/jquery.validate.js"></script> 
			<script type="text/javascript" src="${basePath}/lib/jquery.validation/1.14.0/validate-methods.js"></script> 
			<script type="text/javascript" src="${basePath}/lib/jquery.validation/1.14.0/messages_zh.js"></script>
			<!--/请在上方写此页面业务相关的脚本-->
		</body>
</html>