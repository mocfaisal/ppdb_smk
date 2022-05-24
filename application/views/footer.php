<footer>
							<div class="container">
								<div class="row">
									<div class="col-md-7">
										<h3 class="footer-title">Follow Me!</h3>
										<p>SMK Negeri 1 Cianjur<br/>
											Official Website<br/>
											Go to: <a  href="http://smkn1cianjur.sch.id" target="_blank">Smkn1cianjur.sch.id</a>
										</p>
										<p>Re-script by <a href="http://fb.me/faisal.cool.712">Mochammad Faisal</a></p>

									</div> <!-- /col-xs-7 -->

									<div class="col-md-5">
										<div class="footer-banner">
											<h3 class="footer-title">SMK Negeri 1 Cianjur</h3>
											<ul>
												<li>The Right Place</li>
												<li>To Get Success</li>
												<li>For The Future</li>
											</ul>
											Official Website<br/>
											Go to: <a  href="http://smkn1cianjur.sch.id" target="_blank">Smkn1cianjur.sch.id</a>
										</div>
									</div>
								</div>
							</div>
						</footer>
						
					<!-- JavaScript -->
					<script src="<?php echo base_url(); ?>assets/js/jquery-1.10.2.js"></script>
					<script src="<?php echo base_url(); ?>assets/js/bootstrap.js"></script>
					<script src="<?php echo base_url(); ?>assets/js/owl.carousel.js"></script>
					<script src="<?php echo base_url(); ?>assets/js/script.js"></script>
					<!-- StikyMenu -->
					<script src="<?php echo base_url(); ?>assets/js/stickUp.min.js"></script>
					<script type="text/javascript">
					jQuery(function($) {
						$(document).ready( function() {
							$('.navbar-default').stickUp();

						});
					});

					</script>
					<!-- Smoothscroll -->
					<script type="text/javascript" src="<?php echo base_url(); ?>assets/js/jquery.corner.js"></script>
					<script src="<?php echo base_url(); ?>assets/js/wow.min.js"></script>
					<script>
					new WOW().init();
					</script>
					<script src="<?php echo base_url(); ?>assets/js/classie.js"></script>
					
					<!-- Magnific Popup core JS file -->
					<script src="<?php echo base_url(); ?>assets/js/jquery.magnific-popup.js"></script>
					<script type="text/javascript">

					$('#Tanggal_Lahir').on('blur', function(){
						var tgl = $('#Tanggal_Lahir').val();
						var age = new Date().getFullYear() - new Date(tgl).getFullYear();
						if(isNaN(age)){
							$('#error-tgl').text("Isi usia terlebih dahulu");
							document.getElementById('error-tgl').style.color="#F00";
						}

						else if(age < 14 || age < 16){
							$('#error-tgl').text("Usia " + age + " tahun tidak boleh daftar");
							document.getElementById('error-tgl').style.color="#F00";
						}

						else{
							$('#error-tgl').text("Usia " + age + " tahun boleh daftar");
							document.getElementById('error-tgl').style.color="#0F0";
						}

					});

					$('body').scrollspy({ target: '.navbar-default' });

					</script>

					<!-- JS Gagal -->
					<script type="text/javascript"></script>

				</body>

				</html>
				<?php
// echo "<pre>";
// print_r($_SESSION);

                 ?>