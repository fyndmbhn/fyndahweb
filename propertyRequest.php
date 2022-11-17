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
        <h1>Property Request Form</h1>
        <ul class="breadcrumbs">
          <li><a href="index.php">Home</a></li>
          <li class="active">Property Request Form</li>
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
          <h3>Do you have an Idea of your Dream Home?</h3>
          <p>Fill the form and let us help you find what you you are looking for.</p>
        </div>
      </div>
      <div class="col-md-12">
        <div class="submit-address">




          <form method="post" name="frmregistration" action="./sendemail.php" enctype="multipart/form-data">
            <div class="card-body">
              <div class="row">
                <div class="col-xl-12">
                  <center>
                    <h2 class="card-title">Message Us </h2>
                  </center>

                  <?php 
										          	if(isset($_GET['msg']))	
										           	echo $_GET['msg'];	
										             ?>
                  <div class="form-group row">
                    <label class="col-lg-2 col-form-label">Title</label>
                    <div class="col-lg-9">
                      <input type="text" class="form-control" name="title" required="">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label class="col-lg-2 col-form-label">Contact Details</label>
                    <div class="col-lg-9">
                      <input type="text" class="form-control" name="contact" required="">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label class="col-lg-2 col-form-label">Content</label>
                    <div class="col-lg-9">
                      <textarea class="tinymce form-control" name="content" rows="10" cols="30"></textarea>
                    </div>
                  </div>
                </div>
              </div>
              <div class="row">
                <div class="col-lg-12 col-md-6 col-sm-6 col-xs-12" style="text-align: center;">

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
