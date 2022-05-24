<!doctype html>
<!--[if lt IE 7]> <html class="no-js ie6 oldie" lang="en"> <![endif]-->
<!--[if IE 7]>    <html class="no-js ie7 oldie" lang="en"> <![endif]-->
<!--[if IE 8]>    <html class="no-js ie8 oldie" lang="en"> <![endif]-->
<!--[if IE 9]>    <html class="no-js ie9" lang="en"> <![endif]-->
<!--[if gt IE 9]><!--> <html> <!--<![endif]-->
<head>
<title><?php echo $title; ?></title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0">
	<meta name="description" content="Flatfy Free Flat and Responsive HTML5 Template ">
	<meta name="author" content="">

	<!-- Bootstrap core CSS -->
	<link href="<?php echo base_url(); ?>assets/css/bootstrap.css" rel="stylesheet">

	<!-- Custom Google Web Font -->
	<link href="<?php echo base_url(); ?>assets/font-awesome/css/font-awesome.min.css" rel="stylesheet">
	<!-- <link href='http://fonts.googleapis.com/css?family=Lato:100,300,400,700,900,100italic,300italic,400italic,700italic,900italic' rel='stylesheet' type='text/css'>
	<link href='http://fonts.googleapis.com/css?family=Arvo:400,700' rel='stylesheet' type='text/css'> -->

	<!-- Custom CSS-->
	<link href="<?php echo base_url(); ?>assets/css/general.css" rel="stylesheet">

	<!-- Owl-Carousel -->
	<link href="<?php echo base_url(); ?>assets/css/custom.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>assets/css/owl.carousel.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>assets/css/owl.theme.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>assets/css/style.css" rel="stylesheet">
	<link href="<?php echo base_url(); ?>assets/css/animate.css" rel="stylesheet">

	<!-- Magnific Popup core CSS file -->
	<link rel="stylesheet" href="<?php echo base_url(); ?>assets/css/magnific-popup.css">

	<script src="<?php echo base_url(); ?>assets/js/jquery.min.js"></script>

	<script src="<?php echo base_url(); ?>assets/js/modernizr-2.8.3.min.js"></script>  <!-- Modernizr /-->
	<!--[if IE 9]>
	<script src="<?php echo base_url(); ?>assets/js/PIE_IE9.js"></script>
	<![endif]-->
	<!--[if lt IE 9]>
	<script src="<?php echo base_url(); ?>assets/js/PIE_IE678.js"></script>
	<![endif]-->

	<!--[if lt IE 9]>
	<script src="<?php echo base_url(); ?>assets/js/html5shiv.js"></script>
	<![endif]-->

	<script type="text/javascript">

	$(function(){
		var url = 'register/smp';

$("#auto_sekolah").keyup(function(){
		$.ajax({
		type: "POST",
		url: url,
		data:'id='+$(this).val(),
		beforeSend: function(){
			$("#auto_sekolah").css("background","#FFF url(LoaderIcon.gif) no-repeat 165px");
		},
		success: function(data){

			$("#auto_sekolah").css("background","#FFF");
		}
		});
	});

//To select country name

		$.getJSON(url,function(data){
			$.each(data,function(i,j){
				// console.log(j.id_smp);
				// console.log(j.namasekolah);
				$('#namasekolah').append("<option value="+ j.id_smp +">" + j.namasekolah + "</option>");

			});
		});

		$('#namasekolah').change(function(){

			var url = 'register/smp?id='+$('#namasekolah option:selected').val();
			$.getJSON(url, function(data){

				$.each(data, function(i,j){

					$('#alamatsekolah').val(j.alamatsekolah);


				});


			});


		});


	});

	</script>

</head>

<body id="home">

	<!-- Preloader -->
	<div id="preloader">
		<div id="status"></div>
	</div>

	<!-- FullScreen -->
	<div class="intro-header">
		<div class="col-xs-12 text-center abcen1">
			<h1 class="h1_home wow fadeIn" data-wow-delay="0.4s">SMKN 1 Cianjur</h1>
			<h3 class="h3_home wow fadeIn" data-wow-delay="0.6s">Website</h3>
			<ul class="list-inline intro-social-buttons">
