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
                            <form action="../mentorlogin" method="post">
					<div class="form-header">
						<h3>Login</h3>
						<img src="images/sign-up.png" alt="" class="sign-up-icon">
					</div>
					
					<div class="form-group">
						<label for="">E-mail:</label>
						<input type="text" class="form-control" name="email" data-validation="email">
					</div>
					<div class="form-group" >
						<label for="">Password:</label>
						<input type="password" class="form-control"  name="pass" data-validation="length" data-validation-length="min8">
					</div>
                                    <button type="submit" >Login</button>
					<text> Dont have account </text>
					<button onclick="myfun()">Register</button>
					
				</form>
			</div>
			
		</div>
		<script>
                        function myfun()
                        {
                          
                            window.location.href="productreg.jsp"
                        }
                        function myfun2()
                        {

                            window.location.href="../producthome.html"
                        }
                    </script>
		<script src="js/jquery-3.3.1.min.js"></script>
		<script src="js/jquery.form-validator.min.js"></script>
		<script src="js/main.js"></script>
	</body>
</html>