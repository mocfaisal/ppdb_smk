<?php


/**
 *
 */
class Email extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
    }

    public function index()
    {
        $config = array(
            'protocol' => 'smtp',
            'smtp_host' => 'ssl://smtp.googlemail.com',
            'smtp_port' => 465,
            'smtp_user' => 'xxx',//your email
            'smtp_pass' => 'xxx',//your pwd
            'mailtype'  => 'html',
            'charset'   => 'iso-8859-1'
        );
        $this->load->library('email', $config);
        // Set to, from, message, etc.
        $this->email->set_newline("\r\n");
        $this->email->from($config['smtp_user'], 'name');
        $this->email->to('xxx');
        $this->email->subject('Test email from CI and Gmail');
        $this->email->message('This is a test.');

        $result = $this->email->send();
        return $result;
    }



    // end of file
}
