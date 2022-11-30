<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>mentor </title>
		<meta name="viewport" content="width=device-width, initial-scale=1.0">

		<!-- MATERIAL DESIGN ICONIC FONT -->
		<link rel="stylesheet" href="fonts/material-design-iconic-font/css/material-design-iconic-font.min.css">
		
		<!-- STYLE CSS -->
		<link rel="stylesheet" href="css/style.css">
	</head>

	<body>

		<div class="wrapper">
			<div class="image-holder">
				<img src="images/registration-form-8.jpg" alt="">
			</div>
			<div class="form-inner">
				<form method="post"  action="../mentoreg">
					<div class="form-header">
						<h3>Sign up</h3>
						<img src="images/sign-up.png" alt="" class="sign-up-icon">
					</div>
					<div class="form-group">
						<label for="">Username:</label>
						<input type="text" class="form-control" name="name">
					</div>
					
					<div class="form-group">
						<label for="">E-mail:</label>
						<input type="text" class="form-control" name="email">
					</div>
					<div class="form-group" >
						<label for="">Password:</label>
						<input type="password" class="form-control" name="pass">
					</div>
					<button >create my account</button>
					<text>have account </text>
					<button onclick="myfun()">Login</button>
					<script>
						function myfun()
						{
							window.location.href="productlogin.jsp"
						}
					</script>
				</form>
			</div>
			
		</div>
		
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/jquery.form-validator.min.js"></script>
		<script src="js/main.js"></script>
	</body>
</html>