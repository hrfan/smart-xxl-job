<!DOCTYPE html>
<html>
<head>
	<#-- import macro -->
	<#import "../common/common.macro.ftl" as netCommon>

	<!-- 1-style start -->
	<@netCommon.commonStyle />
	<!-- 1-style end -->

	<style>
		:root {
			/* SaaS Design Tokens */
			--color-primary: #2563EB;
			--color-primary-hover: #1D4ED8;
			--color-primary-light: #EFF6FF;
			--color-primary-50: #F8FAFC;
			--color-cta: #F97316;
			--color-text-primary: #1E293B;
			--color-text-secondary: #64748B;
			--color-text-muted: #94A3B8;
			--color-border: #E2E8F0;
			--color-border-focus: #2563EB;
			--color-bg: #F8FAFC;
			--color-white: #FFFFFF;
			--color-error: #EF4444;
			--color-error-bg: #FEF2F2;
			--radius-sm: 6px;
			--radius-md: 10px;
			--radius-lg: 16px;
			--radius-xl: 20px;
			--shadow-sm: 0 1px 2px rgba(0,0,0,0.05);
			--shadow-md: 0 4px 6px -1px rgba(0,0,0,0.07), 0 2px 4px -2px rgba(0,0,0,0.05);
			--shadow-lg: 0 10px 15px -3px rgba(0,0,0,0.08), 0 4px 6px -4px rgba(0,0,0,0.04);
			--shadow-xl: 0 20px 25px -5px rgba(0,0,0,0.08), 0 8px 10px -6px rgba(0,0,0,0.04);
			--transition: 200ms ease;
			--font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
		}

		* { box-sizing: border-box; margin: 0; padding: 0; }

		body.hold-transition {
			background: var(--color-bg);
			min-height: 100vh;
			display: flex;
			font-family: var(--font-family);
			color: var(--color-text-primary);
			overflow: hidden;
		}

		/* Left panel - brand */
		.login-brand {
			flex: 1;
			background: var(--color-primary);
			display: flex;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			padding: 60px;
			position: relative;
			overflow: hidden;
		}

		.login-brand::before {
			content: '';
			position: absolute;
			top: -100px;
			right: -100px;
			width: 400px;
			height: 400px;
			border-radius: 50%;
			background: rgba(255,255,255,0.06);
		}

		.login-brand::after {
			content: '';
			position: absolute;
			bottom: -80px;
			left: -80px;
			width: 300px;
			height: 300px;
			border-radius: 50%;
			background: rgba(255,255,255,0.04);
		}

		.brand-content {
			position: relative;
			z-index: 1;
			text-align: center;
			color: #fff;
		}

		.brand-logo {
			width: 64px;
			height: 64px;
			background: rgba(255,255,255,0.15);
			border-radius: var(--radius-lg);
			display: flex;
			align-items: center;
			justify-content: center;
			margin: 0 auto 24px;
			font-size: 28px;
			font-weight: 800;
			letter-spacing: -1px;
		}

		.brand-title {
			font-size: 32px;
			font-weight: 700;
			letter-spacing: -0.5px;
			margin-bottom: 12px;
		}

		.brand-subtitle {
			font-size: 15px;
			color: rgba(255,255,255,0.7);
			line-height: 1.6;
			max-width: 320px;
		}

		.brand-features {
			margin-top: 48px;
			text-align: left;
			list-style: none;
		}

		.brand-features li {
			color: rgba(255,255,255,0.85);
			font-size: 14px;
			padding: 10px 0;
			display: flex;
			align-items: center;
			gap: 12px;
		}

		.brand-features li::before {
			content: '';
			width: 20px;
			height: 20px;
			background: rgba(255,255,255,0.15);
			border-radius: 50%;
			flex-shrink: 0;
			display: flex;
			align-items: center;
			justify-content: center;
		}

		.brand-features li .fa {
			margin-right: 4px;
			font-size: 10px;
			color: rgba(255,255,255,0.6);
		}

		/* Right panel - login form */
		.login-form-panel {
			width: 480px;
			min-width: 400px;
			display: flex;
			flex-direction: column;
			justify-content: center;
			padding: 60px;
			background: var(--color-white);
		}

		.form-header {
			margin-bottom: 36px;
		}

		.form-header h2 {
			font-size: 24px;
			font-weight: 700;
			color: var(--color-text-primary);
			margin-bottom: 8px;
		}

		.form-header p {
			font-size: 14px;
			color: var(--color-text-secondary);
		}

		/* Form inputs */
		.form-group {
			margin-bottom: 20px;
		}

		.form-group label {
			display: block;
			font-size: 13px;
			font-weight: 600;
			color: var(--color-text-primary);
			margin-bottom: 6px;
		}

		.form-control {
			width: 100%;
			height: 44px;
			padding: 0 14px 0 42px;
			border: 1.5px solid var(--color-border);
			border-radius: var(--radius-md);
			font-size: 14px;
			color: var(--color-text-primary);
			background: var(--color-white);
			transition: border-color var(--transition), box-shadow var(--transition);
			outline: none;
			font-family: var(--font-family);
		}

		.form-control::placeholder {
			color: var(--color-text-muted);
		}

		.form-control:focus {
			border-color: var(--color-border-focus);
			box-shadow: 0 0 0 3px rgba(37, 99, 235, 0.12);
		}

		.input-wrapper {
			position: relative;
		}

		.input-icon {
			position: absolute;
			left: 14px;
			top: 50%;
			transform: translateY(-50%);
			color: var(--color-text-muted);
			font-size: 15px;
			pointer-events: none;
			transition: color var(--transition);
		}

		.form-control:focus ~ .input-icon,
		.form-control:focus + .input-icon {
			color: var(--color-primary);
		}

		/* Error state */
		.form-group.has-error .form-control {
			border-color: var(--color-error);
			box-shadow: 0 0 0 3px rgba(239, 68, 68, 0.1);
		}

		.form-group.has-error .input-icon {
			color: var(--color-error);
		}

		.help-block {
			color: var(--color-error);
			font-size: 12px;
			margin-top: 6px;
		}

		/* Remember me + forgot */
		.form-options {
			display: flex;
			align-items: center;
			justify-content: space-between;
			margin-bottom: 24px;
		}

		.checkbox label {
			display: flex;
			align-items: center;
			gap: 8px;
			font-size: 13px;
			color: var(--color-text-secondary);
			cursor: pointer;
			user-select: none;
		}

		.checkbox label input[type="checkbox"] {
			-webkit-appearance: none;
			appearance: none;
			width: 16px;
			height: 16px;
			border: 1.5px solid var(--color-border);
			border-radius: 4px;
			cursor: pointer;
			position: relative;
			transition: all var(--transition);
			margin: 0;
			flex-shrink: 0;
		}

		.checkbox label input[type="checkbox"]:checked {
			background: var(--color-primary);
			border-color: var(--color-primary);
		}

		.checkbox label input[type="checkbox"]:checked::after {
			content: '';
			position: absolute;
			left: 4.5px;
			top: 1.5px;
			width: 5px;
			height: 8px;
			border: solid #fff;
			border-width: 0 2px 2px 0;
			transform: rotate(45deg);
		}

		/* Submit button */
		.btn-login {
			width: 100%;
			height: 44px;
			background: var(--color-primary);
			border: none;
			border-radius: var(--radius-md);
			color: #fff;
			font-size: 14px;
			font-weight: 600;
			cursor: pointer;
			transition: background var(--transition), box-shadow var(--transition), transform 100ms ease;
			font-family: var(--font-family);
		}

		.btn-login:hover {
			background: var(--color-primary-hover);
			box-shadow: var(--shadow-md);
		}

		.btn-login:active {
			transform: scale(0.98);
		}

		/* Footer */
		.login-footer {
			position: absolute;
			bottom: 24px;
			right: 60px;
			color: var(--color-text-muted);
			font-size: 12px;
		}

		/* Responsive */
		@media (max-width: 900px) {
			body.hold-transition {
				flex-direction: column;
			}
			.login-brand {
				padding: 40px 24px;
				min-height: auto;
			}
			.brand-features {
				display: none;
			}
			.login-form-panel {
				width: 100%;
				min-width: auto;
				padding: 32px 24px;
			}
			.login-footer {
				position: static;
				text-align: center;
				padding: 16px 24px;
				left: 0;
				right: 0;
			}
		}

		/* Layer popup override */
		.layui-layer {
			border-radius: var(--radius-lg) !important;
		}
	</style>
