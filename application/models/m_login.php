<?php

/**
 *
 */
class m_login extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function cekuserpass()
    {
        $sql = "SELECT * FROM users WHERE username = ? AND password= ?";
        $query = $this->db->query($sql, array($this->input->post('username'), $this->input->post('password')));

        $data = $query->row_array();
        $jml = $query->num_rows();

        if ($jml > 0) {
            $data = array(
                'username' => $data['username'],
                'isLogin' => true
            );

            $this->session->set_userdata($data);
            redirect('admin');
        } else {
            $this->session->set_flashdata('message', 'username atau password salah!');
            redirect('login');
            echo "salah";
        }
    }
}
