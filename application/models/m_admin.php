      <?php 

      /**
      * 
      */
      class m_admin extends CI_Model{
      	
      	function __construct(){
      		parent::__construct();
      	}


        function remove_empty($array) {
          return array_values(array_filter($array));
        }
        
        function remove_zero($namasesi){

          $jml=count($this->session->userdata($namasesi));    
          for ($i=0; $i < $jml; $i++) { 

            if($this->session->userdata[$namasesi][$i] == 0){
              unset($this->session->userdata[$namasesi][$i]);
            }

          }

          // array_values(array_filter($namasesi));

        }

        function test(){
         echo "string";
         // session_destroy();
         $sesi = array(0,98,123,787,0,34,0,1,2,50,254,20,0,0);
      // json_encode($sesi);
      // $this->remove_empty($sesi);
      // array_values($sesi);
         $this->session->set_userdata('sesi',$sesi);
         $this->remove_zero('sesi');
         
         echo " jumlah ".count($this->session->userdata('sesi'));
         echo "<pre>";
         echo print_r($_SESSION);
       }


       function grafiks(){


        $this->db->from('v_jk');
        $query=$this->db->get();
        $row=$query->row_array();
        $jml=$row['JL']+$row['JP'];
              // $jml->$rows['JL']+$row['JP'];
             //  $this->session->set_userdata('output1' , $row[0]);
             //  $this->session->set_userdata('output2' , $row[1]);

             // $this->session->set_userdata('jml',$jml);

      // $ou1-> $row->'JL';
      // $ou2-> $row->'JP';
        $data2 = array(
          'output1' =>$row['JL'],
          'output2' =>$row['JP'],
          'jml'=>$jml
          );
        $this->session->set_userdata($data2);

        ?>
        <div class="col-md-4">
          <center><h2>Jumlah Pendaftar</h2></center>
          <div id="chart_rencana"></div>
        </div>

        <?php

        $query1=$this->db->query("SELECT * FROM v_jkjr_2 WHERE jk ='Laki-laki'");

      // $this->db->get();
        foreach ($query1->result_array() as $row) {



      // $L[] = array();
      // $JS[] = array();
          json_encode($L[]=$row['JKK']);
          $_SESSION['JL'] = $L;

          json_encode($JS[]=$row['jurusan']);
              // $_SESSION['jurusanL'] = $JS;
          $_SESSION['jurusanL'] = array_values(array_unique($JS,SORT_REGULAR));
        }         
       //        $rows = $query;
       // $this->session->set_userdata($rows->result_array);
        ?>

        <div class="col-md-4">
          <center><h2>Laki-laki</h2></center>
          <div id='grafik1'></div>
        </div>

        <?php

        $query2=$this->db->query("SELECT * FROM v_jkjr_2 WHERE jk ='Perempuan'");
      // $query=$this->db->get();
        foreach ($query2->result_array() as $row) {

          json_encode($P[]=$row['JKK']);
          $_SESSION['JP'] = $P;

          json_encode($JS[]=$row['jurusan']);
              // $_SESSION['jurusanP'] = $JS;
          $_SESSION['jurusanP'] = array_values(array_unique($JS,SORT_REGULAR));
        }
        ?>

        <div class="col-md-4">
          <center><h2>Perempuan</h2></center><div id="grafik2"></div>
        </div>

        <?php

        ?>
        <br>
        <div>
          Jumlah 
          <span class="badge"> <?php echo $_SESSION['jml']; ?></span> Siswa
        </div>
        <?php

      }


      function grafik_L($kondisi){

        if($kondisi == "lulus"){
         $query= $this->db->query("SELECT count(jk)as jk FROM v_hasil_L Where keterangan = 'lulus'");
              // $query->db->get();

         $data=$query->row_array();
         $arr = $data['jk'];
         $_SESSION['jml_L'] = $arr;
              // $this->session->set_userdata('jml_L',count($arr));

         $Q1=$this->db->query("SELECT * FROM v_jkjr Where keterangan = 'lulus'");
      // $Q1=$this->db->get();

         foreach ($Q1->result_array() as $row) {

      // json_encode($s[] = $row);
      // $_SESSION['output'] = $s;
                  // json_encode($P[]=$row['JP']);
                  // $_SESSION['JP_L'] = remove_empty($P);
                  // json_encode($L[]=$row['JL']);
                  // $_SESSION['JL_L'] = remove_empty($L);
                  // json_encode($JS[]=$row['jurusan']);
                  // $_SESSION['jurusan_L'] = array_unique($JS, SORT_REGULAR);
           json_encode($P[]=$row['JP']);
                  // $_SESSION['JP_L'] = array_values($P);
           json_encode($L[]=$row['JL']);
                  // $_SESSION['JL_L'] = array_values($L);
           json_encode($JS[]=$row['jurusan']);
                  // $_SESSION['jurusan_L'] = $JS;
                  // $_SESSION['jurusan_L'] = array_values(array_unique($JS, SORT_REGULAR));

           $setlulus = array(
            'JL_L'=>$this->remove_empty($L),
            'JP_L'=>$this->remove_empty($P),
            'jurusan_L'=>array_values(array_unique($JS, SORT_REGULAR))
            );

           $this->session->set_userdata($setlulus);

         }

         $Q2=$this->db->query("SELECT sum(JL) as 'JL', sum(JP) as 'JP' FROM v_jml_jkjr where keterangan='lulus'");
              // $Q2=$this->db->get();
         $data2=$Q2->row_array();

         $_SESSION['jmlL_L'] = $data2['JL'];
         $_SESSION['jmlP_L'] = $data2['JP'];

         ?>


         <div class="col-md-4">
          <center><h2>Jumlah Pendaftar</h2></center><div id="chart_rencana_L"></div>
        </div>
        <div class="col-md-4">
          <center><h2>Laki-laki</h2></center>
          <div id='grafikL_L'></div>
        </div>
        <div class="col-md-4">
          <center><h2>Perempuan</h2></center><div id="grafikP_L"></div>
        </div>

        <br>
        <div>
          Jumlah
          <span class="badge"> <?php echo $_SESSION['jml_L']; ?></span> Siswa
        </div>

        <?php
      }
      else if ($kondisi == "tidak lulus"){

        $query = $this->db->query("SELECT count(jk)as jk FROM v_hasil_L Where keterangan = 'Tidak Lulus'");
          // $query=$this->db->get();

        $data=$query->row_array();
        $arr = $data['jk'];
        $_SESSION['jml_TL'] = $arr;


        $Q1=$this->db->query("SELECT * FROM v_jkjr Where keterangan = 'Tidak Lulus'");
      // $Q1=$this->db->get();

        foreach ($Q1->result_array() as $row){

              // json_encode($P[]=$row['JP']);
              // $_SESSION['JP_TL'] = remove_empty($P);
              // json_encode($L[]=$row['JL']);
              // $_SESSION['JL_TL'] = remove_empty($L);
              // json_encode($JS[]=$row['jurusan']);
              // $_SESSION['jurusan_TL'] = array_unique($JS,SORT_REGULAR);

          json_encode($P[]=$row['JP']);
          json_encode($L[]=$row['JL']);


          
          $_SESSION['JP_TL'] = $this->remove_empty($P);
          
          $_SESSION['JL_TL'] = $this->remove_empty($L);
          json_encode($JS[]=$row['jurusan']);
              // $_SESSION['jurusan_TL'] = $JS;
          $_SESSION['jurusan_TL'] = array_values(array_unique($JS,SORT_REGULAR));

      // $setTlulus = array(
      // 'JP_TL'=>$P,
      // 'JL_TL'=>$L,
      // 'jurusan_TL'=>$JS
      //   );
      //             $this->session->set_userdata($setTlulus);

          // $this->remove_empty('JL_TL');
          // $this->remove_empty('JP_TL');

        }

        $Q2=$this->db->query("SELECT sum(JL) as JL, sum(JP) as JP FROM v_jml_jkjr where keterangan='Tidak Lulus'");
      // $Q2=$this->db->get();
        $data2=$Q2->row_array();

        $_SESSION['jmlL_TL'] = $data2['JL'];
        $_SESSION['jmlP_TL'] = $data2['JP'];

        ?>

        <div class="col-md-4">
          <center><h2>Jumlah Pendaftar</h2></center><div id="chart_rencana_TL"></div>
        </div>
        <div class="col-md-4">
          <center><h2>Laki-laki</h2></center>
          <div id='grafikL_TL'></div>
        </div>
        <div class="col-md-4">
          <center><h2>Perempuan</h2></center><div id="grafikP_TL"></div>
        </div>

        <br>
        <div>
          Jumlah
          <span class="badge"> <?php echo $_SESSION['jml_TL']; ?></span> Siswa
        </div>

        <?php

      }
    }


    function tblsmp(){

     ?>

     <div class="table-responsive">
      <table class="table" id="data-siswa-smp">
        <thead>
          <tr>
            <th>No.</th>
            <th>Nama sekolah</th>
            <th>Laki-laki</th>
            <th>Perempuan</th>
            <th>Jumlah</th>
            <th>Keterangan</th>
          </tr>
        </thead>

        <tbody>

          <?php 
          $i=1;
          $query=$this->db->query("SELECT * FROM V_hasil_smp");
                // $data=$query->result_array();  
          foreach($query->result_array() as $data){
            echo "<tr>";
            echo "<td>".$i."</td>";
            echo "<td>".$data['namasekolah']."</td>";
            echo "<td>".$data['JL']."</td>";
            echo "<td>".$data['JP']."</td>";
            echo "<td>".$data['jml']."</td>";
            echo "<td>".$data['keterangan']."</td>";

            echo "</tr>";
            $i++;
          }

          ?>
        </tbody>

      </table>           
    </div> 


    <?php

  }


  function tblsiswa(){
    ?>

    <div class="table-responsive">
      <table class="table" id="data-siswa">
        <thead>
          <tr>
            <th>No.</th>
            <th>No Pendaftaran</th>
            <th>Nama Lengkap</th>
            <th>Jenis Kelamin</th>
            <th>Tempat lahir</th> 
            <th>Tanggal lahir</th>
            <th>SMP</th>
            <th>Alamat</th>
            <th>No Telp</th>
            <th>Jurusan</th>

          </tr>
        </thead>

        <tbody>

          <?php 
          $i=1;
          $query=$this->db->query("SELECT * FROM v_siswa");
          foreach($query->result_array() as $data){

            echo "<tr>";
            echo "<td>".$i."</td>";
            echo "<td>".$data['no_pendaftaran']."</td>";
          // echo "<td>".$data[1]."</td>";
          // echo "<td>".$data[2]."</td>";
            echo "<td>".$data['nama_lengkap']."</td>";
            echo "<td>".$data['jk']."</td>";
            echo "<td>".$data['tempat_lahir']."</td>";
            echo "<td>".$data['lahir']."</td>";
            echo "<td>".$data['namasekolah']."</td>";
            echo "<td>".$data['alamat_pribadi']."</td>";
            echo "<td>".$data['no_kontak']."</td>";
            echo "<td>".$data['pilih_jurusan']."</td>";

          // echo "<td>".$data[11]."</td>";
          // echo "<td>".$data[12]."</td>";
          // echo "<td>".$data[13]."</td>";
          // echo "<td>".$data[14]."</td>";
          // echo "<td>".$data[15]."</td>";
            echo "</tr>";
            $i++;
          }


          ?>
        </tbody>

      </table>           
    </div> 
    <?php
  }

  function export($link){

      // Fungsi header dengan mengirimkan raw data excel
    header("Content-type: application/vnd-ms-excel");

      // Mendefinisikan nama file ekspor "hasil-export.xls"
    header("Content-Disposition: attachment; filename=tutorialweb-export.xls");

      // Tambahkan table
    include $link;

  }

  function peringkat(){

   ?>

   <div class="table-responsive">
    <table class="table" id="data-peringkat">
      <thead>
        <tr>
          <th>No.</th>
          <th>Nilai</th>
        </tr>
      </thead>

      <tbody>

        <?php 
        $i=1;
        $query=$this->db->query("SELECT rata2 as peringkat FROM v_hasil_L where keterangan='lulus' GROUP BY rata2 ORDER BY rata2 desc");
        foreach($query->result_array() as $data){
          echo "<tr>";
          echo "<td>".$i."</td>";
          echo "<td>".$data['peringkat']."</td>";

          echo "</tr>";
          $i++;
        }

        ?>
      </tbody>

    </table>           
  </div> 


  <?php
  }


  function logout(){
        // if(!$_SERVER['HTTP_REFERER']){
        //   // redirect('?');
        //   echo "Dilarang";
        // }
     $this->session->set_userdata('username','');
   $this->session->set_userdata('isLogin',false);
    if(defined('BASEPATH')){
     echo "Dilarang";
     redirect('?/login');
   }
   // unset($this->session->userdata['username']);
   // unset($this->session->userdata['isLogin']);
  
      // unset($this->session->userdata[$namasesi][$i]);
   // echo "<pre>";
   // print_r($_SESSION);
  }


      //end of file
  }

  ?>