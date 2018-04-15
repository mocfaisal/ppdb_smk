			<?php

			if (isset($_GET['page'])) {
				?>

				

			<?php
		} 
			?>
			


<?php

if (isset($_GET['page'])) {

	?>

	<!-- What is -->
	<div id="down" class="content-section-b" style="border-top: 0">
		<div class="container">

			<div class="col-md-6 col-md-offset-3 text-center wrap_title">
				<h2><?php echo ucfirst($_GET['page']); ?> Page</h2>
				<p class="lead" style="margin-top:0">SMKN 1 Cianjur</p>

			</div>
			<?php

			if(isset($_GET['page']) && $_GET['page']=='register'){
				?>

				<div class="row">

					<div class="col-sm-12 wow fadeInDown text-center">
						<img class="rotate" src="<?php echo base_url(); ?>assets/img/images/User_add.png" alt="Generic placeholder image">
						<h3>New Students</h3>
						<p class="lead">2017-2018</p>


					</div><!-- /.col-lg-4 -->



				</div><!-- /.row -->

				<?php } ?>
				<div class="panel panel-default">
					<div class="panel-body">



						<?php


						include ('views/' . $_GET['page'] . '.php');

						?>

					</div>
				</div>
			</div>
		</div>
		<?php

	} else {

		?>
		<div id="down">
		</div>
		<!-- What is -->
		<div id="profile" class="content-section-b" style="border-top: 0">
			<div class="container">

				<div class="col-md-6 col-md-offset-3 text-center wrap_title">
					<h2>Profile</h2>
					<p class="lead" style="margin-top:0">SMKN 1 Cianjur</p>

				</div>

				<div class="row">

					<div class="col-sm-4 wow fadeInDown text-center">
						<img class="rotate" src="<?php echo base_url(); ?>assets/img/icon/tweet.svg" alt="Generic placeholder image">
						<h3>Nama Sekolah</h3>
						<p class="lead">SMK Negeri 1 Cianjur</p>

						<!-- <p><a class="btn btn-embossed btn-primary view" role="button">View Details</a></p> -->
					</div><!-- /.col-lg-4 -->

					<div class="col-sm-4 wow fadeInDown text-center">
						<img  class="rotate" src="<?php echo base_url(); ?>assets/img/icon/picture.svg" alt="Generic placeholder image">
						<h3>Gallery</h3>
						<p class="lead">Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. </p>
						<!-- <p><a class="btn btn-embossed btn-primary view" role="button">View Details</a></p> -->
					</div><!-- /.col-lg-4 -->

					<div class="col-sm-4 wow fadeInDown text-center">
						<img  class="rotate" src="<?php echo base_url(); ?>assets/img/icon/retina.svg" alt="Generic placeholder image">
						<h3>Retina</h3>
						<p class="lead">Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. </p>
						<!-- <p><a class="btn btn-embossed btn-primary view" role="button">View Details</a></p> -->
					</div><!-- /.col-lg-4 -->

				</div><!-- /.row -->

				<div class="row tworow">

					<div class="col-sm-4  wow fadeInDown text-center">
						<img class="rotate" src="<?php echo base_url(); ?>assets/img/icon/laptop.svg" alt="Generic placeholder image">
						<h3>Responsive</h3>
						<p class="lead">Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. </p>
						<!-- <p><a class="btn btn-embossed btn-primary view" role="button">View Details</a></p> -->
					</div><!-- /.col-lg-4 -->

					<div class="col-sm-4 wow fadeInDown text-center">
						<img  class="rotate" src="<?php echo base_url(); ?>assets/img/icon/map.svg" alt="Generic placeholder image">
						<h3>Google</h3>
						<p class="lead">Epsum factorial non deposit quid pro quo hic escorol. Olypian quarrels et gorilla congolium sic ad nauseum. </p>
						<!-- <p><a class="btn btn-embossed btn-primary view" role="button">View Details</a></p> -->
					</div><!-- /.col-lg-4 -->

					<div class="col-sm-4 wow fadeInDown text-center">
						<img  class="rotate" src="<?php echo base_url(); ?>assets/img/icon/browser.svg" alt="Generic placeholder image">
						<h3>Program Keahlian</h3>
						<p class="lead">Akuntansi<br>
							Administrasi Perkantoran<br>
							Pemasaran<br>
							Rekayasa Perangkat Lunak<br>
							Teknik Komputer Jaringan</p>
							<!-- <p><a class="btn btn-embossed btn-primary view" role="button">View Details</a></p> -->
						</div><!-- /.col-lg-4 -->

					</div><!-- /.row -->
				</div>
			</div>

					<!-- Contact -->
					<div id="contact" class="content-section-a">
						<div class="container">
							<div class="row">

								<div class="col-md-6 col-md-offset-3 text-center wrap_title">
									<h2>Contact Us</h2>
									<p class="lead" style="margin-top:0">A special thanks to Death.</p>
								</div>

								<form role="form" action="" method="post" >
									<div class="col-md-6">
										<div class="form-group">
											<label for="InputName">Your Name</label>
											<div class="input-group">
												<input type="text" class="form-control" name="InputName" id="InputName" placeholder="Enter Name" required>
												<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
											</div>
										</div>

										<div class="form-group">
											<label for="InputEmail">Your Email</label>
											<div class="input-group">
												<input type="email" class="form-control" id="InputEmail" name="InputEmail" placeholder="Enter Email" required  >
												<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
											</div>
										</div>

										<div class="form-group">
											<label for="InputMessage">Message</label>
											<div class="input-group">
												<textarea name="InputMessage" id="InputMessage" class="form-control" rows="5" required></textarea>
												<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
											</div>
										</div>

										<input type="submit" name="submit" id="submit" value="Submit" class="btn wow tada btn-embossed btn-primary pull-right">
									</div>
								</form>

								<hr class="featurette-divider hidden-lg">
								<div class="col-md-5 col-md-push-1 address">
									<address>
										<h3>Office Location</h3>
										<p class="lead"><a href="https://www.google.com/maps/preview?ie=UTF-8&q=The+Pentagon&fb=1&gl=us&hq=1400+Defense+Pentagon+Washington,+DC+20301-1400&cid=12647181945379443503&ei=qmYfU4H8LoL2oATa0IHIBg&ved=0CKwBEPwSMAo&safe=on">Jalan Siliwangi<br>
											No.41, Cianjur 43212</a><br>
											Phone: (0263)-261-265<br>
											Fax: (0263)-272-561</p>
										</address>

										<h3>Social</h3>
										<li class="social">
											<a href="#"><i class="fa fa-facebook-square fa-size"> </i></a>
											<a href="#"><i class="fa  fa-twitter-square fa-size"> </i> </a>
											<a href="#"><i class="fa fa-google-plus-square fa-size"> </i></a>
											<a href="#"><i class="fa fa-flickr fa-size"> </i> </a>
										</li>
									</div>
								</div>
							</div>
						</div>

<?php
					}
					?>
						
				<?php
// echo "<pre>";
				// print_r($_SESSION);


				?>
