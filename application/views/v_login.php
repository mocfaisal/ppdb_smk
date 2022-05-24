<!DOCTYPE html>
<html>
<head>
<title>Login Form</title>
<!-- For-Mobile-Apps -->
<meta name="viewport" content="width=device-width, initial-scale=1" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Login form"/>
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- //For-Mobile-Apps -->
<!-- Style --> <link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/style2.css" type="text/css" media="all" />
</head>
<body>
<div class="container">
<h1>LOGIN FORM</h1>
     <div class="contact-form">
	 <div class="profile-pic">
	 <img src="<?php echo base_url(); ?>assets/images/12.png" alt="User Icon"/ width="150%">
	 </div>
	 <div class="signin">
     <form action="<?php echo base_url().'login/ceklogin';?>" method="POST">
	      <input name="username" type="text" class="user" value="Username" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Username';}" />
		  <input name="password" type="password" class="pass" value="Password" onfocus="this.value = '';" onblur="if (this.value == '') {this.value = 'Password';}" />
		  <!-- <p><a href="#">Forgot Password?</a></p>		   -->
		  <input name="login" type="submit" value="Login" />
     </form>
	 </div>

	 </div>
</div>
<div class="footer">
     <p>Mocfaisal &copy; 2017 Login Form. All Rights Reserved</p>
</div>
</body>
</html>
