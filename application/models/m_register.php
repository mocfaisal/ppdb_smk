<?php 
/**
* 
*/
class m_register extends CI_Model{
	
	function __construct(){
		parent::__construct();

	}

	function upload($name){

	if($_FILES[$name]['type'] != "image/jpeg" && $_FILES[$name]['type'] !="image/png"){
		echo "Format file tidak boleh";
	}else{
		if($_FILES[$name]['size'] > "2000000"){
			echo "Ukuran tidak boleh lebih dari 2 MB";
		}
		else{
			if(is_uploaded_file($_FILES[$name]['tmp_name'])){
	//nama file
				$namefile = $_FILES[$name]['name'];
	//lokasi pindah file
				$lokasi = "assets/img/uploads/".$namefile;

				$pindahkan = move_uploaded_file($_FILES[$name]['tmp_name'], $lokasi);
	//cek kondisi jika behasil diupload/dipindahkan
				if($pindahkan){
					return "/assets/img/uploads/".$namefile;
				}
				else{
					return false;
				}
			}

		}
	}
}
	function insert(){
		
		$data = array(
			'no_pendaftaran'	=> $this->input->post('kodependa'),
			'nisn'				=> $this->input->post('nisn'),
			'nis_smp'			=> $this->input->post('nis_smp'),
			'nama_lengkap'		=> $this->input->post('nama_lengkap'),
			'jk'				=> $this->input->post('jk'),
			'tempat_lahir'		=> $this->input->post('tempat_lahir'),
			'tanggal_lahir'		=> $this->input->post('tanggal_lahir'),
			'id_smp'			=> $this->input->post('asal_sekolah'),
			// 'id_smp'			=> '1',
			'alamat_pribadi'	=> $this->input->post('alamat_pribadi'),
			'nilai_bing'		=> $this->input->post('nilai_bing'),
			'nilai_bindo'		=> $this->input->post('nilai_bindo'),
			'nilai_mtk'			=> $this->input->post('nilai_mtk'),
			'nilai_ipa'			=> $this->input->post('nilai_ipa'),
			'img_hasilun'		=> $this->upload('hasil_un'),
			'pilih_jurusan'		=> $this->input->post('jurusan'),
			'no_kontak'			=> $this->input->post('no_kontak')

			);

		$this->db->insert('calon_siswa', $data);
	}


	function getautonomor(){

		$this->db->select("no_pendaftaran");
		$this->db->order_by("no_pendaftaran", "desc");
		$this->db->limit(1);
		$this->db->from('calon_siswa');

		$query = $this->db->get();
		$rslt = $query->result_array();

		$total_rec = $query->num_rows();
		if ($total_rec == 0) {
			$nomor = 1;
		} else {
			$nomor = intval(substr($rslt[0]['no_pendaftaran'],strlen('PPDB17'),4)) + 1;

		}

		$hasil="PPDB170".$nomor;
// $kode = $rslt;

// $noUrut = (int) substr($kode, 6, 4);
// $noUrut++;

// $char = "PPDB17";
// $newID = $char.sprintf("%04s",$noUrut);

		$_SESSION['autonomor'] = $hasil;

		return $_SESSION['autonomor'];
	}



function smp(){



if(isset($_GET['id']))
	$where = " Where id_smp = ".$_GET['id'];
else
	$where = '';

$query = $this->db->query("SELECT * FROM datasmp ".$where);

$data = $query->result_array();

$arr = $data;
	// echo "<option value='".$data['id']."'>".$data['namasekolah']."</option>";


echo json_encode($arr);

}

}
?>