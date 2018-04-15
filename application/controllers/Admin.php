<?php 
defined('BASEPATH') OR exit('No direct script access allowed');

/**
* 
*/
class Admin extends CI_Controller{
	
	function __construct()	{
		parent::__construct();
		$this->load->model('m_admin');
		if($this->session->userdata('isLogin')!= true)
			redirect('?');
	}

function index(){

$this->load->view('admin/header');
$this->load->view('admin/v_admin');
$this->load->view('admin/footer');


}

function test(){
	// $this->m_admin->test();
}

function grafika(){
// $this->m_admin->grafiks();
// $this->load->view('admin/footer');

}


function grafik(){
// $this->m_admin->test();
// echo defined('BASEPATH');

// $this->m_admin->grafiks();
// $this->m_admin->grafik_L('lulus');
// $this->m_admin->grafiks('tidak lulus');
// // $this->load->view('admin/footer');
echo "<pre>";
print_r($_SESSION);
}


function grafik_JL(){
$this->m_admin->grafik_JL();
}


function grafik_JP(){
$this->m_admin->grafik_JP();
}


function grafik_L($kondisi){
$this->m_admin->grafik_L('Tidak Lulus');
$this->load->view('admin/footer');
}


function panggilALL(){
$this->m_admin->testa();
echo "<pre>";
print_r($_SESSION);
}


function tblsmp(){

}


function tblsiswa(){

}

function export(){
base_url()."?/admin?export=pdf";
}

function logout(){
$this->m_admin->logout();
}


//end of file
}


 ?>