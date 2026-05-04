<!DOCTYPE html>
<html lang="zh-CN">
<head>
	<#-- import macro -->
	<#import "../common/common.macro.ftl" as netCommon>

	<!-- 1-style start -->
	<@netCommon.commonStyle />
	<!-- 1-style end -->

	<style>
		/* ====== Dark SaaS Design Tokens ====== */
		:root {
			--color-primary: #3B82F6;
			--color-primary-hover: #2563EB;
			--color-primary-glow: rgba(59, 130, 246, 0.15);
			--color-cta: #F97316;
			--color-text-primary: #F1F5F9;
			--color-text-secondary: #94A3B8;
			--color-text-muted: #64748B;
			--color-border: #1E293B;
			--color-border-focus: #3B82F6;
			--color-bg: #0B0F19;
			--color-bg-card: #111827;
			--color-bg-input: #1F2937;
			--color-white: #FFFFFF;
			--color-error: #F87171;
			--radius-sm: 8px;
			--radius-md: 12px;
			--radius-lg: 16px;
			--shadow-card: 0 1px 3px rgba(0,0,0,0.4), 0 1px 2px rgba(0,0,0,0.3);
			--transition: 200ms ease;
			--font: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
		}

		/* ====== Reset ====== */
		* { box-sizing: border-box; margin: 0; padding: 0; }

		/* ====== Override AdminLTE ====== */
		body.hold-transition,
		body.hold-transition.login-page {
			background: var(--color-bg) !important;
			min-height: 100vh !important;
			display: flex !important;
			font-family: var(--font) !important;
			padding: 0 !important;
			margin: 0 !important;
		}

		/* ====== Left Brand Panel ====== */
		.login-brand {
			flex: 1;
			background: var(--color-bg-card);
			display: flex !important;
			flex-direction: column;
			justify-content: center;
			align-items: center;
			padding: 60px;
			position: relative;
			overflow: hidden;
			border-right: 1px solid var(--color-border);
		}

		/* Subtle decorative circles */
		.login-brand::before {
			content: '';
			position: absolute;
			top: -80px;
			right: -80px;
			width: 320px;
			height: 320px;
			border-radius: 50%;
			border: 1px solid rgba(59, 130, 246, 0.08);
		}

		.login-brand::after {
			content: '';
			position: absolute;
			bottom: -60px;
			left: -60px;
			width: 240px;
			height: 240px;
			border-radius: 50%;
			border: 1px solid rgba(59, 130, 246, 0.05);
		}

		.brand-content {
			position: relative;
			z-index: 1;
			text-align: center;
			color: var(--color-white);
		}

		.brand-logo {
			width: 64px;
			height: 64px;
			background: var(--color-primary);
			border-radius: var(--radius-lg);
			display: flex;
			align-items: center;
			justify-content: center;
			margin: 0 auto 24px;
			font-size: 26px;
			font-weight: 800;
			letter-spacing: -1px;
			color: #fff;
		}

		.brand-title {
			font-size: 30px;
			font-weight: 700;
			letter-spacing: -0.5px;
			margin-bottom: 10px;
			color: var(--color-text-primary);
		}

		.brand-subtitle {
			font-size: 14px;
			color: var(--color-text-secondary);
			line-height: 1.6;
			max-width: 300px;
		}

		.brand-features {
			margin-top: 44px;
			text-align: left;
			list-style: none;
			padding: 0;
		}

		.brand-features li {
			color: var(--color-text-secondary);
			font-size: 14px;
			padding: 10px 0;
			display: flex;
			align-items: center;
			gap: 10px;
		}

		.brand-features li .fa {
			color: var(--color-primary);
			font-size: 12px;
			width: 20px;
			text-align: center;
			flex-shrink: 0;
		}

		/* ====== Right Login Panel ====== */
		.login-form-panel {
			width: 460px;
			min-width: 380px;
			display: flex !important;
			flex-direction: column;
			justify-content: center;
			padding: 60px;
			background: var(--color-bg);
		}

		.form-header {
			margin-bottom: 32px;
		}

		.form-header h2 {
			font-size: 22px;
			font-weight: 700;
			color: var(--color-text-primary);
			margin-bottom: 6px;
		}

		.form-header p {
			font-size: 14px;
			color: var(--color-text-secondary);
		}

		/* ====== Form ====== */
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

		.input-wrapper {
			position: relative;
		}

		.form-control {
			width: 100% !important;
			height: 44px !important;
			padding: 0 14px 0 42px !important;
			background: var(--color-bg-input) !important;
			border: 1.5px solid var(--color-border) !important;
			border-radius: var(--radius-sm) !important;
			font-size: 14px !important;
			color: var(--color-text-primary) !important;
			font-family: var(--font) !important;
			transition: border-color var(--transition), box-shadow var(--transition) !important;
			outline: none !important;
			box-shadow: none !important;
		}

		.form-control::placeholder {
			color: var(--color-text-muted) !important;
		}

		.form-control:focus {
			border-color: var(--color-border-focus) !important;
			box-shadow: 0 0 0 3px var(--color-primary-glow) !important;
		}

		.input-icon {
			position: absolute;
			left: 14px;
			top: 50%;
			transform: translateY(-50%);
			color: var(--color-text-muted);
			font-size: 14px;
			pointer-events: none;
			transition: color var(--transition);
			z-index: 2;
		}

		.form-control:focus ~ .input-icon,
		.input-wrapper:focus-within .input-icon {
			color: var(--color-primary);
		}

		/* Error */
		.form-group.has-error .form-control {
			border-color: var(--color-error) !important;
			box-shadow: 0 0 0 3px rgba(248, 113, 113, 0.12) !important;
		}

		.form-group.has-error .input-icon {
			color: var(--color-error);
		}

		.help-block {
			color: var(--color-error);
			font-size: 12px;
			margin-top: 6px;
		}

		/* Options */
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
			color: var(--color-text-secondary) !important;
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
			background: var(--color-bg-input);
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
			top: 1px;
			width: 5px;
			height: 9px;
			border: solid #fff;
			border-width: 0 2px 2px 0;
			transform: rotate(45deg);
		}

		/* Button */
		.btn-login {
			width: 100%;
			height: 44px;
			background: var(--color-primary);
			border: none;
			border-radius: var(--radius-sm);
			color: #fff;
			font-size: 14px;
			font-weight: 600;
			cursor: pointer;
			transition: background var(--transition), box-shadow var(--transition), transform 100ms ease;
			font-family: var(--font);
		}

		.btn-login:hover {
			background: var(--color-primary-hover);
			box-shadow: 0 4px 12px rgba(59, 130, 246, 0.3);
		}

		.btn-login:active {
			transform: scale(0.98);
		}

		/* Footer */
		.login-footer {
			position: fixed;
			bottom: 20px;
			right: 40px;
			color: var(--color-text-muted);
			font-size: 12px;
		}

		/* Responsive */
		@media (max-width: 900px) {
			body.hold-transition,
			body.hold-transition.login-page {
				flex-direction: column !important;
			}
			.login-brand {
				padding: 36px 24px;
				min-height: auto;
				border-right: none;
				border-bottom: 1px solid var(--color-border);
			}
			.brand-features {
				display: none;
			}
			.brand-content {
				display: flex;
				align-items: center;
				gap: 16px;
			}
			.brand-logo {
				margin: 0;
				width: 48px;
				height: 48px;
				font-size: 18px;
			}
			.brand-title {
				font-size: 22px;
				margin-bottom: 2px;
			}
			.brand-subtitle {
				margin-bottom: 0;
			}
			.login-form-panel {
				width: 100%;
				min-width: auto;
				padding: 32px 24px;
			}
			.login-footer {
				position: static;
				text-align: center;
				padding: 16px;
			}
		}

		/* Layer override */
		.layui-layer {
			border-radius: var(--radius-md) !important;
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
				<li><i class="fa fa-check-circle"></i> 可视化任务调度管理</li>
				<li><i class="fa fa-check-circle"></i> 弹性扩容分布式执行</li>
				<li><i class="fa fa-check-circle"></i> 丰富的任务触发策略</li>
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
