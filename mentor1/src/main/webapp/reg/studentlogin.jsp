<!DOCTYPE html>
<html>
	<head>
		<meta charset="utf-8">
		<title>RegistrationForm_v8 by Colorlib</title>
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
                            <form action="../studentlogin" method="post">
					<div class="form-header">
						<h3>Login</h3>
						<img src="images/sign-up.png" alt="" class="sign-up-icon">
					</div>
					
					<div class="form-group">
						<label for="">E-mail:</label>
						<input type="text"  name="email" class="form-control" data-validation="email">
					</div>
					<div class="form-group" >
						<label for="">Password:</label>
						<input type="password"  name="pass" class="form-control" data-validation="length" data-validation-length="min8">
					</div>
					<button onclick="myfun2()">Login</button>
					<text> Dont have account </text>
					<button onclick="myfun()">Register</button>
					<script>
                        function myfun()
                        {
                            window.location.href="studentreg.jsp"
                        }
                        function myfun2()
                        {

                            window.location.href="../studenthome.jsp"
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