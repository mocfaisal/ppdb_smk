<!-- Bootstrap core JavaScript
  ================================================== -->
  <!-- Placed at the end of the document so the pages load faster -->
  <script src="<?php echo base_url(); ?>assets/js/jquery.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/bootstrap.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/docs.min.js"></script>
  <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
  <script src="<?php echo base_url(); ?>assets/js/ie10-viewport-bug-workaround.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/raphael.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/morris.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/jquery.dataTables.js"></script>
  <script src="<?php echo base_url(); ?>assets/js/dataTables.bootstrap.js"></script>
  <script type="text/javascript">
    $('#data-siswa').DataTable(); 
    $('#data-siswa-smp').DataTable();
    $('#data-peringkat').DataTable();
  </script>

  <script type="text/javascript">
   Morris.Donut({
    element: 'chart_rencana',
    colors: ['#31C0BE', '#D58665'],
    data: [{
      label: "Laki-laki",
      value: <?php echo $this->session->userdata('output1'); ?>
    }, {
      label: "Perempuan",
      value: <?php echo $this->session->userdata('output2'); ?>
    }],

    resize: true,
  }).on('click', function (i, row) {
    if (i == 0) {
      window.location.href = '#grafikL';
    } else if (i == 1) {
      window.location.href = '#grafikP';
    } else {
            //kalau pakai modal bootstrap
            $('#myModal').modal({show: true});
          }
        });


      </script>
      <script type="text/javascript">
      //laki-laki
      Morris.Donut({
        element: 'grafik1',
        colors: ['#FF80C0', '#0000FF', '#ED1C24', '#22B14C', 'NAVY'],
        data: [{
         label: <?php echo json_encode($_SESSION['jurusanL'][0]); ?>,
         value: <?php echo json_encode($_SESSION['JL'][0]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusanL'][1]); ?>,
         value: <?php echo json_encode($_SESSION['JL'][1]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusanL'][2]); ?>,
         value: <?php echo json_encode($_SESSION['JL'][2]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusanL'][3]); ?>,
         value: <?php echo json_encode($_SESSION['JL'][3]); ?>
       },
       {
        label: <?php echo json_encode($_SESSION['jurusanL'][4]); ?>,
        value: <?php echo json_encode($_SESSION['JL'][4]); ?>
      }],

      resize: true
    });
//Perempuan

Morris.Donut({
  element: 'grafik2',
  colors: ['#FF80C0', '#0000FF', '#ED1C24', '#22B14C', 'NAVY'],
  data: [{
   label: <?php echo json_encode($_SESSION['jurusanP'][0]); ?>,
   value: <?php echo json_encode($_SESSION['JP'][0]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusanP'][1]); ?>,
   value: <?php echo json_encode($_SESSION['JP'][1]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusanP'][2]); ?>,
   value: <?php echo json_encode($_SESSION['JP'][2]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusanP'][3]); ?>,
   value: <?php echo json_encode($_SESSION['JP'][3]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusanP'][4]); ?>,
   value: <?php echo json_encode($_SESSION['JP'][4]); ?>
 }
 ],

 resize: true
});

</script>


<script type="text/javascript">

// <!-- Lulus -->

Morris.Donut({
  element: 'chart_rencana_L',
  colors: ['#31C0BE', '#D58665'],
  data: [{
    label: "Laki-laki",
    value: <?php echo $_SESSION['jmlL_L']; ?>
  }, {
    label: "Perempuan",
    value: <?php echo $_SESSION['jmlP_L']; ?>
  }],

  resize: true,
});

      //laki-laki
      Morris.Donut({
        element: 'grafikL_L',
        colors: ['#FF80C0', '#0000FF', '#ED1C24', '#22B14C', 'NAVY'],
        data: [{
         label: <?php echo json_encode($_SESSION['jurusan_L'][0]); ?>,
         value: <?php echo json_encode($_SESSION['JL_L'][0]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusan_L'][1]); ?>,
         value: <?php echo json_encode($_SESSION['JL_L'][1]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusan_L'][2]); ?>,
         value: <?php echo json_encode($_SESSION['JL_L'][2]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusan_L'][3]); ?>,
         value: <?php echo json_encode($_SESSION['JL_L'][3]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusan_L'][4]); ?>,
         value: <?php echo json_encode($_SESSION['JL_L'][4]); ?>
       }],

       resize: true
     });
//Perempuan

Morris.Donut({
  element: 'grafikP_L',
  colors: ['#FF80C0', '#0000FF', '#ED1C24', '#22B14C', 'NAVY'],
  data: [{
   label: <?php echo json_encode($_SESSION['jurusan_L'][0]); ?>,
   value: <?php echo json_encode($_SESSION['JP_L'][0]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusan_L'][1]); ?>,
   value: <?php echo json_encode($_SESSION['JP_L'][1]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusan_L'][2]); ?>,
   value: <?php echo json_encode($_SESSION['JP_L'][2]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusan_L'][3]); ?>,
   value: <?php echo json_encode($_SESSION['JP_L'][3]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusan_L'][4]); ?>,
   value: <?php echo json_encode($_SESSION['JP_L'][4]); ?>
 }
 ],

 resize: true
});

</script>

<!-- tidak Lulus -->
<script type="text/javascript">

  Morris.Donut({
    element: 'chart_rencana_TL',
    colors: ['#31C0BE', '#D58665'],
    data: [{
      label: "Laki-laki",
      value: <?php echo $_SESSION['jmlL_TL']; ?>
    }, {
      label: "Perempuan",
      value: <?php echo $_SESSION['jmlP_TL']; ?>
    }],

    resize: true,
  });

      //laki-laki
      Morris.Donut({
        element: 'grafikL_TL',
        colors: ['#FF80C0', '#0000FF', '#ED1C24', '#22B14C', 'NAVY'],
        data: [{
         label: <?php echo json_encode($_SESSION['jurusan_TL'][0]); ?>,
         value: <?php echo json_encode($_SESSION['JL_TL'][0]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusan_TL'][1]); ?>,
         value: <?php echo json_encode($_SESSION['JL_TL'][1]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusan_TL'][2]); ?>,
         value: <?php echo json_encode($_SESSION['JL_TL'][2]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusan_TL'][3]); ?>,
         value: <?php echo json_encode($_SESSION['JL_TL'][3]); ?>
       },
       {
         label: <?php echo json_encode($_SESSION['jurusan_TL'][4]); ?>,
         value: <?php echo json_encode($_SESSION['JL_TL'][4]); ?>
       }],

       resize: true
     });
//Perempuan

Morris.Donut({
  element: 'grafikP_TL',
  colors: ['#FF80C0', '#0000FF', '#ED1C24', '#22B14C', 'NAVY'],
  data: [{
   label: <?php echo json_encode($_SESSION['jurusan_TL'][0]); ?>,
   value: <?php echo json_encode($_SESSION['JP_TL'][0]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusan_TL'][1]); ?>,
   value: <?php echo json_encode($_SESSION['JP_TL'][1]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusan_TL'][2]); ?>,
   value: <?php echo json_encode($_SESSION['JP_TL'][2]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusan_TL'][3]); ?>,
   value: <?php echo json_encode($_SESSION['JP_TL'][3]); ?>
 },
 {
   label: <?php echo json_encode($_SESSION['jurusan_TL'][4]); ?>,
   value: <?php echo json_encode($_SESSION['JP_TL'][4]); ?>
 }
 ],

 resize: true
});



</script>
<script type="text/javascript">

  document.getElementById('OPTR2').className="tab-pane fade";
  document.getElementById('OPTR3').className="tab-pane fade";
</script>
<!-- Mirrored from getbootstrap.com/examples/dashboard/ by HTTrack Website Copier/3.x [XR&CO'2013], Sun, 31 Aug 2014 14:51:06 GMT -->
</html>