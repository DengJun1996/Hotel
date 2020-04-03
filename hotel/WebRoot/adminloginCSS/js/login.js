// JavaScript Document
//支持Enter键登录
		document.onkeydown = function(e){
			if($(".bac").length==0)
			{
				if(!e) e = window.event;
				if((e.keyCode || e.which) == 13){
					var obtnLogin=document.getElementById("submit_btn")
					obtnLogin.focus();
				}
			}
		}

    	$(function(){
			//提交表单
    	   
	      
//alert(username);alert(password);
			$('#submit_btn').click(function(){
				show_loading();   
			
				if($('#username').val() == ''){
					show_err_msg('账号还没填呢！');	
					$('#username').focus();
				
				}else if($('#password').val() == ''){
					show_err_msg('密码还没填呢！');
					$('#password').focus();
				}else{
					 var username = $("#username").val();
				        var password = $("#password").val();
				    //    alert(username);
				    //    alert(password);
					 $.ajax({
				            type : "post",
				            url : "sys/login/logincheck.action",
				            data : {
				                "username" : username,
				                "password" : password
				                
				            },
				            dataType : "json",
				            success : function(data) {
				                if(data.msg=="success") {
				                    window.location.href="sys/index.jsp";
				                }
				                else {
				                	show_err_msg('用户名密码错误！');  
				                 //   window.location.href="/syslogin.jsp";
				                }
				            },
				            error : function() {
				                alert("系统异常请稍后重试");
				            }
				        })
					
					
					//ajax提交表单，#login_form为表单的ID。 如：$('#login_form').ajaxSubmit(function(data) { ... });
					//show_msg('登录成功咯！  正在为您跳转...','/');	
				}
			});
		});