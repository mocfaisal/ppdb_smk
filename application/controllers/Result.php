<?php 
/**
* 
*/
class Result extends CI_Controller{
	
	function __construct(){
		parent::__construct();
		$this->load->model('m_result');
	}

	function index(){
		$data['title']="SMKN 1 Cianjur | Result";
		$data['view']= 'result';
		
		$this->load->view('header',$data);
		
		$this->load->view('v_cari',$data);
		
		$this->load->view('footer');
	}

	function cari(){

		if($this->input->post('proses')){
			$data['title']="SMKN 1 Cianjur | Result";
			$data['view']= 'result';
			$data['siswa'] = $this->m_result->getsiswa();

			$this->load->view('header',$data);
			$this->load->view('v_cari');
			$this->load->view('v_result',$data);
			$this->load->view('footer');
			
		}
	}

}
?>