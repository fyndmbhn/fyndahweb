<?php
include('include/config.php'); 
//extract($_REQUEST);


if(isset($_POST['submit'])){



$email = $_POST['email'];
$pass = $_POST['pass'];
$admin = $_POST['admin'];
$confirmpass = $_POST['confirmpass'];


if($pass != $confirmpass){
    $err = "Password do not Match";
}

$query = "select * from sub_admins where email = '$email'";
$result = mysqli_query($con, $query);

while($row = mysqli_fetch_array($result)){
  $getEmail = $row['email'];
}

if($email != $getEmail){
    $err="Opps error this email does not exist!";
}  

$newpass = md5($pass);

if($admin =="User"){
$email = mysqli_escape_string($con, $email);
$pass = mysqli_escape_string($con, $pass);
$newpass = md5($pass);

 $que = "update sub_admins set password ='$newpass' where email='$email'";	
if(mysqli_query($con, $que)){
    $success = "Your Password Reset Successful !";
}	

else{
      $err="Opps Something went wrong! Please try again";	
   }	
	
  }

 }

?>

<?php session_start(); ?>

<!--	Footer   start-->
<?php include("include/headers.php");?>
<!--	Footer   start-->
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
          <h3>Reset Password </h3>
          <form method="post" name="submit" id="submit">
            <?php 
		  if(isset($err))
		  {
			echo '<div class="form-group">
            <h6 class="bg-danger" style="padding:10px;border-radius:5px">'.$err.'</h6></div>';	  
		  } 
          else if(isset($success)){
            echo '<div class="form-group">
            <h6 class="bg-success" style="padding:10px;border-radius:5px">'.$success.'</h6></div>';	
          }
           
		  ?>
            <div class="form-group clearfix">

              <input name="email" required type="email" aria-describedby="emailHelp" class="form-control"
                placeholder="Your Email*">
            </div>
            <div class="form-group clearfix">
              <input name="pass" required type="password" class="form-control" placeholder="Your Password">

            </div>
            <div class="form-group clearfix">
              <input name="confirmpass" required type="password" class="form-control"
                placeholder="Confirm Your Password">

            </div>
            <div class="form-group clearfix">
              <input type="hidden" id="admin" name="admin" value="User" class="form-control" readonly="readonly">
              <label class="form-label"></label>
            </div>
            <div class="form-group mb-0 clearfix">
              <button class="btn btn-success   w-100" type="submit" name="submit">Reset Password</button>
            </div>
            <div class="clearfix"></div>
          </form>
          <p>Are you done? <a href="Agent-login.php" class="thembo"> Login here</a></p>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Login section end -->
<hr>
<!--	Footer   start-->
<?php include("include/footer.php");?>
<!--	Footer   start-->
