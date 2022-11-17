<?php

session_start();
require("config.php");

if(!isset($_SESSION['cemail']))
{
	header("location:../Agent-login.php");
}

extract($_REQUEST);

//// code insert
//// add code

$id=$_REQUEST['id'];

$query=mysqli_query($con,"select * from property where id='$id'");
$res=mysqli_fetch_array($query);

$id=$res['id'];
$error="";
$msg="";
if(isset($_POST['add']))
{
	$id=$_REQUEST['id'];

$isFeatured=$_POST['isFeatured'];

$user_id = $_SESSION['user_id']; 
$role = $_SESSION['role'];
	$sql = "UPDATE property SET  isFeatured='{$isFeatured}' WHERE id = {$id}";
	
	$result=mysqli_query($con,$sql);
	if($result == true)
	{
		$msg='<div class="alert alert-success alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> Property Boost Was successful.
  </div>';
    echo "<script> location.href='property-view.php?$msg'; </script>";
//header("Location:property-view.php?$msg");
}
else {
$error ='<div class="alert alert-success alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Success!</strong> Property Boost Was Unsuccessful Please Try Again!.
  </div>';
    echo "<script> location.href='property-view.php?$error'; </script>";
//header("Location:property-view.php?$msg");
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
  <title>FYNDAH ADMIN</title>
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
  <link rel="shortcut icon" href="assets/images/favicon.png" />
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
  <!-- partial:partials/_sidebar.html -->
  <nav class="sidebar sidebar-offcanvas" id="sidebar">
    <ul class="nav">
      <li class="nav-item nav-category">Main</li>
      <li class="nav-item">
        <a class="nav-link" href="dashboard.php">
          <span class="icon-bg"><i class="mdi mdi-cube menu-icon"></i></span>
          <span class="menu-title">Dashboard</span>
        </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-bs-toggle="collapse" href="#ui-basic" aria-expanded="false" aria-controls="ui-basic">
          <span class="icon-bg"><i class="mdi mdi-crosshairs-gps menu-icon"></i></span>
          <span class="menu-title">Property</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="ui-basic">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item"> <a class="nav-link" href="property-add.php">Add Property</a></li>
            <li class="nav-item"> <a class="nav-link" href="property-view.php">View Property</a></li>
            <li class="nav-item"> <a class="nav-link" href="property-boost-view.php">View Boosted Property</a></li>
          </ul>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" data-bs-toggle="collapse" href="#auth" aria-expanded="false" aria-controls="auth">
          <span class="icon-bg"><i class="mdi mdi-lock menu-icon"></i></span>
          <span class="menu-title">Subscription</span>
          <i class="menu-arrow"></i>
        </a>
        <div class="collapse" id="auth">
          <ul class="nav flex-column sub-menu">
            <li class="nav-item"> <a class="nav-link" href="subscription-view.php"> View Subscription </a></li>
          </ul>
        </div>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="message-fyndah.php">
          <span class="icon-bg"><i class="mdi mdi-contacts menu-icon"></i></span>
          <span class="menu-title">Message Fyndah</span>
        </a>
      </li>

      <li class="nav-item documentation-link">

      </li>
      <li class="nav-item sidebar-user-actions">
        <div class="user-details">
          <div class="d-flex justify-content-between align-items-center">
            <div>
              <div class="d-flex align-items-center">
                <div class="sidebar-profile-img">
                  <img src="assets/images/faces/face28.png" alt="image">
                </div>
                <div class="sidebar-profile-text">
                  <p class="mb-1"><?php echo $_SESSION['name'];?></p>
                </div>
              </div>
            </div>
            <div class="badge badge-danger">3</div>
          </div>
        </div>
      </li>
      <li class="nav-item sidebar-user-actions">
        <div class="sidebar-user-menu">
          <a href="#" class="nav-link"><i class="mdi mdi-settings menu-icon"></i>
            <span class="menu-title">Settings</span>
          </a>
        </div>
      </li>

      <li class="nav-item sidebar-user-actions">
        <div class="sidebar-user-menu">
          <a href="logout.php" class="nav-link"><i class="mdi mdi-logout menu-icon"></i>
            <span class="menu-title">Log Out</span></a>
        </div>
      </li>
    </ul>
  </nav>






  <!-- partial -->
  <div class="main-panel">
    <div class="content-wrapper">
      <div class="d-xl-flex justify-content-between align-items-start">
        <h2 class="text-dark font-weight-bold mb-2">Welcome <?php echo $_SESSION['name'];?> </h2>
      </div>



      <hr class='solid'>
      <!-- Page Wrapper -->
      <div class="page-wrapper">
        <div class="content container-fluid">

          <!-- Page Header -->
          <div class="page-header">
            <div class="row">
              <div class="col">
                <h3 class="page-title"> Boost Your Property </h3>
                <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                  <li class="breadcrumb-item active">Boost Property </li>
                </ul>
              </div>
            </div>
          </div>
          <!-- /Page Header -->

          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Boost Property </h4>
                </div>

                <?php

        $firstname = "";
        $lastname = "";
        $address = "";
        $phone_number = "";
        $role = "";
        $email = "";
        $password = "";


//echo uniqid();
if(isset($_POST["add"])){
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

                <form method="post" enctype="multipart/form-data">
                  <div class="card-body">
                    <h5 class="card-title required-field">Property Detail(Set To Boost and submit to get started)</h5>
                    <?php echo $error; ?>
                    <?php echo $msg; ?>

                    <div class="row">
                      <div class="form-group row">
                        <label class="col-lg-3 col-form-label required-field">Property Status</label>
                        <div class="col-lg-9">
                          <select class="form-control" required name="isFeatured">
                            <option value="">Select Boost</option>
                            <option value="Yes">Boost</option>

                          </select>
                        </div>
                      </div>
                      <center>
                        <input type="submit" value="Submit" class="btn btn-primary" name="add"
                          style="margin-left:200px;">

                      </center>

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
