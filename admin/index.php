<?php
session_start();
include('config.php'); 
//extract($_REQUEST);


if(isset($_POST['submit'])){

$email = $_POST['email'];
$pass = $_POST['password'];
$admin = $_POST['admin'];

if($admin == "SuperAdmin"){
 
$email = mysqli_escape_string($con, $email);
$pass = mysqli_escape_string($con, $pass);  
$que=mysqli_query($con,"select * from admin where email='$email' && password='$pass'");	
$row=mysqli_num_rows($que);
if($row){
$_SESSION['email']=$email;
$_SESSION['role']= 'SuperAdmin';
 $_SESSION['cemail'] = $row['email'];
  $_SESSION['name'] = $row['name'];
$_SESSION['loggin'] = true;

while($row = mysqli_fetch_array($que)){
  $_SESSION['admin_ids'] = $row['id'];
  
}
     header('location:dashboard.php');
}	

else{
      $err="Pls Enter Valid Email or Password";	
   }	
	
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
</head>

<body>
  <div class="container-scroller">
    <div class="container-fluid page-body-wrapper full-page-wrapper">
      <div class="content-wrapper d-flex align-items-center auth">
        <div class="row flex-grow">
          <div class="col-lg-4 mx-auto">
            <div class="auth-form-light text-left p-5">
              <div class="brand-logo">
                <img src="../img/logos/logo.png">
              </div>
              <h4>Welcome! Back SUper Admin</h4>
              <h6 class="font-weight-light">Sign in to continue.</h6>
              <form class="pt-3" method="post" enctype="multipart/form-data">
                <?php 
		  if(isset($err))
		  {
			echo '<div class="form-group">
            <h6 class="bg-danger" style="padding:10px;border-radius:5px">'.$err.'</h6></div>';	  
		  }
		  ?>
                <div class="form-group">
                  <input class="form-control form-control-lg" id="exampleInputEmail1" name="email" required type="email"
                    aria-describedby="emailHelp" placeholder="Enter email">
                </div>
                <div class="form-group">
                  <input type="password" class="form-control form-control-lg" id="exampleInputPassword1" name="password"
                    required type="password" placeholder="Password">
                </div>

                <center>
                  <div class="form-group">

                    <select name="admin" required>
                      <option>SuperAdmin</option>
                    </select>
                  </div>
                </center>

                <div class="my-2 d-flex justify-content-between align-items-center">
                  <div class="form-check">
                    <label class="form-check-label text-muted">
                      <input type="checkbox" class="form-check-input"> Keep me signed in </label>
                  </div>
                  <a href="#" class="auth-link text-black">Forgot password?</a>
                </div>
                <center>
                  <div class="mt-3">
                    <button class="btn btn-block btn-primary btn-lg font-weight-medium auth-form-btn" value="Login"
                      name="submit" type="submit">SIGN IN</button>
                  </div>
                  <hr>
                </center>
              </form>
            </div>
          </div>
        </div>
      </div>
      <!-- content-wrapper ends -->
    </div>
    <!-- page-body-wrapper ends -->
  </div>
  <!-- container-scroller -->
  <!-- Footer -->
  <?php include("footer.php");?>
  <!-- /Footer -->
