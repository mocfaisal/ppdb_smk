<?php


/**
*
*/
class Register extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_register');
        $this->load->model('m_result');
    }
    public function index()
    {
        $data['register'] = $this->m_register->getautonomor();
        $data['title']="SMKN 1 Cianjur | Register";
        $data['view']= 'register';
        $this->load->view('header', $data);
        $this->load->view('v_register');
        $this->load->view('footer');
    }

    public function input()
    {
        if ($this->input->post('daftar')) {
            $this->m_register->insert();

            $data['title']="SMKN 1 Cianjur | Result";
            $data['view']= 'register';
            $data['siswa'] = $this->m_result->getdata();

            $this->load->view('header', $data);
            $this->load->view('v_cari');
            $this->load->view('v_result', $data);
            $this->load->view('footer');
        }

        // redirect('?');
    }

    public function smp()
    {
        $this->m_register->smp();
    }

    // function foto($name){
// 	$this->m_register->upload('hasil_un');
// 	$file_un = upload('hasil_un');
// }
}
