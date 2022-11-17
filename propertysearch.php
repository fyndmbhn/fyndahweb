 <!--	Header start  -->
 <?php  
      include("./config.php"); ?>
 <?php include("include/headers.php");?>
 <!--	Header end  -->

 <!-- Sub banner start -->
 <div class="sub-banner">
   <div class="overlay">
     <div class="container">
       <div class="breadcrumb-area">
         <h1>Property Search </h1>
         <ul class="breadcrumbs">
           <li><a href="index.php">Home</a></li>
           <li class="active"> Property Search </li>
         </ul>
       </div>
     </div>
   </div>
 </div>
 <!-- Sub Banner end -->

 <!-- view section start -->
 <div class="view-section content-area">
   <div class="container">
     <div class="row">
       <div class="col-lg-12">
         <div class="view-all">
           <h3>View All</h3>
           <ul>
             <li><a href="#">A</a></li>
             <li><a href="#">B</a></li>
             <li><a href="#">C</a></li>
             <li><a href="#">D</a></li>
             <li><a href="#">E</a></li>
             <li><a href="#">F</a></li>
             <li><a href="#">G</a></li>
             <li><a href="#">H</a></li>
             <li><a href="#">I</a></li>
             <li><a href="#">J</a></li>
             <li><a href="#">K</a></li>
             <li><a href="#">L</a></li>
             <li><a href="#">M</a></li>
             <li><a href="#">N</a></li>
             <li><a href="#">O</a></li>
             <li><a href="#">P</a></li>
             <li><a href="#">Q</a></li>
             <li><a href="#">R</a></li>
             <li><a href="#">S</a></li>
             <li><a href="#">T</a></li>
             <li><a href="#">U</a></li>
             <li><a href="#">V</a></li>
             <li><a href="#">W</a></li>
             <li><a href="#">X</a></li>
             <li><a href="#">Y</a></li>
             <li><a href="#">Z</a></li>
           </ul>
         </div>
         <form class="form-search view-search" method="GET">
           <div class="form-group mb-0">
             <input type="text" class="form-control" placeholder="Search">
           </div>
           <button type="submit" class="btn"><i class="fa fa-search"></i></button>
         </form>
       </div>


       <div class="col-lg-12 col-md-12 col-xs-12">
         <!-- Option bar Start -->
         <div class="option-bar">
           <div class="row">
             <div class="col-lg-6 col-md-5 col-sm-5">
               <h4>
                 <span class="heading-icon">
                   <i class="fa fa-th-large"></i>
                 </span>
                 <span class="title">Properties Grid</span>
               </h4>
             </div>
             <div class="col-lg-6 col-md-7 col-sm-7">
               <div class="sorting-options advanced-search">
                 <select class="selectpicker search-fields sorting" name="new-to-old">
                   <option>New To Old</option>
                   <option>Old To New</option>
                   <option>Properties (High To Low)</option>
                   <option>Properties (Low To High)</option>
                 </select>
                 <a href="#" class="change-view-btn"><i class="fa fa-th-list"></i></a>
                 <a href="#" class="change-view-btn active-view-btn"><i class="fa fa-th-large"></i></a>
               </div>
             </div>
           </div>
         </div>
         <!-- Option bar end -->
         <div class="clearfix"></div>

         <!-- Property grid start -->
         <div class="row">
           <?php 
							
							if(isset($_REQUEST['filter'])) { 
								$ptype=$_REQUEST['ptype'];
                $price=$_REQUEST['price'];
								$address=$_REQUEST['address'];
                $property_type=$_REQUEST['property_type'];
								
							$resultAll = mysqli_query($con,"select property.*, sub_admins.phone FROM property INNER JOIN sub_admins ON property.user_id = sub_admins.id   and ptype='{$ptype}'    and property_type='{$property_type}' and address='{$address}' and price='{$price}'");
								//SELECT * FROM `property` WHERE type='office' or type='office' and stype='sale' or stype='rent' and city='valsad' OR state='mumbai'
								//SELECT * FROM `property` WHERE type='office' and stype='sale'  and city='valsad' OR state='mumbai'
							if(!$resultAll){
	            die(mysqli_error($con));
         }

// Check is result set le grater then 0
        if (mysqli_num_rows($resultAll) > 0) {
	       while($res = mysqli_fetch_array($resultAll)){
         		echo $res["title"].'<br>';
        $id=$res['id'];
        $img=$res['image2'];
        $date = $res['date'];
        $property_owner = $res['property_owner'];
        $user_id = $res['user_id'];
        $role = $res['role'];
        $title = $res['title'];
        $phone = $res['phone'];
       $_COOKIE['phone'] = $phone;
	}

							?>

           <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12 wow fadeInUp delay-03s">
             <!-- Property start -->
             <div class="property fp2">
               <!-- Property img -->
               <div class="property-img">
                 <div class="property-tag button alt featured">Featured</div>
                 <div class="property-tag button sale"><?php echo $res['15'];?>
                 </div>
                 <div class="property-price">$72.000</div>
                 <img src="img/properties/properties-3.jpg" alt="fp" class="img-fluid">
                 <div class="property-overlay">
                   <a href="properties-details.html" class="overlay-link">
                     <i class="fa fa-link"></i>
                   </a>
                   <a class="overlay-link property-video" title="Lexus GS F">
                     <i class="fa fa-video-camera"></i>
                   </a>
                   <div class="property-magnify-gallery">
                     <a href="img/properties/properties-3.jpg" class="overlay-link">
                       <i class="fa fa-expand"></i>
                     </a>
                     <a href="img/properties/properties-2.jpg" class="hidden"></a>
                     <a href="img/properties/properties-1." class="hidden"></a>
                   </div>
                 </div>
               </div>
               <!-- Property content -->
               <div class="property-content">
                 <!-- info -->
                 <div class="info">
                   <!-- title -->
                   <h1 class="title">
                     <a href="properties-details.html"><?php echo $row['14'];?></a>
                   </h1>
                   <!-- Property address -->
                   <h3 class="property-address">
                     <a href="properties-details.html">
                       <i class="fa fa-map-marker"></i>123 Kathal St. Tampa City,
                     </a>
                   </h3>
                   <!-- Facilities List -->
                   <ul class="facilities-list clearfix">
                     <li>
                       <i class="flaticon-square-layouting-with-black-square-in-east-area"></i>
                       <span>4800 sq ft</span>
                     </li>
                     <li>
                       <i class="flaticon-bed"></i>
                       <span>3 Beds</span>
                     </li>
                     <li>
                       <i class="flaticon-monitor"></i>
                       <span>TV </span>
                     </li>
                     <li>
                       <i class="flaticon-holidays"></i>
                       <span> 2 Baths</span>
                     </li>
                     <li>
                       <i class="flaticon-vehicle"></i>
                       <span>1 Garage</span>
                     </li>
                     <li>
                       <i class="flaticon-building"></i>
                       <span> 3 Balcony</span>
                     </li>
                   </ul>
                 </div>
                 <!-- Property footer -->
                 <div class="property-footer">
                   <span class="left">
                     <a href="#"><i class="fa fa-user"></i>Jhon Doe</a>
                   </span>
                   <span class="right">
                     <i class="fa fa-calendar"></i>5 Days ago
                   </span>
                 </div>
               </div>
             </div>
             <!-- Property end -->
           </div>



           <?php 
           		}else {
									
									echo "<h1 class='mb-5'><center>No Property Available</center></h1>
                  <center><a><p>Didnt Find what your looking for,</p>
                  
               <a href='propertyRequest.php'>   
               <button class='btn-2 btn-defaults' id='pay' type='submit' name='pay'>
                  <span>Request Property</span> <i class='arrow'></i>
                </button></a>
                  </a> 
                  </center>
                          
                  ";
								}		
        }
								
									
							

							?>




         </div>
         <!-- Property grid end -->


         <!-- Pagination box start  
         <div class="pagination-box text-center">
           <nav aria-label="Page navigation example">
             <ul class="pagination">
               <li class="page-item">
                 <a class="page-link" href="#">Prev</a>
               </li>
               <li class="page-item"><a class="page-link  active" href="#">1</a></li>
               <li class="page-item"><a class="page-link" href="#">2</a></li>
               <li class="page-item"><a class="page-link" href="#">3</a></li>
               <li class="page-item">
                 <a class="page-link" href="#">Next</a>
               </li>
             </ul>
           </nav>
         </div>
         Pagination box end -->
       </div>


     </div>
   </div>
 </div>
 <!-- property section end -->
 </div>
 </div>
 </div>
 <!-- view section end -->


 <!--	Footer   start-->
 <?php include("include/footer.php");?>
 <!--	Footer   start-->
