<?php

/**
*
*/
class m_result extends CI_Model
{
    public function __construct()
    {
        parent::__construct();
    }

    public function getsiswa()
    {
        $cari = $this->input->POST('nopendaf');
        $this->db->select('*');

        $this->db->where('no_pendaftaran', $cari);
        $query = $this->db->get('v_hasil2');
        return $query->result_array();
        // $_SESSION['A'] = $query;
    }

    public function getdata()
    {
        $cari = $this->input->POST('kodependa');
        $this->db->select('*');

        $this->db->where('no_pendaftaran', $cari);
        $query = $this->db->get('v_hasil2');
        return $query->result_array();
        // $_SESSION['A'] = $query;
    }
}
