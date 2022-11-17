 <?php 
	 session_start();
	include("config.php");
	$error="";
	if(isset($_POST['login'])){
		$user=$_REQUEST['user'];
		$pass=$_REQUEST['pass'];
		$pass= sha1($pass);
		
		if(!empty($user) && !empty($pass)){
    if ($user == 'user') {
      $query = "SELECT auser, apass FROM sub_admin WHERE auser='$user' AND apass='$pass'";
      $result = mysqli_query($con, $query) or die(mysqli_error());
      $num_row = mysqli_num_rows($result);
      $row = mysqli_fetch_array($result);
      if ($num_row == 1) {
        $_SESSION['auser'] = $user;
        header("Location: ../sub_admin/dashboard.php");
      }
      else {
        $error = '* Invalid User Name and Password';
      }
    }
  }else {
    $error = "* Please Fill all the Fileds!";
  }
    }
?>
 <!--	Header  start-->
 <?php include("include/headers.php");?>
 <!--	Header   start-->
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
           <h3>SignIn Form For Agents </h3>


           <form method="post">
             <div class="form-group clearfix">
               <input class="form-control" name="user" type="text" placeholder="User Name">
             </div>
             <div class="form-group clearfix">
               <input class="form-control" name="pass" type="password" placeholder="Password" aria-label="Password">
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
               <button name="login" type="submit" class="button-md button-theme btn-3 w-100">Login</button>
             </div>
             <div class="extra-login clearfix">
               <span>Or Login With</span>
             </div>
             <div class="clearfix"></div>
             <div class="form-group mb-0 clearfix">
               <button name="login" type="submit" class="button-md button-theme btn-3 w-50">Are you a marketer login
                 here</button>
             </div>
           </form>
           <p>Don't have an account? <a href="signup.html" class="thembo"> Register here</a></p>
         </div>
       </div>
     </div>
   </div>
 </div>
 <!-- Login section end -->

 <!--	Footer   start-->
 <?php include("include/footer.php");?>
 <!--	Footer   start-->
