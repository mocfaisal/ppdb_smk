<?php

defined('BASEPATH') or exit('No direct script access allowed');

/**
*
*/
class Home extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_register');
    }

    public function index()
    {
        // echo "Hallo";

        $data['title']="SMKN 1 Cianjur";
        $data['view']= 'data';
        $this->load->view('header', $data);
        $this->load->view('v_home');
        $this->load->view('footer');
    }
}
