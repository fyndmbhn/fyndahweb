<?php
session_start();
require("config.php");

if(!isset($_SESSION['email']))
{
	header("location:admin-login.php");
}

$error="";
$msg="";
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>FYNDAH SUPER ADMIN</title>
  <!-- plugins:css -->
  <link rel="stylesheet" href="assets/vendors/mdi/css/materialdesignicons.min.css">
  <link rel="stylesheet" href="assets/vendors/flag-icon-css/css/flag-icon.min.css">
  <link rel="stylesheet" href="assets/vendors/css/vendor.bundle.base.css">
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
  <meta property="og:title" content="social media sharing buttons  " />
  <meta property="og:image" content="URL OF IMAGE ONLY" />
  <meta property="og:url" content="onlinecode.org" />
  <meta property="og:description" content="social media sharing buttons  " />
  <style>
  #button_share img {
    width: 36px;
    box-shadow: 0;
    padding: 6px;
    display: inline;
    border: 0;
  }

  </style>
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
        <h2 class="text-dark font-weight-bold mb-2">Welcome SUPER ADMIN !</h2>
        </h2>

      </div>
      <div class="row">
        <div class="col-md-12">
          <div class="d-sm-flex justify-content-between align-items-center transaparent-tab-border {">
            <div class="d-md-block d-none">
              <a href="#" class="text-light p-1"><i class="mdi mdi-view-dashboard"></i></a>
              <a href="#" class="text-light p-1"><i class="mdi mdi-dots-vertical"></i></a>
            </div>
          </div>
          <div class="tab-content tab-transparent-content">
            <div class="tab-pane fade show active" id="business-1" role="tabpanel" aria-labelledby="business-tab">
              <div class="row">
                <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body text-center">
                      <h5 class="mb-2 text-dark font-weight-normal">Total Listings</h5>
                      <h2 class="mb-4 text-dark font-weight-bold">

                        <?php 
                     //   	$id=$_SESSION['user_id'];
					          	$sql="SELECT * FROM `property` ORDER BY `property`.`id` ASC ";
										$query = $con->query($sql);
                						echo "$query->num_rows";?></h2>
                      <div
                        class="dashboard-progress dashboard-progress-4 d-flex align-items-center justify-content-center item-parent">
                        <i class="mdi mdi-cube icon-md absolute-center text-dark"></i>
                      </div>
                      <p class="mt-4 mb-0">Increased since yesterday</p>
                      <h3 class="mb-0 font-weight-bold mt-2 text-dark">0</h3>

                    </div>
                  </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body text-center">
                      <h5 class="mb-2 text-dark font-weight-normal">Property Views</h5>
                      <h2 class="mb-4 text-dark font-weight-bold">
                        <?php 
                        $id=$_SESSION['Su'];
                         	
					          	 $r=mysqli_query($con, "SELECT * FROM property where user_id ='$id'  ");
                $t=mysqli_num_rows($r);
                            
                    if($t <= 0) {
                      echo '<div class="alert alert-danger">0</div>';
                          } else{
                           
                           
                          if($t > 0){
                             $query=mysqli_query($con,"SELECT * FROM `postviewcount` ORDER BY id DESC LIMIT 1   ");
											 
												while($row=mysqli_fetch_row($query)) {
                          echo $row['0'];                           
                        }
                          }
                        }                       
                        ?>
                      </h2>
                      <div
                        class="dashboard-progress dashboard-progress-4 d-flex align-items-center justify-content-center item-parent">

                      </div>
                      <p class="mt-4 mb-0">Increased since yesterday</p>
                      <h3 class="mb-0 font-weight-bold mt-2 text-dark">0</h3>
                    </div>
                  </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body text-center">
                      <h5 class="mb-2 text-dark font-weight-normal">Boosted Property</h5>
                      <h2 class="mb-4 text-dark font-weight-bold">
                        <?php 
                        	//$id=$_SESSION['user_id'];
					          	$sql="SELECT * FROM property  WHERE isFeatured='Yes' ";
										$query = $con->query($sql);
                						echo "$query->num_rows";?>
                      </h2>
                      <div
                        class="dashboard-progress dashboard-progress-4 d-flex align-items-center justify-content-center item-parent">
                        <i class="mdi mdi-cube icon-md absolute-center text-dark"></i>
                      </div>
                      <p class="mt-4 mb-0">None</p>
                      <h3 class="mb-0 font-weight-bold mt-2 text-dark">0</h3>
                    </div>
                  </div>
                </div>

                <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body text-center">
                      <h5 class="mb-2 text-dark font-weight-normal">Phone No Clicks</h5>
                      <h2 class="mb-4 text-dark font-weight-bold">


                        <?php 
                        $id=$_SESSION['user_id'];
                         	
					          	 $r=mysqli_query($con, "SELECT * FROM property where user_id ='$id'  ");
                $t=mysqli_num_rows($r);
                            
                    if($t <= 0) {
                        echo '<div class="alert alert-danger">0</div>';
                        } else{
                           
                           
                          if($t > 0){
                             $query=mysqli_query($con,"SELECT * FROM `phone` ORDER BY id DESC LIMIT 1   ");
											 
												while($row=mysqli_fetch_row($query)) {
                          echo $row['0'];                           
                        }
                          }
                        }                       
                        ?>
                      </h2>
                      <div
                        class="dashboard-progress dashboard-progress-4 d-flex align-items-center justify-content-center item-parent">

                      </div>
                      <p class="mt-4 mb-0">Increased since yesterday</p>
                      <h3 class="mb-0 font-weight-bold mt-2 text-dark">0</h3>
                    </div>
                  </div>
                </div>
                <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">
                  <div class="card">
                    <div class="card-body text-center">
                      <h5 class="mb-2 text-dark font-weight-normal">Total Messages</h5>
                      <h2 class="mb-4 text-dark font-weight-bold">0</h2>
                      <div
                        class="dashboard-progress dashboard-progress-4 d-flex align-items-center justify-content-center item-parent">
                        <i class="mdi mdi-cube icon-md absolute-center text-dark"></i>
                      </div>
                      <p class="mt-4 mb-0">None Avaliable</p>
                      <h3 class="mb-0 font-weight-bold mt-2 text-dark">0</h3>
                    </div>
                  </div>
                </div>


                <div class="col-xl-3 col-lg-6 col-sm-6 grid-margin stretch-card">

                  <div class="card">
                    <div class="card-body text-center">
                      <h5 class="mb-2 text-dark font-weight-normal">Whats App Clicks</h5>
                      <h2 class="mb-4 text-dark font-weight-bold">
                        <?php 
                        $id=$_SESSION['user_id'];
                         	
					          	 $r=mysqli_query($con, "SELECT * FROM property where user_id ='$id'  ");
                $t=mysqli_num_rows($r);
                            
                    if($t <= 0) {
                      
                      echo '<div class="alert alert-danger">0</div>';
                        } else{
                           
                           
                          if($t > 0){
                             $query=mysqli_query($con,"SELECT * FROM `whatsapp` ORDER BY id DESC LIMIT 1   ");
											 
												while($row=mysqli_fetch_row($query)) {
                          echo $row['0'];                           
                        }
                          }
                        }                       
                        ?>
                      </h2>
                      <div
                        class="dashboard-progress dashboard-progress-4 d-flex align-items-center justify-content-center item-parent">

                      </div>
                      <p class="mt-4 mb-0">Increased since yesterday</p>
                      <h3 class="mb-0 font-weight-bold mt-2 text-dark">0</h3>
                    </div>
                  </div>
                </div>

              </div>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
      <!-- partial:partials/_footer.html -->

      <!-- Footer -->
      <?php include("footer.php");?>
      <!-- /Footer -->
