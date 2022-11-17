<?php session_start(); 
include("./config.php");
?>

<?php
 if (!isset($_SESSION['loggin'])) {
     ?>
<script type="text/javascript">
alert("You Must Login First");
window.location.href = '../agent-login.php';
</script>
<?php
 }?>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>FYNDAH ADMIN</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
  <link rel="stylesheet" href="assets/vendors/css/vendo.bundle.base.css">
  <!-- endinject -->
  <!-- Plugin css for this page -->
  <link rel="stylesheet" href="assets/vendors/font-awesome/css/font-awesome.min.css" />
  <link rel="stylesheet" href="assets/vendors/bootstrap-datepicker/bootstrap-datepicker.min.css">
  <!-- End plugin css for this page -->
  <!-- inject:css -->
  <!-- endinject -->
  <!-- Layout styles -->
  <link rel="stylesheet" href="assets/css/style.css">
  <!-- End layout styles -->
  <link rel="shortcut icon" href="../img/logos/logo.png" />
</head>
<!-- Header -->
<?php include("header.php");?>
<!-- /Header -->

<div class="container-fluid page-body-wrapper">

  <!-- navsidebarmenu -->
  <?php include("navsidemenu.php");?>
  <!-- /navsidebarmenu -->
  <div class="main-panel">
    <div class="content-wrapper">
      <div class="d-xl-flex justify-content-between align-items-start">
        <h2 class="text-dark font-weight-bold mb-2">Welcome <?php echo $_SESSION['name'];?> </h2>
      </div>



      <hr class='solid'>
      <div class="content-wrapper">

        <!-- Page Wrapper -->
        <div class="page-wrapper">
          <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
              <div class="row">
                <div class="col">
                  <h3 class="page-title">Property View</h3>
                  <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                    <li class="breadcrumb-item active">Property View</li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- /Page Header -->
            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-12">
                        <div class="card">
                          <div class="card-header">
                            <h2 class="card-title">Message Us</h2>
                          </div>
                          <form method="post" name="frmregistration" action="./sendemail.php"
                            enctype="multipart/form-data">
                            <div class="card-body">
                              <div class="row">
                                <div class="col-xl-12">
                                  <h5 class="card-title">Message Us </h5>

                                  <?php 
										          	if(isset($_GET['msg']))	
										           	echo $_GET['msg'];	
										             ?>
                                  <div class="form-group row">
                                    <label class="col-lg-2 col-form-label">Title</label>
                                    <div class="col-lg-9">
                                      <input type="text" class="form-control" name="title" required="">
                                    </div>
                                  </div>
                                  <div class="form-group row">
                                    <label class="col-lg-2 col-form-label">Content</label>
                                    <div class="col-lg-9">
                                      <textarea class="tinymce form-control" name="content" rows="10"
                                        cols="30"></textarea>
                                    </div>
                                  </div>
                                </div>
                              </div>
                              <div class="text-left">
                                <input type="submit" class="btn btn-primary" value="Submit" name="pay"
                                  style="margin-left:200px;">
                              </div>
                          </form>
                        </div>

                      </div>
                    </div>
                    <!-- end card -->
                  </div><!-- end col-->
                </div>
                <!-- end row-->

              </div>
            </div>
            <!-- /Main Wrapper -->

          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->

          <!-- Footer -->
          <?php include("footer.php");?>
          <!-- /Footer -->
