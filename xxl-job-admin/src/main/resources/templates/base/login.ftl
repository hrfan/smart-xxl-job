<!DOCTYPE html>
<html>
<head>
	<#-- import macro -->
	<#import "../common/common.macro.ftl" as netCommon>

	<!-- 1-style start -->
	<@netCommon.commonStyle />
	<!-- 1-style end -->

	<style>
		* { box-sizing: border-box; }

		body.hold-transition {
			background: linear-gradient(135deg, #0f0c29 0%, #302b63 50%, #24243e 100%);
			min-height: 100vh;
			display: flex;
			align-items: center;
			justify-content: center;
			font-family: -apple-system, BlinkMacSystemFont, 'Segoe UI', Roboto, 'Helvetica Neue', Arial, sans-serif;
			overflow: hidden;
		}

		/* animated background particles */
		body.hold-transition::before {
			content: '';
			position: fixed;
			top: -50%;
			left: -50%;
			width: 200%;
			height: 200%;
			background: radial-gradient(ellipse at 20% 50%, rgba(72, 50, 180, 0.15) 0%, transparent 50%),
						radial-gradient(ellipse at 80% 20%, rgba(56, 134, 255, 0.12) 0%, transparent 50%),
						radial-gradient(ellipse at 50% 80%, rgba(140, 80, 220, 0.1) 0%, transparent 50%);
			animation: bgFloat 20s ease-in-out infinite;
			z-index: 0;
		}

		@keyframes bgFloat {
			0%, 100% { transform: translate(0, 0) rotate(0deg); }
			33% { transform: translate(30px, -30px) rotate(1deg); }
			66% { transform: translate(-20px, 20px) rotate(-1deg); }
		}

		.login-box {
			position: relative;
			z-index: 1;
			width: 420px;
			max-width: 90vw;
			background: rgba(255, 255, 255, 0.03);
			backdrop-filter: blur(20px);
			-webkit-backdrop-filter: blur(20px);
			border: 1px solid rgba(255, 255, 255, 0.08);
			border-radius: 24px;
			padding: 48px 40px 40px;
			box-shadow: 0 32px 64px rgba(0, 0, 0, 0.3),
						0 0 0 1px rgba(255, 255, 255, 0.05) inset;
			animation: cardIn 0.6s cubic-bezier(0.16, 1, 0.3, 1) both;
		}

		@keyframes cardIn {
			from { opacity: 0; transform: translateY(30px) scale(0.96); }
			to { opacity: 1; transform: translateY(0) scale(1); }
		}

		.login-logo {
			text-align: center;
			margin-bottom: 36px;
		}

		.login-logo a {
			color: #fff !important;
			font-size: 28px;
			font-weight: 700;
			letter-spacing: 1px;
			text-decoration: none;
		}

		.login-logo a b {
			background: linear-gradient(135deg, #60a5fa 0%, #a78bfa 100%);
			-webkit-background-clip: text;
			-webkit-text-fill-color: transparent;
			background-clip: text;
		}

		.login-box-msg {
			color: rgba(255, 255, 255, 0.5) !important;
			font-size: 13px;
			text-align: center;
			margin-bottom: 28px;
			letter-spacing: 0.5px;
		}

		.login-box-body {
			padding: 0;
			border: none;
			background: transparent;
			box-shadow: none;
		}

		.login-box-body .form-group {
			margin-bottom: 20px;
			position: relative;
		}

		.login-box-body .form-group.has-feedback .form-control {
			background: rgba(255, 255, 255, 0.06);
			border: 1px solid rgba(255, 255, 255, 0.1);
			border-radius: 12px;
			color: #fff;
			font-size: 14px;
			padding: 14px 16px 14px 46px;
			height: auto;
			transition: all 0.3s ease;
		}

		.login-box-body .form-group.has-feedback .form-control::placeholder {
			color: rgba(255, 255, 255, 0.35);
		}

		.login-box-body .form-group.has-feedback .form-control:focus {
			background: rgba(255, 255, 255, 0.1);
			border-color: rgba(96, 165, 250, 0.5);
			box-shadow: 0 0 0 3px rgba(96, 165, 250, 0.15);
			outline: none;
		}

		.login-box-body .form-group.has-feedback .form-control-feedback {
			color: rgba(255, 255, 255, 0.3);
			font-size: 16px;
			top: 50%;
			transform: translateY(-50%);
			left: 16px;
			right: auto;
			z-index: 2;
		}

		.login-box-body .form-group.has-error .form-control {
			border-color: rgba(248, 113, 113, 0.5);
			box-shadow: 0 0 0 3px rgba(248, 113, 113, 0.1);
		}

		.login-box-body .form-group.has-error .form-control-feedback {
			color: rgba(248, 113, 113, 0.7);
		}

		.login-box-body .help-block {
			color: #f87171;
			font-size: 12px;
			margin-top: 6px;
			padding-left: 4px;
		}

		.login-box-body .row {
			display: flex;
			align-items: center;
			justify-content: space-between;
			margin-top: 28px;
		}

		.login-box-body .row .col-xs-8,
		.login-box-body .row .col-xs-4 {
			width: auto;
			padding: 0;
		}

		/* remember me checkbox */
		.checkbox icheck label,
		.checkbox label {
			color: rgba(255, 255, 255, 0.45) !important;
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
			width: 18px;
			height: 18px;
			border: 1.5px solid rgba(255, 255, 255, 0.2);
			border-radius: 5px;
			background: rgba(255, 255, 255, 0.05);
			cursor: pointer;
			position: relative;
			transition: all 0.2s ease;
			margin: 0;
		}

		.checkbox label input[type="checkbox"]:checked {
			background: linear-gradient(135deg, #60a5fa, #a78bfa);
			border-color: transparent;
		}

		.checkbox label input[type="checkbox"]:checked::after {
			content: '';
			position: absolute;
			left: 5px;
			top: 2px;
			width: 5px;
			height: 9px;
			border: solid #fff;
			border-width: 0 2px 2px 0;
			transform: rotate(45deg);
		}

		/* login button */
		.btn-primary {
			background: linear-gradient(135deg, #60a5fa 0%, #7c3aed 100%) !important;
			border: none !important;
			border-radius: 12px !important;
			color: #fff !important;
			font-size: 14px;
			font-weight: 600;
			padding: 12px 32px;
			letter-spacing: 0.5px;
			cursor: pointer;
			transition: all 0.3s ease;
			box-shadow: 0 4px 15px rgba(96, 165, 250, 0.3);
		}

		.btn-primary:hover {
			transform: translateY(-1px);
			box-shadow: 0 6px 25px rgba(96, 165, 250, 0.4);
			background: linear-gradient(135deg, #93c5fd 0%, #8b5cf6 100%) !important;
		}

		.btn-primary:active {
			transform: translateY(0);
		}

		/* footer */
		.login-footer {
			text-align: center;
			margin-top: 32px;
			color: rgba(255, 255, 255, 0.2);
			font-size: 12px;
		}

		/* layer popup style override */
		.layui-layer {
			border-radius: 12px !important;
		}
	</style>
</head>
<body class="hold-transition">

	<!-- 2-biz start -->
	<div class="login-box">
		<div class="login-logo">
			<a><b>XXL-JOB</b></a>
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
	<!-- 2-biz end -->

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
