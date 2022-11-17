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
          <h3>Login Form For Agents </h3>

          <?php
             
             
        

        if(isset($_POST['submit'])){
                //valide form field
                        
                $email = $_POST['email'];
                $password = $_POST['password'];
                $admin = $_POST['admin'];
                
               

                $password = md5($password);
                
                $_SESSION['email'] = $email;
                $_SESSION['password'] = $password;

    
                //check empty input
                if(empty($email)) {
                    $_SESSION['error_email'] = "email required";
                }

                if(empty($password)) {
                    $_SESSION['error_password'] = "password required";
                }
                if($admin == "User"){
                 $email = mysqli_escape_string($con, $email);
                $password = mysqli_escape_string($con, $password);         

                $r=mysqli_query($con, "SELECT * FROM sub_admins where email ='$email' AND password ='$password'");
                $t=mysqli_num_rows($r);
                            
                    if($t <= 0) {
                        echo '<div class="alert alert-danger">Invalid login credentials</div>';
                    }
                    else {
                        
                        //Get account status
                        while($row=mysqli_fetch_array($r)){
                            $status = $row['status'];
                            
                            $payment_status = $row['payment_status'];
                            $_SESSION['cname'] = $row['firstname']." ". $row['lastname'];
                            $_SESSION['cphone'] = $row['phone'];
                             $_SESSION['name'] = $row['firstname'];
                            $_SESSION['cemail'] = $row['email'];
                            $_SESSION['role'] = 'User';
                            $_SESSION['user_id'] = $row['id'];
                            $_SESSION['loggin'] = true;
                        }
                        
                        //check if account is active
                        if($t > 0) {
                            
                            //in active redirect to payment page
                             echo "<script>window.location='./sub_admin/dashboard.php'</script>";
                           
                        }
                        else {
                            //active redirect to user dashboard
                            //   echo "<script>window.location='./admin/dashboard.php'</script>";
                             echo "<script>window.location='successfulReg.php'</script>";
                        }
                    }
                }

            }
         ?>

          <?php
                                if(isset($_SESSION['err'])){

                                    echo '<div class="alert alert-danger">'.$_SESSION['err'].'</div>';
                                    unset($_SESSION['err']);
                                }

                            
                            ?>

          <form method="post" name="submit" id="submit">
            <div class="form-group clearfix">
              <span class="text-error"><?php if(isset($_SESSION['error_email'])){

                                                echo $_SESSION['error_email'];
                                                unset($_SESSION['error_email']);

                                            }  ?></span>
              <input type="email" name="email" class="form-control" placeholder="Your Email*">
            </div>
            <div class="form-group clearfix">
              <input type="password" name="password" class="form-control" placeholder="Your Password">
              <span class="text-error"><?php if(isset($_SESSION['error_password'])){

                                                echo $_SESSION['error_password'];
                                                unset($_SESSION['error_password']);

                                            }  ?></span>
            </div>
            <div class="form-group clearfix">
              <input type="hidden" id="admin" name="admin" value="User" class="form-control" readonly="readonly">
              <label class="form-label"></label>
            </div>
            <div class="checkbox form-group clearfix">
              <div class="form-check float-start">
                <input class="form-check-input" type="checkbox" id="rememberme">
                <label class="form-check-label" for="rememberme">
                  Remember me
                </label>
              </div>
              <a href="forgot-password.php" class="link-light float-end forgot-password">Forgot your password?</a>
            </div>
            <div class="form-group mb-0 clearfix">
              <button class="btn btn-success   w-100" type="submit" name="submit">Login</button>
            </div>
            <div class="extra-login clearfix">
              <span>OR</span>
            </div>
            <div class="clearfix"></div>

          </form>
          <p>Don't have an account? <a href="pricing.php" class="thembo"> Register here</a></p>
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