</head>
<body class="hold-transition">

	<!-- Left brand panel -->
	<div class="login-brand">
		<div class="brand-content">
			<div class="brand-logo">XX</div>
			<h1 class="brand-title">XXL-JOB</h1>
			<p class="brand-subtitle">${I18n.admin_name}</p>
			<ul class="brand-features">
				<li><i class="fa fa-check"></i> 可视化任务调度管理</li>
				<li><i class="fa fa-check"></i> 弹性扩容分布式执行</li>
				<li><i class="fa fa-check"></i> 丰富的任务触发策略</li>
			</ul>
		</div>
	</div>

	<!-- Right login form -->
	<div class="login-form-panel">
		<div class="form-header">
			<h2>欢迎回来</h2>
			<p>请登录到调度中心</p>
		</div>
		<form id="loginForm" method="post">
			<div class="form-group">
				<label>账号</label>
				<div class="input-wrapper">
					<input type="text" name="userName" class="form-control" placeholder="${I18n.login_username_placeholder}" maxlength="20" autocomplete="username">
					<i class="fa fa-user input-icon"></i>
				</div>
			</div>
			<div class="form-group">
				<label>密码</label>
				<div class="input-wrapper">
					<input type="password" name="password" class="form-control" placeholder="${I18n.login_password_placeholder}" maxlength="20" autocomplete="current-password">
					<i class="fa fa-lock input-icon"></i>
				</div>
			</div>
			<div class="form-options">
				<div class="checkbox">
					<label>
						<input type="checkbox" name="ifRemember"> ${I18n.login_remember_me}
					</label>
				</div>
			</div>
			<button type="submit" class="btn-login">${I18n.login_btn}</button>
		</form>
	</div>

	<div class="login-footer">
		XXL-JOB &copy; 2015-present, xuxueli
	</div>