<?php

if ($view=='result') {
    ?>
				<li><a href="<?php echo base_url(); ?>result#up" title="Info Kelulusan!" class="btn  btn-lg mybutton_cyano wow fadeIn" data-wow-delay="0.8s"><span class="network-name">Kelulusan</span></a>
				</li>
				<?php
} else {
                    ?>

<li><a href="<?php echo base_url(); ?>result" title="Info Kelulusan!" class="btn  btn-lg mybutton_cyano wow fadeIn" data-wow-delay="0.8s"><span class="network-name">Kelulusan</span></a>
				</li>

<?php
                }


                 ?>
				<li><a href="<?php echo base_url(); ?>register" title="Register New Students!" class="btn  btn-lg mybutton_standard wow swing wow fadeIn" data-wow-delay="1.2s"><span class="network-name">Register</span></a>


				</li>
				<!-- <li id="download" ><a href="#downloadlink" class="btn  btn-lg mybutton_standard wow swing wow fadeIn" data-wow-delay="1.2s"><span class="network-name">Free Download</span></a> -->
			</li>
		</ul>
	</div>
	<!-- /.container -->
	<div class="col-xs-12 text-center abcen wow fadeIn">
		<div class="button_down ">
			<a class="imgcircle wow bounceInUp" data-wow-duration="1.5s"  href="#down"> <img class="img_scroll" src="<?php echo base_url(); ?>assets/img/icon/circle.png" alt=""> </a>
		</div>
	</div>
</div>


<nav class="navbar-default stuckMenu isStuck" role="navigation" style="position: fixed; top: 0px;">
	<div class="container">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-ex1-collapse">
				<span class="sr-only">Toggle navigation</span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
			<?php
if ($view == 'register') {
    ?>
	<a class="navbar-brand" href="?">PPDB</a>
			</div>

			<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
				<ul class="nav navbar-nav">

					<!-- <li class="menuItem"><a href="?#profile">Profile</a></li>
					<li class="menuItem"><a href="?#useit">Use It</a></li>
					<li class="menuItem"><a href="?#screen">Screenshot</a></li>
					<li class="menuItem"><a href="?#credits">Credits</a></li>
					<li class="menuItem"><a href="?#contact">Contact</a></li>
					<li class="menuItem"><a href="?clear">Clear Sesi</a></li> -->
					<!-- <li class="menuItem" title="Register New Student"><a href="?page=register">Register</a></li> -->
				</ul>
			</div>
<?php
} else {
    ?>
			<a class="navbar-brand" href="?">Home</a>
		</div>
		<div class="collapse navbar-collapse navbar-right navbar-ex1-collapse">
			<ul class="nav navbar-nav">

				<!-- <li class="menuItem"><a href="#profile">Profile</a></li> -->

				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Profil SMKN 1 Cianjur <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li class="menuItem"><a href="#profile">Profile</a></li>
						<li class="menuItem"><a href="#screen">Screenshot</a></li>
						<li class="menuItem"><a href="#credits">Credits</a></li>
						<li class="menuItem"><a href="#contact">Contact</a></li>
					</ul>
				</li>


				<li class="dropdown">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Program Keahlian <span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="#">Akuntansi</a></li>
						<li class="divider"></li>
						<li><a href="#">Administrasi Perkantoran</a></li>
						<li class="divider"></li>
						<li><a href="#">Pemasaran</a></li>
						<li class="divider"></li>
						<li><a href="#">Rekayasa Perangkat Lunak</a></li>
						<li class="divider"></li>
						<li><a href="#">Teknik Komunikasi dan Jaringan</a></li>
					</ul>
				</li>
				<!-- 		<li class="menuItem"><a href="#screen">Screenshot</a></li>
				<li class="menuItem"><a href="#credits">Credits</a></li>
				<li class="menuItem"><a href="#contact">Contact</a></li>
			-->



			<!-- <li class="menuItem" title="Register New Student"><a href="?page=register">Register</a></li> -->
			<li class="menuItem" title="Are you admin ?"><a href="<?php echo base_url(); ?>login">Login</a></li>
		</ul>
	</div>
	<?php
}

     ?>
</div>

</nav>
