 <!--	Header start  -->
 <?php include("include/headers.php");?>
 <!--    post view count start -->
 <?php
 $date = date("Y-m-d H:i:s");
 $r=mysqli_query($con, "SELECT property.*, sub_admins.phone FROM property INNER JOIN sub_admins ON property.user_id = sub_admins.id ");
$t=mysqli_num_rows($r);
 if($t <= 0) {
                        ;
                    } else {
             
 if(isset($_SESSION['count']))  { 
  
//  $_SESSION['count']  +=3 ;   
 
;  
 
}  
else  
{   
; 
}

if(!$con){  
 ; 
}  
;
  
// sql to create table
$sql = "CREATE TABLE postviewcount (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
post_view_count VARCHAR(30) NOT NULL,
user_id VARCHAR(30) NOT NULL,
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";

 if ($con->query($sql) === TRUE) {
 ;


} else {
;
}         

  $query = " INTO postviewcount (post_view_count,user_id,reg_date)
VALUES (' ','123','$date')";  
 if ($con->query($query) === TRUE) {
  ;
} else {
;
}  
}



 
?>
 <!-- post view count end  -->


 <!--    phone click count start -->
 <?php
 $date = date("Y-m-d H:i:s");
 $r=mysqli_query($con, "SELECT property.*, sub_admins.phone FROM property INNER JOIN sub_admins ON property.user_id = sub_admins.id ");
$t=mysqli_num_rows($r);
 if($t <= 0) {
                        ;
                    } else {
             
 if(isset($_SESSION['count']))  { 
  
//  $_SESSION['count']  +=2;   
 
;  
 
}  
else  
{   
; 
}

if(!$con){  
 ; 
}  
;
  
// sql to create table
$sql = "CREATE TABLE phone (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
phone_app_click VARCHAR(30) NOT NULL,
user_id VARCHAR(30) NOT NULL,
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";

 if ($con->query($sql) === TRUE) {
 ;


} else {
;
}         

  $query = " INTO phone (phone_app_click,user_id,reg_date)
VALUES (' ','123','$date')";  
 if ($con->query($query) === TRUE) {
  ;
} else {
;
}  
}



 
?>
 <!-- phone click count end  -->


 <!--   whatsapp  click count start    -->
 <?php
 $date = date("Y-m-d H:i:s");
 $r=mysqli_query($con, "SELECT property.*, sub_admins.phone FROM property INNER JOIN sub_admins ON property.user_id = sub_admins.id ");
$t=mysqli_num_rows($r);
 if($t <= 0) {
                        ;
                    } else {
             
 if(isset($_SESSION['count']))  { 
  
//  $_SESSION['count']  +=1 ;   
 
;  
 
}  
else  
{   
; 
}

if(!$con){  
 ; 
}  
;
  
// sql to create table
$sql = "CREATE TABLE whatsapp (
id INT(6) UNSIGNED AUTO_INCREMENT PRIMARY KEY,
whats_app_click VARCHAR(30) NOT NULL,
user_id VARCHAR(30) NOT NULL,
reg_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)";

 if ($con->query($sql) === TRUE) {
 ;


} else {
;
}         

  $query = " INTO whatsapp (whats_app_click,user_id,reg_date)
