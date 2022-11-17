<?php
session_start();
require("config.php");

if(!isset($_SESSION['cemail']))
{
	header("location:../Agent-login.php");
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
  <!-- partial -->
  <div class="main-panel">
    <div class="content-wrapper">
      <div class="d-xl-flex justify-content-between align-items-start">
        <h2 class="text-dark font-weight-bold mb-2">Welcome <?php echo $_SESSION['name'];?> !</h2>
        </h2>

      </div>
      <!-- Page Wrapper -->
      <div class="page-wrapper">
        <div class="content container-fluid">
          <hr class="solid">
          <!-- Page Header -->
          <div class="page-header">
            <div class="row">
              <div class="col">
                <h3 class="page-title"></h3>
                <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                  <li class="breadcrumb-item active">Profile</li>
                </ul>
              </div>
            </div>
          </div>
          <!-- /Page Header -->

          <div class="row">
            <?php
						
						$id=$_SESSION['cemail'];
						$sql="select * from sub_admins where email='$id'";
						$result=mysqli_query($con,$sql);
						while($row=mysqli_fetch_array($result))
						{
						?>
            <div class="col-md-12">
              <div class="profile-header">
                <div class="row align-items-center">
                  <div class="col-auto profile-image">

                  </div>
                  <div class="col ml-md-n2 profile-user-info">
                    <h4 class="user-name mb-2 text-uppercase"> </h4>
                    <h6 class="text-muted"> </h6>
                    <div class="user-Location">
                    </div>
                    <div class="about-text"></div>
                  </div>

                </div>
              </div>
              <div class="profile-menu">
                <ul class="nav nav-tabs nav-tabs-solid">
                  <li class="nav-item">
                    <a class="nav-link active" data-toggle="tab" href="#per_details_tab">
                      <i class="fa fa-id-badge" aria-hidden="true"></i>
                      <img class="rounded-circle" alt="User Image" src="assets/img/profiles/avatar-01.png">

                    </a>
                  </li>
                  <!--	<li class="nav-item">
										<a class="nav-link" data-toggle="tab" href="#password_tab">Password</a>
									</li>  -->
                </ul>
              </div>
              <div class="tab-content profile-tab-cont">

                <!-- Personal Details Tab -->
                <div class="tab-pane fade show active" id="per_details_tab">

                  <!-- Personal Details -->
                  <div class="row">
                    <div class="col-lg-9">
                      <div class="card">
                        <div class="card-body">
                          <div class="row">
                            <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Name</p>
                            <p class="col-sm-9"><?php echo $row['1']; ?></p>
                          </div>
                          <div class="row">
                            <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Mobile</p>
                            <p class="col-sm-9"><?php echo $row['4']; ?></p>
                          </div>
                          <div class="row">
                            <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Email ID</p>
                            <p class="col-sm-9"><a href="#"><?php echo $row['6']; ?></a></p>
                          </div>
                          <div class="row">
                            <p class="col-sm-3 text-muted text-sm-right mb-0 mb-sm-3">Date</p>
                            <p class="col-sm-9"><?php echo $row['8']; ?></p>
                          </div>

                        </div>
                      </div>
                    </div>

                    <div class="col-lg-3">

                      <!-- Account Status -->
                      <div class="card">
                        <div class="card-body">
                          <h5 class="card-title d-flex justify-content-between">
                            <span>Account Status</span>

                          </h5>
                          <button class="btn btn-success" type="button"><i
                              class="fe fe-check-verified"></i><?php echo $row['10']; ?></button>
                        </div>
                      </div>
                      <!-- /Account Status -->


                    </div>
                  </div>
                  <!-- /Personal Details -->

                </div>
                <!-- /Personal Details Tab -->

                <!-- Change Password Tab -->
                <!--<div id="password_tab" class="tab-pane fade">
								
									<div class="card">
										<div class="card-body">
											<h5 class="card-title">Change Password</h5>
											<div class="row">
												<div class="col-md-10 col-lg-6">
													<form method="post">
														<div class="form-group">
															<label>Old Password</label>
															<input type="password" class="form-control">
														</div>
														<div class="form-group">
															<label>New Password</label>
															<input type="password" class="form-control">
														</div>
														<div class="form-group">
															<label>Confirm Password</label>
															<input type="password" class="form-control">
														</div>
														<button class="btn btn-primary" type="submit">Save Changes</button>
													</form>
												</div>
											</div>
										</div>
									</div>
								</div>  -->
                <!-- /Change Password Tab -->

              </div>
            </div>
          </div>
          <?php } ?>
        </div>
      </div>
      <!-- /Page Wrapper -->

      <!-- /Main Wrapper -->

      <!-- Footer -->
      <?php include("footer.php");?>
      <!-- /Footer -->

      </body>

</html>
