<div class="container">
<div class="row" id="up">

<div class="row">

					<div class="col-sm-12 wow fadeindown text-center">
						<img class="rotate" src="<?php echo base_url(); ?>assets/img/images/user_add.png" alt="generic placeholder image">
						<h3>Info Students</h3>
						<p class="lead">2017-2018</p>


					</div>



				</div>
<?php 

if($view == 'result'){

 ?>
<form action="<?php echo base_url().'?/result/cari#info';?>" method="POST">
<div class="panel panel-body">

<div class="form-horizontal">

		<div class="form-group">
			<div class="input-group">
				<input type="text" name="nopendaf" id="nopendaf" placeholder="ex. PPDB170001" class="form-control" autocomplete="off"><span class="input-group-addon" style="visibility: hidden;"></span>
				<input type="submit" name="proses" id="proses" value="Cari" class="btn-group btn-group-justified btn wow tada btn-embossed btn-primary pull-left">
			</div>	
		</div>
	</div>
</div>

</form>
<?php 
}
 ?>
</div>
</div>
