
<div class="container">
<div class="row">
			<div class="panel panel-default">
			<div class="panel-body">
				<div class="row" id="down">

					<div class="col-sm-12 wow fadeindown text-center">
						<img class="rotate" src="<?php echo base_url(); ?>assets/img/images/user_add.png" alt="generic placeholder image">
						<h3>New Students</h3>
						<p class="lead">2017-2018</p>


					</div><!-- /.col-lg-4 -->



				</div>

<form method="post" action="<?php echo base_url().'register/input';?>" enctype="multipart/form-data">
	<div class="col-md-12">
	<div class="form-group">

			<label for="nopendaftar">No Pendaftar</label>
				<input type="text" name="kodependa"  value="<?php echo $_SESSION['autonomor']; ?>">
		</div>
		<div class="form-group">
			<label for="nisn">NISN *</label>
			<div class="input-group">
				<input type="number" class="form-control" name="nisn" placeholder="NISN" required autofocus>
				<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
			</div>
		</div>

		<div class="form-group">
			<label for="nis_smp">NIS SMP *</label>
			<div class="input-group">
				<input type="number" class="form-control" name="nis_smp" placeholder="NIS SMP" required>
				<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
			</div>
		</div>
		<hr>

		<div class="form-group">
			<label for="nama_lengkap">Nama Lengkap *</label>
			<div class="input-group">
				<input type="text" class="form-control" name="nama_lengkap"  placeholder="Nama Lengkap" required>
				<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
			</div>
		</div>

		<div class="form-group">
			<label>Jenis Kelamin *</label>

			<select name="jk" class="form-control">
				<option>Laki-laki</option>
				<option>Perempuan</option>
			</select></div>

			<div class="form-inline form-group">
				<label for="tempat_lahir">Tempat, Tanggal Lahir *</label><br>
				<!-- <div class="input-group"> -->
				<input type="text" class="form-control" name="tempat_lahir"  placeholder="Tempat Lahir" required>
				<input type="date"  class="form-control" id="tanggal_lahir" name="tanggal_lahir"><br>
				<span id="error-tgl"></span>
				<!-- </div> -->
			</div>
			<div class="form-group">
				<label for="alamat_pribadi">Alamat Pribadi *</label>
				<div class="input-group">
					<textarea name="alamat_pribadi" placeholder="Alamat Pribadi" style="width:1080px" required></textarea>
				</div>
			</div>
			<hr>

			<label>Asal Sekolah *</label>
			<div class="form-inline form-group">
				<select id="namasekolah" name="asal_sekolah" class="form-control">
					<option value="-">-</option>

					<span id="isisklh"></span>

				</select>
			<!-- 	<input type="text" name="auto_sekolah">
				OR
<button class="form-control btn btn-primary">Daftar</button>
				 -->
				</div>


				<div  class="form-group">
					<label for="alamat_sekolah">Alamat Sekolah</label>
					<div class="input-group">

						<textarea id="alamatsekolah" style="width:1080px; cursor: not-allowed;" disabled></textarea>

</div>
				</div>
								<div class="form-group">
								<label for="no_kontak">No Kontak</label>
								<div class="input-group">
									<input type="number" class="form-control" name="no_kontak" placeholder="NO Kontak" required>
									<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
								</div>
							</div>
<hr>
				<label>Jurusan *</label>
				<div class="form-group">
					<select name="jurusan" class="form-control">>
						<Option>Administrasi Perkantoran</Option>
						<Option>Akuntansi</Option>
							<Option>Pemasaran</Option>
							<Option>Rekayasa Perangkat Lunak</Option>
							<Option>Teknik Komputer Dan Jaringan</Option>
							</Select></Div>




				<h5><b>Nilai</b></h5>
				<hr>

				<div class="form-group">
					<label for="nilai_bing">Nilai B.Inggris</label>
					<div class="input-group">
						<input type="number" class="form-control" name="nilai_bing" placeholder="Nilai B.Inggris" required>
						<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
					</div>
				</div>

				<div class="form-group">
					<label for="nilai_bindo">Nilai B.Indonesia</label>
					<div class="input-group">
						<input type="number" class="form-control" name="nilai_bindo" placeholder="Nilai B.Indonesia" required>
						<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
					</div>
				</div>

				<div class="form-group">
					<label for="nilai_mtk">Nilai MTK</label>
					<div class="input-group">
						<input type="number" class="form-control" name="nilai_mtk" placeholder="Nilai Mtk" required>
						<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
					</div>
				</div>

				<div class="form-group">
					<label for="nilai_ipa">Nilai IPA</label>
					<div class="input-group">
						<input type="number" class="form-control" name="nilai_ipa" placeholder="Nilai Ipa" required>
						<span class="input-group-addon"><i class="glyphicon glyphicon-ok form-control-feedback"></i></span>
					</div>
				</div>


				<div class="form-group">
					<label>Gambar Hasil UN</label>
					<input type="file" name="hasil_un">
				</div>

				<hr>



<input type="submit" name="daftar" class="btn-group btn-group-justified btn wow tada btn-embossed btn-primary pull-left" value="Daftar">


						</div>

					</form>

</div>
</div></div></div>
