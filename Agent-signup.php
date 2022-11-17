<!--	Header  start-->
<?php 
ob_start();
 include('include/headers.php');
 include('include/config.php');
?>
<!--	Header   start-->
<!-- Sub banner start -->
<div class="sub-banner">
  <div class="overlay">
    <div class="container">
      <div class="breadcrumb-area">
        <h1>Agent Signup Form</h1>
        <ul class="breadcrumbs">
          <li><a href="index.html">Home</a></li>
          <li class="active">Agent Signup</li>
        </ul>
      </div>
    </div>
  </div>
</div>
<!-- Sub Banner end -->

<!-- Submit Property start -->
<div class="content-area-7 submit-property advanced-search">
  <div class="container">
    <div class="row">
      <div class="col-md-12">
        <div class="notification-box">
          <h3>Don't Have an Account?</h3>
          <p>Fill the form to get started!</p>
        </div>
      </div>
      <div class="col-md-12">
        <div class="submit-address">





          <?php

        $firstname = "";
        $lastname = "";
        $address = "";
        $phone_number = "";
        $role = "";
        $email = "";
        $password = "";


//echo uniqid();
if(isset($_POST["pay"])){
   $firstname = htmlspecialchars($_POST["firstname"]);
   $lastname = htmlspecialchars( $_POST['lastname']);
   $address =  htmlspecialchars($_POST['address']);
   $email = htmlspecialchars($_POST["email"]);
   $phone_number = htmlspecialchars($_POST["phone"]);
   $amount = htmlspecialchars($_POST["amount"]);
   $role =     htmlspecialchars($_POST['role']);
   $password = htmlspecialchars($_POST['password']);
   $_SESSION['firstname'] = $firstname;
                $_SESSION['lastname'] = $lastname;
                $_SESSION['address'] = $address;
                $_SESSION['phone'] = $phone_number;
                $_SESSION['role'] = $role;
                $_SESSION['email'] = $email;
                $_SESSION['password'] = $password;
                $_SESSION['cname'] = $firstname. " ". $lastname; 
                $_SESSION['cphone'] = $phone_number;
                $_SESSION['cemail'] = $email;


                      //check empty input
                if(empty($firstname)) {
                    $_SESSION['error_firstname'] = "first name is required";
                }

                if(empty($lastname)) {
                    $_SESSION['error_lastname'] = "last name is required";
                }

                if(empty($address)) {
                    $_SESSION['error_address'] = "address required";
                }

                if(empty($phone_number)) {
                    $_SESSION['error_phone'] = "phone required";
                }

                if(empty($email)) {
                    $_SESSION['error_email'] = "email required";
                }

                if(empty($password)) {
                    $_SESSION['error_password'] = "password required";
                }

                $r=mysqli_query($con, "SELECT * FROM sub_admins where email='$email'");
                $t=mysqli_num_rows($r);
                    if($t >= 1)
                    {
                    $_SESSION['err']="user already exists!";
                    }                                

                if(!empty($firstname && $lastname && $address && $phone_number && $email && $password && $t==0)){
                    ?>
          <script>
          window.location = "registration_script.php";
          </script>
          <?php

                }
//Integrate Rave payment
$endpoint = "https://api.flutterwave.com/v3/payments";

//Required Data
$postdata = array(
    "tx_ref" => uniqid().uniqid(),
    "currency" => "NGN",
    "amount" => $amount,
    "payment_options" => 'card,banktransfer,ussd',
    "customer" =>array(
        "name" => $firstname,
        "email" => $email,
        "phone_number" => $phone_number
    ),
    "customizations" =>array(
        'title' => 'Fyndah Real Estate Platform',
            'description' => 'Payment for activating account'
    ),

    "meta" =>array(
        'price' => $amount
    ),
    "redirect_url" => "http://127.0.0.1:8000/process.php"
);

//Init cURL handler
$ch = curl_init();

//Turn of SSL checking
curl_setopt($ch, CURLOPT_SSL_VERIFYPEER, 0);

//Set the endpoint
curl_setopt($ch, CURLOPT_URL, $endpoint);

//Turn on the cURL post method
curl_setopt($ch, CURLOPT_POST, 1);

//Encode the post field
curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($postdata));

//Make it reurn data
curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

//Set the waiting timeout
curl_setopt($ch, CURLOPT_CONNECTTIMEOUT, 200);
curl_setopt($ch, CURLOPT_TIMEOUT, 200);

