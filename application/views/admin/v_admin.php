<?php 
// session_destroy();

?><!-- 
<div><a href="<?php base_url(); ?>?/admin?export=print" title="Export to PDF"><button>Export</button></a></div> --> 
<div class="tab-pane fade in active" id="home">


  <h1 class="page-header">Dashboard</h1>
  <h2 class="sub-header">Grafik</h2>
  <ul class="nav nav-tabs" role="tablist">
    <li class="active"><a href="#OPTR1" role="tab" data-toggle="tab">Semua</a></li>
    <li ><a href="#OPTR2" role="tab" data-toggle="tab">Lulus</a></li>
    <li><a href="#OPTR3" role="tab" data-toggle="tab">Tidak Lulus</a></li>
  </ul>

  <div class="tab-content">

    <div class="tab-pane fade active in" id="OPTR1">

      <?php $this->m_admin->grafiks(); ?>


<!-- 
<?php // base_url() .'grafik_JL';?>
<?php // base_url() .'grafik_JP';?>
<?php  // base_url() .'panggilALL';?> -->


</div>

<div class="tab-pane fade active" id="OPTR2">
  <?php $this->m_admin->grafik_L('lulus'); ?>
  <!-- <?php  //base_url() .'grafik_L/Lulus';?> -->
</div>

<div class="tab-pane fade active" id="OPTR3">

  <?php $this->m_admin->grafik_L('tidak lulus'); ?>

</div>
</div>

<h2 class="sub-header">Table SMP</h2>
<?php  $this->m_admin->tblsmp();?>


<h2 class="sub-header">Table Pendaftar</h2>
<?php 

$this->m_admin->tblsiswa();

?>


</div>

<div class="tab-pane fade" id="profile">

  <h1 class="page-header">Table Rank</h1>
  
  <?php $this->m_admin->peringkat(); ?>


</div>

<?php 

// echo base_url();
// 
// echo "<pre>";
// print_r($_SESSION);
// 
?>