VALUES (' ','123','$date')";  
 if ($con->query($query) === TRUE) {
  ;
} else {
;
}  
}



 
?>
 <!-- Sub banner start -->
 <div class="sub-banner">
   <div class="overlay">
     <div class="container">
       <div class="breadcrumb-area">
         <h1>Properties Grid</h1>
         <ul class="breadcrumbs">
           <li><a href="index.html">Home</a></li>
           <li class="active">Properties Grid</li>
         </ul>
       </div>
     </div>
   </div>
 </div>
 <!-- Sub banner end -->

 <!-- Properties section body start -->
 <div class="properties-section content-area">
   <div class="container">
     <div class="row">
       <div class="col-lg-8 col-md-12 col-xs-12">
         <!-- Option bar start -->
         <div class="option-bar">
           <div class="row">
             <div class="col-lg-5 col-md-5 col-sm-5">
               <h4>
                 <span class="heading-icon">
                   <i class="fa fa-th-large"></i>
                 </span>
                 <span class="title">Properties Grid</span>
               </h4>
             </div>
             <div class="col-lg-7 col-md-7 col-sm-7">
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

         <div class="row">
           <?php 
           
        include('include/config.php');
        $query1=mysqli_query($con,"select * from sub_admins, admin");
        $admin=mysqli_fetch_array($query1);
        
        $u_name=ucfirst($admin['name']);
        
        
        $query3 = mysqli_query($con, "select * from property");
        
        while($row = mysqli_fetch_array($query3)){
            
          $user_id = $row['user_id'];    
        }
           $page = '';
        
        
        
        
         $per_page_record = 20;  // Number of entries to show in a page.   
        // Look for a GET variable page if not found default is 1.        
        if (isset($_GET["page"])) {    
            $page  = $_GET["page"];    
        }    
        else {    
          $page+=1;    
        }    
        $start_from = ($page +1) * $per_page_record; 

        $query=mysqli_query($con,"select property.*, sub_admins.phone FROM property INNER JOIN sub_admins ON property.user_id = sub_admins.id LIMIT $start_from, $per_page_record");
        while($res=mysqli_fetch_array($query))
        {
        $id=$res['id'];
        $img=$res['image2'];
        $date = $res['date'];
        $property_owner = $res['property_owner'];
        $user_id = $res['user_id'];
        $role = $res['role'];
        $phone = $res['phone'];
       $_COOKIE['phone'] = $phone;
        ?>
           <div class="col-lg-6 col-md-6 col-sm-12 col-xs-12 wow fadeInUp delay-03s">
             <!-- Property start -->
             <div class="property fp2">
               <!-- Property img -->
               <div class="property-img">
                 <div class="property-tag button alt featured">Featured</div>
                 <div class="property-tag button sale">For Sale</div>
                 <div class="property-price"> ₦ <?php echo $res['price'];?></div>
                 <img src="admin/images/property_image/<?php echo $img;?>" alt="fp" class="img-fluid"
                   style="height:240px;width:320px">
                 <div class="property-overlay">
                   <a href="properties-details.php?id=<?php echo $id;?>">

                   </a>

                   <div class="property-magnify-gallery">
                     <a href="admin/images/property_image/<?php echo $img;?>">

                     </a>

                     <a href="admin/images/property_image/<?php echo $img;?>" class="hidden"></a>
                     <a href="admin/images/property_image/<?php echo $img;?>" class="hidden"></a>
                   </div>
                 </div>
               </div>
               <!-- Property content -->
               <div class="property-content">
                 <!-- info -->
                 <div class="info">
                   <!-- title -->
                   <h1 class="title">
                     <a href="properties-details.php?id=<?php echo $id;?>"><?php echo $res['title'];?></a>
                   </h1>
                   <!-- Property address -->
                   <h3 class="property-address">
                     <a href="properties-details.php?id=<?php echo $id;?>">
                       <i class="fa fa-map-marker"></i><?php echo $res['address'];?>,
                     </a>
                   </h3>
                   <!-- Facilities List -->
                   <ul class="facilities-list clearfix">
                     <li>
                       <i class="flaticon-square-layouting-with-black-square-in-east-area"></i>
                       <span><?php echo $res['sqr_price'];?> : sq ft</span>
                     </li>
                     <li>
                       <i class="flaticon-bed"></i>
                       <span><?php echo $res['bedroom'];?> : Beds</span>
                     </li>

                     <li>
                       <i class="flaticon-vehicle"></i>
                       <span> Kitchen : <?php echo $res['kitchen'];?> </span>
                     </li>
                     <li>
                       <i class="flaticon-building"></i>
                       <span> Halls : <?php echo $res['hall'];?> </span>
                     </li>

                   </ul>
                 </div>
                 <!-- Property footer -->
                 <div class="property-footer">
                   <span class="left">
                     <a href="#"><i class="fa fa-user"></i><?php echo $res['property_owner'];?> </a>
                   </span>
                   <span class="right">
                     <form method="post">
                       <ul>
                         <li>
                           <?php 
                            if ($role== "User"){
                            echo "
                            <a
                            href='https://api.whatsapp.com/send?phone=$phone'
                            class='whatsapp_float'
                            target='_blank' 
                            rel='noopener noreferrer' >
                            <i class='fa fa-whatsapp whatsapp-icon'>WhatApp</i></a>";
                            } 
                            else if($role =="SuperAdmin"){
                        echo "
                            <a
                            href='https://api.whatsapp.com/send?phone=$phone'
                            class='whatsapp_float'
                            target='_blank'
                            rel='noopener noreferrer'
                           id= 'btn' onclick='incrementer' name='count'>
                            <i class='fa fa-whatsapp whatsapp-icon'>WhatApp</i>
                            </a>";


                            } 

                      
                            ?>
                         <li>
                       </ul>

                     </form>
                   </span>
                   <i class="fa-solid fa-envelope"></i>
                 </div>
                 <!-- Property footer -->
                 <div class="property-footer">
                   <span class="left">
                     <a href="#"><i class="fa fa-phone-square" id="btn"
                         onclick="incrementer()"></i><?php echo $res['phone'];?>
                     </a>
                   </span>
                   <span class="right">
                     <form method>
                       <ul>
                         <li>
                           <?php 
                            if ($role== "User"){
                            echo 
                            '
                            <hr>
            
                            ';
                            } 
                            else if($role =="SuperAdmin"){
                        echo "
                            <a
                            href='https://wa.me/$phone'
                            class='whatsapp_float'
                            target='_blank'
                            rel='noopener noreferrer'
                           id= 'btn' onclick='incrementer()'>
                            <i class='fa fa-envelope'>Send Message</i>
                            </a>";


                            } 


                            ?>
                         <li>
                       </ul>
                     </form>
                   </span>

                 </div>
               </div>
             </div>
           </div>

           <?php } ?>
         </div>
         <?php  
                    $query = "SELECT COUNT(*) FROM sub_admins";     
                    $rs_result = mysqli_query($con, $query);     
                    $row = mysqli_fetch_row($rs_result);     
                    $total_records = $row[0];     
                    
                    echo "</br>";
 // Number of pages required.   
                    $total_pages = ceil($total_records / $per_page_record);     
                    $pagLink = "";    ?>





         <div class="pagination-box text-center">
           <?php  
                    $query = "SELECT COUNT(*) FROM sub_admins";     
                    $rs_result = mysqli_query($con, $query);     
                    $row = mysqli_fetch_row($rs_result);     
                    $total_records = $row[0];     
                    
                    echo "</br>";     
                    // Number of pages required.   
                    $total_pages = ceil($total_records / $per_page_record);     
                    $pagLink = "";       
      
                    if($page>=2){   
                        echo "<a href='propertygrid.php?page=".($page-1)."'>  Prev </a>";   
                    }       
                   
                    for ($i=1; $i<=$total_pages; $i++) {   
                    if ($i == $page) {   
                        $pagLink .= "<a class = 'page-link' href='propertygrid.php?page="  
                                                            .$i."'>".$i." </a>";   
                    }               
                    else  {   
                        $pagLink .= "<a href='propertygrid.php?page=".$i."'>   
                                                            ".$i." </a>";     
                    }   
                    };     
                    echo $pagLink;   
            
                    if($page<$total_pages){   
                        echo "<a class = 'page-link'     href='propertygrid.php?page=".($page+1)."'>  Next </a>";   
                    }   
            
                ?>
         </div>


         <div class="pagination">
           <input id="page" type="number" min="1" max="<?php echo $total_pages?>"
             placeholder="<?php echo $page."/".$total_pages; ?>" required>
           <button onClick="go2Page();">Go</button>
         </div>










         <!-- Pagination box start 
         <div class="pagination-box text-center">

           <nav aria-label="Page navigation example">
             <ul class="pagination">
               <li class="page-item">

                 <a class="page-link" href="#" href='propertygrid.php?page=".($page-1)."'>Prev</a>
               </li>

               <li class="page-item"><a class="page-link  active" href="#">1</a></li>
               <li class="page-item"><a class="page-link" href="#">2</a></li>
               <li class="page-item"><a class="page-link" href="#">3</a></li>
               <li class="page-item">
                 <a class="page-link" href="#">Next</a>
               </li>
             </ul>
           </nav>
           ?>
         </div>
          Pagination box end -->
       </div>
       <div class="col-lg-4 col-md-12 col-xs-12">
         <!-- Advanced search start -->
         <div class="sidebar-widget advanced-search">
           <div class="main-title-2">
             <h1>Advanced Search</h1>
           </div>
           <form method="GET">
             <div class="form-group">
               <select class="selectpicker search-fields" name="property status">
                 <option>Property Status</option>
                 <option>For Sale</option>
                 <option>For Rent</option>
               </select>
             </div>
             <div class="form-group">
               <select class="selectpicker search-fields" name="location">
                 <option>Location</option>
                 <option>United States</option>
                 <option>United Kingdom</option>
                 <option>American Samoa</option>
                 <option>Belgium</option>
                 <option>Cameroon</option>
                 <option>Canada</option>
               </select>
             </div>
             <div class="form-group">
               <select class="selectpicker search-fields" name="property types">
                 <option>Property Types</option>
                 <option>Residential</option>
                 <option>Commercial</option>
                 <option>Land</option>
               </select>
             </div>
             <div class="form-group">
               <select class="selectpicker search-fields" name="area from">
                 <option>Area From</option>
                 <option>1000</option>
                 <option>800</option>
                 <option>600</option>
                 <option>400</option>
                 <option>200</option>
                 <option>100</option>
               </select>
             </div>
             <div class="row">
               <div class="col-lg-6 col-md-6 col-sm-6">
                 <div class="form-group">
                   <select class="selectpicker search-fields" name="bedrooms">
                     <option>Bedrooms</option>
                     <option>1</option>
                     <option>2</option>
                     <option>3</option>
                     <option>4</option>
                     <option>5</option>
                     <option>6</option>
                     <option>7</option>
                   </select>
                 </div>
               </div>
               <div class="col-lg-6 col-md-6 col-sm-6">
                 <div class="form-group">
                   <select class="selectpicker search-fields" name="bathrooms">
                     <option>Bathrooms</option>
                     <option>1</option>
                     <option>2</option>
                     <option>3</option>
                     <option>4</option>
                     <option>5</option>
                     <option>6</option>
                     <option>7</option>
                   </select>
                 </div>
               </div>
             </div>
             <div class="row">
               <div class="col-lg-6 col-md-6 col-sm-6">
                 <div class="form-group">
                   <select class="selectpicker search-fields" name="balcony">
                     <option>Balcony</option>
                     <option>1</option>
                     <option>2</option>
                     <option>3</option>
                     <option>4</option>
                     <option>5</option>
                   </select>
                 </div>
               </div>
               <div class="col-lg-6 col-md-6 col-sm-6">
                 <div class="form-group">
                   <select class="selectpicker search-fields" name="garage">
                     <option>Garage</option>
                     <option>1</option>
                     <option>2</option>
                     <option>3</option>
                     <option>4</option>
                     <option>5</option>
                   </select>
                 </div>
               </div>
             </div>
             <div class="range-slider">
               <label>Area</label>
               <div data-min="0" data-max="10000" data-unit="Sq ft" data-min-name="min_area" data-max-name="max_area"
                 class="range-slider-ui ui-slider" aria-disabled="false"></div>
               <div class="clearfix"></div>
             </div>
             <div class="range-slider">
               <label>Price</label>
               <div data-min="0" data-max="150000" data-unit="USD" data-min-name="min_price" data-max-name="max_price"
                 class="range-slider-ui ui-slider" aria-disabled="false"></div>
               <div class="clearfix"></div>
             </div>
             <div class="form-group mb-0">
               <button type="submit" class="button-md button-theme btn-3 w-100">Search</button>
             </div>
           </form>
         </div>
         <!-- Advanced search end -->

         <!-- Category posts start -->
         <div class="sidebar-widget category-posts">
           <div class="main-title-2">
             <h1>Popular Category</h1>
           </div>
           <ul class="list-unstyled list-cat">
             <li><a href="#">Single Family </a> <span>(45) </span></li>
             <li><a href="#">Apartment </a> <span>(21) </span></li>
             <li><a href="#">Condo </a> <span>(23) </span></li>
             <li><a href="#">Multi Family </a> <span>(19) </span></li>
             <li><a href="#">Villa </a> <span>(19) </span></li>
             <li><a href="#">Other </a> <span>(22) </span></li>
           </ul>
         </div>
         <!-- Category posts end -->


         <!-- Helping box Start -->
         <div class="sidebar-widget helping-box clearfix">
           <div class="main-title-2">
             <h1>Helping Center</h1>
           </div>
           <div class="helping-center">
             <div class="icon"><i class="fa fa-map-marker"></i></div>
             <h4>Address</h4>
             <p>12d Wole Ariyo, Lekki phase 1, Lagos.</p>
           </div>
           <div class="helping-center">
             <div class="icon"><i class="fa fa-phone"></i></div>
             <h4>Phone</h4>
             <p><a href="tel:+234-706-534-6076">+234-706-534-6076</a> </p>
           </div>
         </div>
         <!-- Helping box end -->

         <!-- Latest reviews start
           <div class="sidebar-widget latest-reviews mb-30">
             <div class="main-title-2">
               <h1>Latest Reviews</h1>
             </div>
             <div class="latest-reviews-box d-flex mb-4">
               <a class="pr-3" href="#">
                 <img src="img/avatar/avatar-1.jpg" alt="avatar" class="flex-shrink-0 me-3">
               </a>
               <div class="detail">
                 <h3><a href="#">John Antony</a></h3>
                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiamrisus tortor, accumsan at,</p>
               </div>
             </div>
             <div class="latest-reviews-box d-flex">
               <a class="pr-3" href="#">
                 <img src="img/avatar/avatar-2.jpg" alt="avatar" class="flex-shrink-0 me-3">
               </a>
               <div class="detail">
                 <h3><a href="#">Karen Paran</a></h3>
                 <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Etiamrisus tortor, accumsan at,</p>
               </div>
             </div>
           </div>
            Latest reviews end -->
       </div>
     </div>
   </div>
 </div>
 <!-- Properties section body end -->

 <!-- Partners strat -->
 <div class="partners bg-white">
   <div class="container">
     <h4>Brands <span>$ Partners</span></h4>
     <div class="row">
       <div class="col-lg-12">
         <div class="custom-slider slide-box-btn">
           <div class="custom-box"><img src="img/brand/partner" alt="brand"></div>
           <div class="custom-box"><img src="img/brand/partner-2" alt="brand"></div>
           <div class="custom-box"><img src="img/brand/partner-3" alt="brand"></div>
           <div class="custom-box"><img src="img/brand/partner-4" alt="brand"></div>
           <div class="custom-box"><img src="img/brand/partner-5" alt="brand"></div>
           <div class="custom-box"><img src="img/brand/partner" alt="brand"></div>
           <div class="custom-box"><img src="img/brand/partner-2" alt="brand"></div>
           <div class="custom-box"><img src="img/brand/partner-3" alt="brand"></div>
           <div class="custom-box"><img src="img/brand/partner-4" alt="brand"></div>
           <div class="custom-box"><img src="img/brand/partner-5" alt="brand"></div>
         </div>
       </div>
     </div>
   </div>
 </div>
 <!-- Partners end -->

 <!--	Footer   start-->
 <?php include("include/footer.php");?>
 <!-- Footer end -->