//Set the headers from endpoint
curl_setopt($ch, CURLOPT_HTTPHEADER, array(
   "Authorization: Bearer FLWSECK_TEST-54b1f7a085bf73822e29ca55b190461a-X",
   "Content-Type: Application/json",
   "Cache-Control: no-cahe"
));

//Execute the cURL session
$response = curl_exec($ch);


$result = json_decode($response);
if ($result->status == 'success') {
  $link = $result->data->link;
  header('Location: '.$link);
}
var_dump($result);
//var_dump($result);
//Close the cURL session
curl_close($ch);
}

?>










          <form method="post" name="frmregistration" action="" onSubmit="return validateform()">
            <div class=" main-title-2">
              <h1>Contact Details</h1>
            </div>
            <div class="row">
              <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="form-group">
                  <span class="text-error"><?php if(isset($_SESSION['error_firstname'])){

                                                echo $_SESSION['error_firstname'];
                                                unset($_SESSION['error_firstname']);

                                            }  ?></span>

                  <input type="text" name="firstname" class="form-control" id="inputname2" placeholder="First Name"
                    required>
                  <label for="inputname2" class="form-label">First Name</label>

                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-12">
                <span class="text-error"><?php if(isset($_SESSION['error_lastname'])){

                                                echo $_SESSION['error_lastname'];
                                                unset($_SESSION['error_lastname']);

                                            }  ?></span>
                <div class="form-group">

                  <input type="text" name="lastname" class="form-control" id="inputname2" placeholder="Last Name"
                    required>
                  <label for="inputname2" class="form-label">Last Name</label>

                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-12">
                <span class="text-error"><?php if(isset($_SESSION['error_address'])){

                                                echo $_SESSION['error_address'];
                                                unset($_SESSION['error_address']);

                                            }  ?></span>
                <div class="form-group">
                  <input type="text" name="address" class="form-control" id="inputname2" placeholder="Address" required>
                  <label for="inputname2" class="form-label">Address</label>

                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-12">
                <span class="text-error"><?php if(isset($_SESSION['error_phone'])){

                                                echo $_SESSION['error_phone'];
                                                unset($_SESSION['error_phone']);

                                            }  ?></span>
                <div class="form-group">
                  <input type="text" name="phone" class="form-control" id="phone" placeholder="Phone" required>
                  <label for="inputname2" class="form-label">Phone Number</label>

                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="form-group">

                  <input name="amount" class="form-control" id="amount" placeholder="Amount" value="500"
                    readonly="readonly">
                  <label for="inputname2" class="form-label">Amount</label>

                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="form-group">
                  <input type="text" name="unlimited" class="form-control" id="inputname2" placeholder="unlimited"
                    readonly="readonly">
                  <label for="inputname2" class="form-label">Property Upload Limit</label>

                </div>
              </div>
              <div class="col-lg-4 col-md-6 col-sm-12">
                <span class="text-error"><?php if(isset($_SESSION['error_email'])){

                                                echo $_SESSION['error_email'];
                                                unset($_SESSION['error_email']);

                                            }  ?></span>
                <div class="form-group">
                  <input type="email" name="email" class="form-control" id="inputEmail2" placeholder="Email" required>
                  <label for="inputname2" class="form-label">Email</label>

                </div>
              </div>


              <div class="col-lg-4 col-md-6 col-sm-12">
                <span class="text-error"><?php if(isset($_SESSION['error_password'])){

                                                echo $_SESSION['error_password'];
                                                unset($_SESSION['error_password']);

                                            }  ?></span>
                <div class="form-group">
                  <input type="text" name="password" class="form-control" id="password" placeholder="Password" required>
                  <label for="inputname2" class="form-label">Password</label>

                </div>
              </div>

              <div class="col-lg-4 col-md-6 col-sm-12">
                <div class="form-group">
                  <input type="hidden" name="role" class="form-control" value="User" id="inputname2">
                </div>
              </div>

            </div>
            <div class="row">
              <div class="col-lg-12 col-md-6 col-sm-6 col-xs-12" style="text-align: center;">
                <p style="color: red; font-weight: bolder; "> You will be redirected to Flutterwave to complete payment
                  for
                  Acccount Activation and property listings</p>
                <p style="color: rgb(2,1,41);">Already have account? <a href="agent-login.php">Login</a></p>
                <button class="btn-2 btn-defaults" id='pay' type="submit" name="pay">
                  <span>Submit</span> <i class="arrow"></i>
                </button>
              </div>

            </div>
          </form>
        </div>
      </div>
    </div>
  </div>
</div>
<!-- Submit Property end -->

<!--	Footer   start-->
<?php include("include/footer.php");?>
<!--	Footer   start-->