<!-- 3-script start -->
<@netCommon.commonScript />
<script>
$(function () {

	// login Form Valid
	var loginFormValid = $("#loginForm").validate({
		errorElement : 'span',
		errorClass : 'help-block',
		focusInvalid : true,
		rules : {
			userName : {
				required : true,
				minlength: 4,
				maxlength: 20
			},
			password : {
				required : true,
				minlength: 4,
				maxlength: 20
			}
		},
		messages : {
			userName : {
				required  : I18n.login_username_empty,
				minlength : I18n.login_username_lt_4
			},
			password : {
				required  : I18n.login_password_empty,
				minlength : I18n.login_password_lt_4
			}
		},
		highlight : function(element) {
			$(element).closest('.form-group').addClass('has-error');
		},
		success : function(label) {
			label.closest('.form-group').removeClass('has-error');
			label.remove();
		},
		errorPlacement : function(error, element) {
			element.closest('.form-group').append(error);
		},
		submitHandler : function(form) {
			$.post(base_url + "/auth/doLogin", $("#loginForm").serialize(), function(data, status) {
				if (data.code === 200) {
					layer.msg( I18n.login_success );
					setTimeout(function(){
						window.location.href = base_url + "/";
					}, 500);
				} else {
					layer.open({
						title: I18n.system_tips,
						btn: [ I18n.system_ok ],
						content: (data.msg || I18n.login_fail ),
						icon: '2'
					});
				}
			});
		}
	});

});
</script>
<!-- 3-script end -->

</body>
</html>
