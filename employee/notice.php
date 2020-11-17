<?php include 'includes/session.php'; ?>
<?php 
  include '../timezone.php'; 
  $today = date('Y-m-d');
  $year = date('Y');
  if(isset($_GET['year'])){
    $year = $_GET['year'];
  }
?>
<?php include 'includes/header.php'; ?>
<body class="hold-transition skin-yellow sidebar-mini"> 
<div class="wrapper">

  	<?php include 'includes/navbar.php'; ?>
  	<?php include 'includes/menubar.php'; ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <h1>
        Notice
      </h1>
   
    </section>

    <!-- Main content -->
    <section class="content">
      <?php
        $sql = "SELECT * FROM notice order by created_at desc";
        $query = $conn->query($sql);
      
       
      ?>
      <!-- row -->
      <div class="row">
        <div class="col-md-12">
          <!-- The time line -->
          <div id="notice_box">
            <ul class="timeline">
              <?php $old_time = null?>
              <?php while($row = $query->fetch_assoc()){
                $created_at = $row['created_at'];
                $date = date('d M Y',strtotime($created_at));
                $time = date('h:s',strtotime($created_at));
              ?>
              <?php if($old_time != $date):?>
              <li class="time-label">
                    <span class="bg-red">
                      <?= $date?>
                    </span>
              </li>
              <?php $old_time = $date ?>
              <?php endif;?>
              <!-- /.timeline-label -->
              <!-- timeline item -->
              <li>
                <i class="fa fa-user bg-blue"></i>

                <div class="timeline-item">
                  <span class="time"><i class="fa fa-clock-o"></i> <?= $time ?></span>

                  <h3 class="timeline-header"><?= $row['title'] ?></h3>

                  <div class="timeline-body"> 
                    <?= $row['description'] ?>
                  </div>
                  <!-- <div class="timeline-footer">
                    <a class="btn btn-primary btn-xs">Read more</a>

                  </div> -->
                </div>
              </li>
            <?php
            }?>

              
            </ul>
          </div>
          
          <!-- /.box -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->

    </section>
    <!-- /.content -->
  </div>

</div>
<!-- ./wrapper -->

<?php include 'includes/scripts.php'; ?>
<script>
$(function(){
 
  $('#select_year').change(function(){
    window.location.href = 'home.php?year='+$(this).val();
  });
  $('#notice_box').slimScroll({
    height: 'calc(100vh - 130px)'
  });
});
</script>
</body>
</html>
