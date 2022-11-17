<?php
session_start();
require("config.php");

if(!isset($_SESSION['email']))
{
	header("location:admin-login.php");
}


extract($_REQUEST);

$error="";
$msg="";

if(isset($_POST['add'])) {


$title=$_POST['title'];
$bedroom=$_POST['bedroom'];
$hall=$_POST['hall'];
$kitchen=$_POST['kitchen'];
$bathroom=$_POST['bathroom'];
$balcony=$_POST['balcony'];
$price=$_POST['price'];
$sqr_price=$_POST['sqr_price'];
$address=$_POST['address'];
$video=$_POST['video'];
$image1=$_FILES['image1']['name'];
$description=$_POST['description'];
$location=$_POST['location'];
$property_owner=$_POST['property_owner'];
$property_type=$_POST['property_type'];
$lot_size=$_POST['lot_size'];
$status=$_POST['status'];
$land_area=$_POST['land_area'];
$image3=$_FILES['image3']['name'];
$image2=$_FILES['image2']['name'];
$image4=$_FILES['image4']['name'];
$user_id=$_POST['user_id'];
$ptype=$_POST['ptype'];
$city=$_POST['city'];
$state=$_POST['state'];
$role=$_POST['role'];
//$isFeatured=$_POST['isFeatured'];
$totalfloor=$_POST['totalfloor'];
$topmapimage=$_FILES['topmapimage']['name'];
$mapimage=$_FILES['mapimage']['name'];
$groundmapimage=$_FILES['groundmapimage']['name'];


$temp_name1 =$_FILES['image1']['tmp_name'];
$temp_name2 =$_FILES['image2']['tmp_name'];
$temp_name3 =$_FILES['image3']['tmp_name'];
$temp_name4 =$_FILES['image4']['tmp_name'];

$temp_name5 =$_FILES['topmapimage']['tmp_name'];
$temp_name6 =$_FILES['mapimage']['tmp_name'];
$temp_name7 =$_FILES['groundmapimage']['tmp_name'];

move_uploaded_file($temp_name1,"./images/property_image/$image1");
move_uploaded_file($temp_name2,"./images/property_image/$image2");
move_uploaded_file($temp_name3,"./images/property_image/$image3");
move_uploaded_file($temp_name4,"./images/property_image/$image4");

move_uploaded_file($temp_name5,"./images/property_image/$topmapimage");
move_uploaded_file($temp_name6,"./images/property_image/$mapimage");
move_uploaded_file($temp_name7,"./images/property_image/$groundmapimage");

//$admin_id = $_SESSION['admin_ids'];
//$role = $_SESSION['SuperAdmin'];
$sql="INSERT INTO `property` (`title`, `bedroom`, `hall`, `kitchen`, `bathroom`, `balcony`, `price`, `sqr_price`,
`address`, `video`, `image1`, `description`, `location`, `property_owner`, `property_type`, `lot_size`, `status`,
`land_area`, `image3`, `image2`, `image4`, `user_id`,`uid`, `role`, `feature`, `ptype`, `city`, `state`, `mapimage`,
`topmapimage`, `groundmapimage`, `totalfloor`, `isFeatured`)
VALUES('$title','$bedroom','$hall','$kitchen','$bathroom','$balcony','$price','$sqr_price','$address','$video','$image1','$description','$location','$property_owner','$property_type','$lot_size','$status','$land_area','$image3','$image2','$image4','$user_id','3','$role','none
avaliable',
'$ptype','$city','$state','$mapimage','$topmapimage','$groundmapimage','$totalfloor','None')";
if (mysqli_query($con, $sql)) {
$msg='<div class="alert alert-success alert-dismissible">
  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
  <strong>Success!</strong> Property Data Add successful.
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
        <h2 class="text-dark font-weight-bold mb-2">Welcome Super Admin </h2>
      </div>



      <hr class='solid'>
      <!-- Page Wrapper -->
      <div class="page-wrapper">
        <div class="content container-fluid">

          <!-- Page Header -->
          <div class="page-header">
            <div class="row">
              <div class="col">
                <h3 class="page-title">Property Add</h3>
                <ul class="breadcrumb">
                  <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                  <li class="breadcrumb-item active">Property Add</li>
                </ul>
              </div>
            </div>
          </div>
          <!-- /Page Header -->

          <div class="row">
            <div class="col-md-12">
              <div class="card">
                <div class="card-header">
                  <h4 class="card-title">Add Property Details</h4>
                </div>
                <form method="post" enctype="multipart/form-data">
                  <div class="card-body">
                    <h5 class="card-title required-field">Property Detail(The column marked * is compulsory)</h5>
                    <?php echo $error; ?>
                    <?php echo $msg; ?>

                    <div class="row">
                      <div class="col-xl-12">
                        <div class="form-group row">
                          <label class="col-lg-2 col-form-label  required-field">Title</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="title" required placeholder="Enter Title">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-2 col-form-label required-field"> Description</label>
                          <div class="col-lg-9">
                            <textarea class="tinymce form-control" name="description" rows="10" cols="30"></textarea>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-2 col-form-label"> Property Owner</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="property_owner"
                              placeholder="Enter Property's Owners Name">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">User id</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="user_id"
                              placeholder="Enter User Id (only number)">
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-6">
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label required-field">Property Type</label>
                          <div class="col-lg-9">
                            <select class="form-control " required name="property_type">
                              <option value="">Select Type</option>
                              <option value="apartment">Apartment / Flat</option>

                              <option value="building">Building</option>
                              <option value="house">House</option>
                              <option value="villa">Villa</option>
                              <option value="office">Office</option>
                              <option value="land">Land</option>
                            </select>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label required-field">Property Status</label>
                          <div class="col-lg-9">
                            <select class="form-control" required name="ptype">
                              <option value="">Select Status</option>
                              <option value="rent">Rent</option>
                              <option value="sale">Sale</option>
                            </select>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">No of Bathroom</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="bathroom"
                              placeholder="Enter Bathroom (only no 1 to 10)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">No of Kitchen</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="kitchen"
                              placeholder="Enter Kitchen (only no 1 to 10)">
                          </div>
                        </div>

                      </div>
                      <div class="col-xl-6">
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">No of Bedrooms</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="bedroom"
                              placeholder="Enter Bedroom  (only no 1 to 10)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">No of Balcony</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="balcony"
                              placeholder="Enter Balcony  (only no 1 to 10)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">No of Halls</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="hall"
                              placeholder="Enter Hall  (only no 1 to 10)">
                          </div>
                        </div>

                      </div>
                    </div>
                    <h4 class="card-title">Price & Location</h4>
                    <div class="row">
                      <div class="col-xl-6">
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label required-field">Price(Numbers only)</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control " name="price" required placeholder="Enter Price">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">price per Square Meter</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="sqr_price" placeholder="Enter Price">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label required-field">City</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="city" required placeholder="Enter City">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label required-field">Status</label>
                          <div class="col-lg-9">
                            <select class="form-control " required name="status">
                              <option value="">Select Property Avalibility</option>
                              <option value="available">Available</option>
                              <option value="sold out">Sold Out</option>
                              <option value="sold out">Rented Out</option>
                            </select>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label required-field">State</label>
                          <div class="col-lg-9">
                            <select class="form-control" name="state" required>
                              <option value="">Select State</option>
                              <option value="Abia">Abia State </option>
                              <option value="Abuja">F.C.T </option>
                              <option value="Adamawa">Adamawa State </option>
                              <option value="Akwa Ibom">Akwa Ibom State</option>
                              <option value="Anambra ">Anambra State</option>
                              <option value="Bauchi">Bauchi State</option>
                              <option value="Bayelsa">Bayelsa State</option>
                              <option value="Benue">Benue State </option>
                              <option value="Borno">Borno State</option>
                              <option value="Cross River">Cross River State </option>
                              <option value="Delta">Delta State</option>
                              <option value="Ebonyi">Ebonyi State</option>
                              <option value="Edo">Edo State</option>
                              <option value="Ekiti">Ekiti State</option>
                              <option value="Enugu">Enugu State</option>
                              <option value="Gombe">Gombe State</option>
                              <option value="Imo">Imo State</option>
                              <option value="Jigawa">Jigawa State</option>
                              <option value="Kaduna">Kaduna State</option>
                              <option value="Kano">Kano State</option>
                              <option value="Katsina">Katsina State</option>
                              <option value="Kebbi">Kebbi State</option>
                              <option value="Kogi">Kogi State</option>
                              <option value="Kwara">Kwara State</option>
                              <option value="Lagos">Lagos State</option>
                              <option value="Nasarawa">Nasarawa State</option>
                              <option value="Niger">Niger State </option>
                              <option value="Ogun">Ogun State</option>
                              <option value="Ondo">Ondo State</option>
                              <option value="Osun">Osun State</option>
                              <option value="Oyo">Oyo State </option>
                              <option value="Plateau">Plateau State</option>
                              <option value="Rivers">Rivers State</option>
                              <option value="Sokoto">Sokoto State</option>
                              <option value="Taraba">Taraba State</option>
                              <option value="Yobe">Yobe State</option>
                              <option value="Zamfara">Zamfara State</option>
                            </select>
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-6">
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Total Floor</label>
                          <div class="col-lg-9">
                            <select class="form-control" name="totalfloor">
                              <option value="">Select Floor</option>
                              <option value="1 Floor">1 Floor</option>
                              <option value="2 Floor">2 Floor</option>
                              <option value="3 Floor">3 Floor</option>
                              <option value="4 Floor">4 Floor</option>
                              <option value="5 Floor">5 Floor</option>
                              <option value="6 Floor">6 Floor</option>
                              <option value="7 Floor">7 Floor</option>
                              <option value="8 Floor">8 Floor</option>
                              <option value="9 Floor">9 Floor</option>
                              <option value="10 Floor">10 Floor</option>
                              <option value="11 Floor">11 Floor</option>
                              <option value="12 Floor">12 Floor</option>
                              <option value="13 Floor">13 Floor</option>
                              <option value="14 Floor">14 Floor</option>
                              <option value="15 Floor">15 Floor</option>
                            </select>
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Nearest Land Mark</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name=" land_area"
                              placeholder="Enter Area Size (Nearest Land Mark)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Lot Size</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name=" lot_size"
                              placeholder="Enter Area Size (in sqrt)">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Address</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="address" placeholder="Enter Address">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Location Video Link</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="location" placeholder="Enter Address">
                          </div>
                        </div>
                      </div>
                    </div>
                    <h4 class="card-title">Media & Status</h4>
                    <div class="row">
                      <div class="col-xl-6">
                        <div class="form-group row">
                          <label class="col-lg-2 col-form-label">Video Link</label>
                          <div class="col-lg-9">
                            <input type="text" class="form-control" name="video" placeholder="Enter Video Link">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label required-field">Image 1</label>
                          <div class="col-lg-9">
                            <input class="form-control" name="image1" required type="file">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label required-field">Image 2</label>
                          <div class="col-lg-9">
                            <input class="form-control" name="image2" required type="file">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Image 3</label>
                          <div class="col-lg-9">
                            <input class="form-control" name="image3" type="file">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Image 4</label>
                          <div class="col-lg-9">
                            <input class="form-control" name="image4" type="file">
                          </div>
                        </div>

                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Image 5</label>
                          <div class="col-lg-9">
                            <input class="form-control" name="fimage1" type="file">
                          </div>
                        </div>
                      </div>
                      <div class="col-xl-6">
                        <div class="form-group row">

                          <div class="col-lg-9">
                            <input type="hidden" name="role" class="form-control" value="SuperAdmin" id="inputname2">

                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Image 6</label>
                          <div class="col-lg-9">
                            <input class="form-control" name="mapimage" type="file">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">image 7</label>
                          <div class="col-lg-9">
                            <input class="form-control" name="topmapimage" type="file">
                          </div>
                        </div>
                        <div class="form-group row">
                          <label class="col-lg-3 col-form-label">Image 8</label>
                          <div class="col-lg-9">
                            <input class="form-control" name="groundmapimage" type="file">
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
