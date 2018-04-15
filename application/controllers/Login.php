<?php 
/**
* 
*/
class Login extends CI_Controller{
	
	function __construct(){
		parent::__construct();
		$this->load->model('m_login');
	}
function index(){
	$this->load->view('v_login');
}

function ceklogin(){
$this->m_login->cekuserpass();
}

function out(){
$this->session->session_destroy();
redirect('login');
}



}


 ?>