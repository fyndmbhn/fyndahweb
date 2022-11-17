<?php
session_start();
require("config.php");

if(!isset($_SESSION['email']))
{
	header("location:admin-login.php");
}

$error="";
$msg="";

extract($_REQUEST);

if(isset($_POST['add'])) {


$firstname=$_POST['firstname'];
$lastname=$_POST['lastname'];
$address=$_POST['address'];
$phone=$_POST['phone'];
$email=$_POST['email'];
$password=$_POST['password'];
$payment_status=$_POST['payment_status'];
$status=$_POST['status'];
$role=$_POST['role'];

$sql="INSERT INTO `sub_admins` (`firstname`, `lastname`, `address`, `phone`, `email`, `password`, `payment_status`, `status`, `role`)
VALUES('$firstname','$lastname','$address','$phone','$email','$password','$payment_status','$status','$role')";
 if (mysqli_query($con, $sql)) {
    $msg='<div class="alert alert-success alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> Agent Data Added successfully.
  </div>';  
                   } else {
                           echo "Error: " . $sql . "<br>" . mysqli_error($con);
                      exit();
                       }
  }
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
  <style>
  .required-field::after {
    content: "*";
    color: red;
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

  <!-- partial -->
  <div class="main-panel">
    <div class="content-wrapper">
      <div class="d-xl-flex justify-content-between align-items-start">
        <h2 class="text-dark font-weight-bold mb-2">Welcome SUPER ADMIN! </h2>
      </div>



      <hr class='solid'>
      <!-- Page Wrapper -->
      <div class="page-wrapper">
        <div class="content container-fluid">

          <!-- Page Header -->
          <div class="page-header">
            <div class="row">
              <div class="col">
                <h3 class="page-title"> ADD NEW AGENT</h3>
                <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                  <li class="breadcrumb-item active"> Add Agent</li>
                </ul>
              </div>
            </div>
          </div>
          <!-- /Page Header -->

          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Add Agent's Details</h4>
                </div>
                <form method="post" enctype="multipart/form-data">
                  <div class="card-body">
                    <h5 class="card-title required-field"></h5>
                    <?php echo $error; ?>
                    <?php echo $msg; ?>

                    <div class="row">
                      <div class="col-xl-12">
                        <div class="form-group row">
                          <label class="col-lg-2 col-form-label  required-field">Agents First Name</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="firstname" required
                              placeholder="Enter Agents First Name">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-2 col-form-label  required-field">Agents Last Name</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="lastname" required
                              placeholder="Enter Agents Last Name">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-2 col-form-label required-field"> Address</label>
                          <div class="col-lg-9">
                            <textarea class="tinymce form-control" name="address" rows="10" cols="30"></textarea>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-2 col-form-label"> Phone Number</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="phone"
                              placeholder="Enter Agents Phone Number">
                          </div>
                        </div>

                      </div>
                      <div class="col-xl-6">
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label required-field">Agents Role</label>
                          <div class="col-lg-9">
                            <select class="form-control " required name="role">
                              <option value="User"> User</option>
                            </select>
                          </div>
                        </div>

                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Email</label>
                          <div class="col-lg-9">
                            <input type="email" class="form-control" name="email" placeholder="Enter Agents Email">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Agents Password</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="password" placeholder="Enter Agents Password">
                          </div>
                        </div>

                      </div>
                      <div class="col-xl-6">
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Payment Status</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="payment_status"
                              placeholder="Enter PAID OR PENDING in capital letters ">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Account Status</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="status"
                              placeholder="Enter ACTIVE OR INACTIVE in capital letters">
                          </div>
                        </div>

                      </div>
                    </div>
                    <hr>




                    <input type="submit" value="Submit" class="btn btn-primary" name="add" style="margin-left:200px;">

                  </div>
                </form>
              </div>
            </div>
          </div>

        </div>
      </div>
      <!-- /Main Wrapper -->




    </div>
  </div>
  <!-- content-wrapper ends -->
  <!-- partial:partials/_footer.html -->

  <!-- Footer -->
  <?php include("footer.php");?>
  <!-- /Footer -->
