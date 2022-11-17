<?php 
session_start();
include("config.php");
$error="";
$msg="";
if(isset($_REQUEST['login'])) {
	$email=$_REQUEST['email'];
	$pass=$_REQUEST['pass'];
	$pass= sha1($pass);
	
	if(!empty($email) && !empty($pass))
	{
		$sql = "SELECT * FROM marketer where aemail='$email' && apass='$pass'";
		$result=mysqli_query($con, $sql);
		$row=mysqli_fetch_array($result);
		   if($row){
			   
				$_SESSION['uid']=$row['uid'];
				$_SESSION['aemail']=$email;
				header("location:../marketing/dashboard.php");
				
		   }
		   else{
			   $error = "<p class='alert alert-warning'>Email or Password  doesnot match!</p> ";
		   }
	}else{
		$error = "<p class='alert alert-warning'>Please Fill all the fields</p>";
	}
}
?>

<!--	Header   start-->
<?php include("include/headers.php");?>
<!--	Header  start-->
<hr>
<!-- Login section start -->
<div class="login-section">
  <div class="container">
    <div class="row">
      <div class="col-lg-12">
        <div class="form-section">
          <div class="logo-2">
            <a href="index.php">
              <img src="img/logos/logo.png" alt="logo">
            </a>
          </div>
          <h3>SignIn Form For Marketers </h3>

          <?php echo $error; ?><?php echo $msg; ?>
          <form method="post">
            <div class="form-group clearfix">
              <input type="email" name="email" class="form-control" placeholder="Your Email*">
            </div>
            <div class="form-group clearfix">
              <input type="password" name="pass" class="form-control" placeholder="Your Password">
            </div>
            <div class="checkbox form-group clearfix">
              <div class="form-check float-start">
                <input class="form-check-input" type="checkbox" id="rememberme">
                <label class="form-check-label" for="rememberme">
                  Remember me
                </label>
              </div>
              <a href="forgot-password.html" class="link-light float-end forgot-password">Forgot your password?</a>
            </div>
            <div class="form-group mb-0 clearfix">
              <button class="btn btn-success   w-100" name="login" value="Login" type="submit">Login</button>
            </div>
            <div class="extra-login clearfix">
              <span>Or Login With</span>
            </div>
            <div class="clearfix"></div>
            <div class="form-group mb-0 clearfix">
              <button name="login" type="submit" class="button-md button-theme btn-3 w-50"> <a href="agent-Login.php"
                  class="button-theme"> Are you an Agent login
                  here</a></button>
            </div>
          </form>
          <p>Don't have an account? <a href="marketer-signup.php" class="thembo"> Register here</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
<hr>
<!-- Login section end -->
<!--	Footer   start-->
<?php include("include/footer.php");?>
<!--	Footer   start-->
