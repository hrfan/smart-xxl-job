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
			--bg-primary: #0B0F19;
			--bg-card: #111827;
			--bg-input: #1F2937;
			--bg-input-focus: #1F2937;
			--color-primary: #3B82F6;
			--color-primary-hover: #2563EB;
			--color-primary-glow: rgba(59, 130, 246, 0.15);
			--color-text: #F1F5F9;
			--color-text-secondary: #94A3B8;
			--color-text-muted: #64748B;
			--color-border: #1E293B;
			--color-border-focus: #3B82F6;
			--color-error: #F87171;
			--color-white: #FFFFFF;
			--radius-sm: 8px;
			--radius-md: 12px;
			--radius-lg: 16px;
			--shadow-card: 0 1px 3px rgba(0,0,0,0.3), 0 1px 2px rgba(0,0,0,0.2);
			--transition: 200ms ease;
			--font: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
		}

		/* ====== Reset ====== */
		* { box-sizing: border-box; margin: 0; padding: 0; }

		/* ====== Body: override AdminLTE ====== */
		body.hold-transition,
		body.hold-transition.login-page {
			background: var(--bg-primary) !important;
			min-height: 100vh;
			display: flex !important;
			align-items: center;
			justify-content: center;
			font-family: var(--font);
			padding: 20px;
		}

		/* ====== Login Card ====== */
		.login-box {
			width: 400px;
			max-width: 100%;
			background: var(--bg-card);
			border: 1px solid var(--color-border);
			border-radius: var(--radius-lg);
			padding: 40px 36px 36px;
			box-shadow: var(--shadow-card);
		}

		/* ====== Logo ====== */
		.login-logo {
			text-align: center;
			margin-bottom: 32px;
		}

		.login-logo a {
			color: var(--color-text) !important;
			font-size: 26px;
			font-weight: 700;
			text-decoration: none;
			letter-spacing: -0.5px;
		}

		.login-logo a b {
			color: var(--color-primary) !important;
		}

		/* ====== Form ====== */
		#loginForm {
			margin: 0;
		}

		.login-box-body {
			background: transparent !important;
			border: none !important;
			box-shadow: none !important;
			padding: 0 !important;
		}

		.login-box-msg {
			color: var(--color-text-secondary) !important;
			font-size: 13px;
			text-align: center;
			margin-bottom: 28px;
		}

		/* ====== Input Groups ====== */
		.form-group {
			margin-bottom: 20px;
			position: relative;
		}

		.form-group.has-feedback .form-control {
			width: 100%;
			height: 44px;
			padding: 0 14px 0 42px;
			background: var(--bg-input);
			border: 1.5px solid var(--color-border);
			border-radius: var(--radius-sm);
			color: var(--color-text);
			font-size: 14px;
			font-family: var(--font);
			transition: border-color var(--transition), box-shadow var(--transition);
			outline: none;
			box-shadow: none !important;
		}

		.form-group.has-feedback .form-control::placeholder {
			color: var(--color-text-muted);
		}

		.form-group.has-feedback .form-control:focus {
			border-color: var(--color-border-focus);
			box-shadow: 0 0 0 3px var(--color-primary-glow) !important;
			background: var(--bg-input-focus);
		}

		/* Icon */
		.form-group.has-feedback .form-control-feedback {
			color: var(--color-text-muted);
			font-size: 14px;
			top: 50%;
			transform: translateY(-50%);
			left: 14px;
			right: auto;
			z-index: 2;
			pointer-events: none;
			transition: color var(--transition);
		}

		.form-group.has-feedback .form-control:focus ~ .form-control-feedback,
		.form-group.has-feedback:focus-within .form-control-feedback {
			color: var(--color-primary);
		}

		/* Error */
		.form-group.has-error .form-control {
			border-color: var(--color-error) !important;
			box-shadow: 0 0 0 3px rgba(248, 113, 113, 0.12) !important;
		}

		.form-group.has-error .form-control-feedback {
			color: var(--color-error);
		}

		.help-block {
			color: var(--color-error);
			font-size: 12px;
			margin-top: 6px;
			padding-left: 2px;
		}

		/* ====== Options Row ====== */
		.login-box-body .row {
			display: flex;
			align-items: center;
			justify-content: space-between;
			margin-top: 24px;
		}

		.login-box-body .row .col-xs-8,
		.login-box-body .row .col-xs-4 {
			width: auto;
			padding: 0;
		}

		/* Checkbox */
		.checkbox label,
		.checkbox icheck label {
			color: var(--color-text-secondary) !important;
			font-size: 13px;
			display: flex;
			align-items: center;
			gap: 8px;
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
			background: var(--bg-input);
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

		/* ====== Button ====== */
		.btn-primary {
			background: var(--color-primary) !important;
			border: none !important;
			border-radius: var(--radius-sm) !important;
			color: #fff !important;
			font-size: 14px;
			font-weight: 600;
			padding: 0 24px;
			height: 44px;
			letter-spacing: 0.3px;
			cursor: pointer;
			transition: background var(--transition), box-shadow var(--transition), transform 100ms ease;
			box-shadow: none !important;
			font-family: var(--font);
		}

		.btn-primary:hover {
			background: var(--color-primary-hover) !important;
			box-shadow: 0 4px 12px rgba(59, 130, 246, 0.3) !important;
		}

		.btn-primary:active {
			transform: scale(0.98);
		}

		.btn-block {
			display: block;
			width: 100%;
		}

		.btn-flat {
			border-radius: var(--radius-sm) !important;
		}

		/* ====== Footer ====== */
		.login-footer {
			text-align: center;
			margin-top: 28px;
			color: var(--color-text-muted);
			font-size: 12px;
		}

		/* ====== Layer Override ====== */
		.layui-layer {
			border-radius: var(--radius-md) !important;
		}

		/* ====== Responsive ====== */
		@media (max-width: 480px) {
			.login-box {
				padding: 32px 24px 28px;
			}
		}
	</style>
</head>
<body class="hold-transition">

	<div class="login-box">
		<div class="login-logo">
			<a><b>XXL</b>-JOB</a>
		</div>
		<form id="loginForm" method="post">
			<div class="login-box-body">
				<p class="login-box-msg">${I18n.admin_name}</p>
				<div class="form-group has-feedback">
					<input type="text" name="userName" class="form-control" placeholder="${I18n.login_username_placeholder}" maxlength="20" autocomplete="username">
					<span class="fa fa-user form-control-feedback"></span>
				</div>
				<div class="form-group has-feedback">
					<input type="password" name="password" class="form-control" placeholder="${I18n.login_password_placeholder}" maxlength="20" autocomplete="current-password">
					<span class="fa fa-lock form-control-feedback"></span>
				</div>
				<div class="row">
					<div class="col-xs-8">
						<div class="checkbox">
							<label>
								<input type="checkbox" name="ifRemember"> ${I18n.login_remember_me}
							</label>
						</div>
					</div>
					<div class="col-xs-4">
						<button type="submit" class="btn btn-primary btn-block btn-flat">${I18n.login_btn}</button>
					</div>
				</div>
			</div>
		</form>
		<div class="login-footer">
			XXL-JOB &copy; 2015-present, xuxueli
		</div>
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
			element.parent('div').append(error);
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
