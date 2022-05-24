<?php

/**
*
*/
class Login extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_login');
    }
    public function index()
    {
        $this->load->view('v_login');
    }

    public function ceklogin()
    {
        $this->m_login->cekuserpass();
    }

    public function out()
    {
        $this->session->session_destroy();
        redirect('login');
    }
}
