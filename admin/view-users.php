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
function delet($id) {
  if (confirm("Do you want to delete This Listing ?")) {
    window.location.href = 'delete_property.php?id=' + $id;
  }

}
</script>
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
        <h2 class="text-dark font-weight-bold mb-2">Welcome <?php echo $_SESSION['name'];?> </h2>
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
                  <h3 class="page-title"> View Users</h3>
                  <ul class="breadcrumb">
                    <li class="breadcrumb-item"><a href="dashboard.php">Dashboard</a></li>
                    <li class="breadcrumb-item active"> View Users</li>
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


                    <div id="table-scroll" class="table-scroll table table-bordered table-hover">
                      <div class="table-wrap">
                        <table class="main-table">
                          <thead>
                            <tr>
                              <th>#</th>
                              <th>Name</th>
                              <th>Address</th>
                              <th>Phone</th>
                              <th>Role</th>
                              <th>Email</th>
                              <th>Date</th>
                              <th>Payment Status</th>
                              <th>Account Status</th>
                              <th>Action</th>
                            </tr>
                          </thead>
                          <tbody>

                            <?php
               $i=1;
				//			$id=$_SESSION['user_id'];
              
					    $sql="select * from sub_admins where role='User'";
						$result=mysqli_query($con,$sql);
						while($row=mysqli_fetch_array($result)) {
             $id=$row['id'];
           
						?> <td><?php echo $i++; ?></td>
                            <td><?php echo $row['1']; ?> <?php echo $row['2']; ?></td>
                            <td><?php echo $row['3']; ?></td>
                            <td><?php echo $row['4']; ?></td>
                            <td><?php echo $row['5']; ?></td>
                            <td><?php echo $row['6']; ?></td>
                            <td><?php echo $row['8']; ?></td>
                            <td><?php echo $row['9']; ?></td>
                            <td><?php echo $row['10']; ?></td>

                            <td>
                              <a href="agent_delete.php?id=<?php echo $id;?>"><button
                                  class=" btn btn-danger">Delete</button></a>
                              <a href="agent-account-activate.php?id=<?php echo $id;?>"><button
                                  class=" btn btn-danger">Activate</button></a>


                              <a href="agent_account_deactivate.php?id=<?php echo $id;?>"><button
                                  class="btn btn-primary">Deactivate
                                  User</button></a>
                            </td>
                            </tr>
                            <?php
												} 
												?>

                          <tbody>
                        </table>
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
