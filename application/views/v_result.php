<div class="container">
	

	<div class="row" id="info">
<div class="panel panel-success">
<div class="panel panel-heading">
<h3 class="panel-title">Info
</h3>
</div>
<div class="panel panel-body">
		<div class="form-group">
			<div class="input-grup">
				<table>
					<?php
                    foreach ($siswa as $data) {
                        echo "<tr>
						<td>No Pendaftaran</td>
						<td> &nbsp;: <b> ".$data['no_pendaftaran']."</b></td>
					</tr>

					<tr>
						<td>Nama  </td>
						<td> &nbsp;: ".$data['nama_lengkap']."</td>
					</tr>

					<tr>
						<td>Jenis Kelamin  </td>
						<td> &nbsp;: ".$data['jk']."</td>
					</tr>

					<tr>
						<td>SMP  </td>
						<td> &nbsp;: ".$data['namasekolah']."</td>
					</tr>

					<tr>
						<td>Jurusan  </td>
						<td> &nbsp;: ".$data['pilih_jurusan']."</td>
					</tr>";
                        if ($view=='result') {
                            echo "<tr>
						<td>Keterangan  </td>
						<td> &nbsp;: <b>".$data['keterangan']."</b></td>
					</tr>";
                        }
                    }
// print_r($_SESSION);
                ?>

			</table>
		</div>
	</div>
</div>
</div>
</div>
</div>