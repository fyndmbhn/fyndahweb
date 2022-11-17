<?php
session_start();
require("config.php");

if(!isset($_SESSION['email']))
{
	header("location:admin-login.php");
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
  <style>
  .table-scroll {
    position: relative;
    max-width: 600px;
    margin: auto;
    overflow: hidden;
    border: 1px solid #000;
  }

  .table-wrap {
    width: 100%;
    overflow: auto;
  }

  .table-scroll table {
    width: 100%;
    margin: auto;
    border-collapse: separate;
    border-spacing: 0;
  }

  th {
    color: #000000
  }

  td {
    color: #000000
  }

  .table-scroll th,
  .table-scroll td {
    padding: 5px 10px;
    border: 1px solid #000;
    background: #fff;
    white-space: nowrap;
    vertical-align: top;
  }

  .table-scroll thead,
  .table-scroll tfoot {
    background: #f9f9f9;
  }

  .clone {
    position: absolute;
    top: 0;
    left: 0;
    pointer-events: none;
  }

  .clone th,
  .clone td {
    visibility: hidden
  }

  .clone td,
  .clone th {
    border-color: transparent
  }

  .clone tbody th {
    visibility: visible;
    color: red;
  }

  .clone .fixed-side {
    border: 1px solid #000;
    background: #eee;
    visibility: visible;
  }

  .clone thead,
  .clone tfoot {
    background: transparent;
  }

  </style>
</head>
<!-- Header -->

<script type="text/javascript">
function delet(id) {
  if (confirm("Do you want to delete This Listing ?")) {
    window.location.href = 'delete_property.php?x=' + id;
  }
}
</script>
<?php include("header.php");?>
<!-- /Header -->

<div class="container-fluid page-body-wrapper">
  <!-- navsidebarmenu -->
  <?php include("navsidemenu.php");?>
  <!-- /navsidebarmenu -->
  <div class="main-panel">
    <div class="content-wrapper">
      <div class="d-xl-flex justify-content-between align-items-start">
        <h2 class="text-dark font-weight-bold mb-2">Welcome Super Admin </h2>
      </div>



      <hr class='solid'>
      <div class="content-wrapper">

        <!-- Page Wrapper -->
        <div class="page-wrapper">
          <div class="content container-fluid">

            <!-- Page Header -->
            <div class="page-header">
              <div class="row">
                <div class="col">
                  <h3 class="page-title">Boosted Property</h3>
                  <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                    <li class="breadcrumb-item active">Boosted Property</li>
                  </ul>
                </div>
              </div>
            </div>
            <!-- /Page Header -->




            <div class="row">
              <div class="col-12">
                <div class="card">
                  <div class="card-body">


                    <?php 
											if(isset($_GET['msg']))	
											echo $_GET['msg'];	
										?>


                    <div id="table-scroll" class="table-scroll">
                      <div class="table-wrap">
                        <table class="main-table">
                          <thead>
                            <tr>
                              <!-- <th>P ID</th> -->
                              <th>#</th>
                              <th>Title</th>
                              <th>Price</th>
                              <th>Owner</th>
                              <th>Property Type</th>
                              <th>Status</th>
                              <th>Image</th>
                              <th>Added Date</th>
                              <th>Actions</th>

                            </tr>
                          </thead>
                          <tbody>

                            <?php
               $i=1;
							//$id=$_SESSION['user_id'];
              
					    $sql="SELECT * FROM property  WHERE isFeatured='Yes' ";
						$result=mysqli_query($con,$sql);
						while($row=mysqli_fetch_array($result)) {
             $id=$row['id'];
              $img=$row['image1'];
						?> <td><?php echo $i++; ?></td>
                            <td><?php echo $row['1']; ?></td>
                            <td><?php echo $row['7']; ?></td>
                            <td><?php echo $row['14']; ?></td>
                            <td><?php echo $row['15']; ?></td>

                            <td><?php echo $row['17']; ?></td>
                            <td><img src="../admin/images/property_image/<?php echo $img;?>" width="120"></td>

                            <td><?php echo $row['19']; ?></td>
                            <td>
                              <a onclick="delet(<?php echo $id;?>);"><button class=" btn btn-danger">Delete</button></a>
                            </td>
                            </tr>
                            <?php
												} 
												?>

                          <tbody>
                      </div> <!-- end card body-->
                    </div> <!-- end card -->
                  </div><!-- end col-->
                </div>
                <!-- end row-->

              </div>
            </div>
            <!-- /Main Wrapper -->

          </div>
          <!-- content-wrapper ends -->
          <!-- partial:partials/_footer.html -->

          <!-- Footer -->
          <?php include("footer.php");?>
          <!-- /Footer -->
