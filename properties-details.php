 <!--	Header start  -->
 <?php include("include/headers.php");
extract($_REQUEST);

$id=$_REQUEST['id'];

$query=mysqli_query($con,"SELECT * FROM `sub_admins` WHERE  id='$id'");
$res=mysqli_fetch_array($query);

$id=$res['id'];
$phone=$res['phone'];


?>






 <?php  
extract($_REQUEST);

$id=$_REQUEST['id'];

$query=mysqli_query($con,"select * from property where id='$id'");
$res=mysqli_fetch_array($query);

$id=$res['id'];
$img=$res['image1'];
$bedroom=$res['bedroom'];
$bathroom=$res['bathroom'];
$hall=$res['hall'];
$kitchen=$res['kitchen'];
$balcony=$res['balcony'];
$sqr_price=$res['sqr_price'];
$description=$res['description'];
$title=$res['title'];
$price=$res['price'];
$address=$res['address'];
$video=$res['video'];
$property_owner=$res['property_owner'];
$property_type=$res['property_type'];
$lot_size=$res['lot_size'];
$land_area=$res['land_area'];
$status=$res['status'];
$address=$res['address'];
$map=$res['location'];


?>
 <!-- main header start -->

 <!-- Sub banner start -->
 <div class="sub-banner">
   <div class="overlay">
     <div class="container">
       <div class="breadcrumb-area">
         <h1>Properties Detail</h1>
         <ul class="breadcrumbs">
           <li><a href="index.html">Home</a></li>
           <li class="active">Properties Detail</li>
         </ul>
       </div>
     </div>
   </div>
 </div>
 <!-- Sub banner end -->

 <!-- Properties details page start -->
 <div class="properties-details-page content-area">
   <div class="container">
     <div class="row mb-20">
       <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12">
         <!-- Header properties start -->
         <div class="heading-properties clearfix sidebar-widget">
           <div class="pull-left">
             <h3><?php echo $title;?></h3>
             <p>
               <i class="fa fa-map-marker"></i><?php echo $address;?>,
             </p>
           </div>
           <div class="pull-right">
             <h3><span>₦<?php echo $price;?></span></h3>
             <h5>
               <?php echo $status;?>
             </h5>
           </div>
         </div>
         <!-- Header properties end -->

         <!-- Properties slider section start -->
         <div class="properties-slider-section mb-25">
           <div class="slider slider-for">
             <?php


$query=mysqli_query($con,"select * from property where id ='$id'");
$res=mysqli_fetch_array($query);
                    
$img1=$res['image1'];
$img2=$res['image2'];
$img3=$res['image3'];
$img4=$res['image4'];
                        ?>
             <div><img src="admin/images/property_image/<?php echo $img;?>" class="w-100 img-fluid" alt="photo"></div>
             <div><img src="admin/images/property_image/<?php echo $img1;?>" class="w-100 img-fluid" alt="photo"></div>
             <div><img src="admin/images/property_image/<?php echo $img2;?>" class="w-100 img-fluid" alt="photo"></div>
             <div><img src="admin/images/property_image/<?php echo $img3;?>" class="w-100 img-fluid" alt="photo"></div>
             <div><img src="admin/images/property_image/<?php echo $img4;?>" class="w-100 img-fluid" alt="photo"></div>
           </div>
           <div class="slider slider-nav">
             <div><img src="admin/images/property_image/<?php echo $img;?>" class="img-fluid" alt="photo"></div>
             <div><img src="admin/images/property_image/<?php echo $img1;?>" class="img-fluid" alt="photo"></div>
             <div><img src="admin/images/property_image/<?php echo $img2;?>" class="img-fluid" alt="photo"></div>
             <div><img src="admin/images/property_image/<?php echo $img3;?>" class="img-fluid" alt="photo"></div>
             <div><img src="admin/images/property_image/<?php echo $img4;?>" class="img-fluid" alt="photo"></div>
           </div>
         </div>
         <!-- Properties slider section end -->

         <!-- Properties details section start -->
         <div class="sidebar-widget">
           <!-- Advanced search start -->

           <!-- Advanced search end -->

           <!-- Properties description start -->
           <div class="properties-description mb-30">
             <div class="main-title-2">
               <h1><span>Description</span></h1>
             </div>
             <p><?php echo $description;?> </p>
           </div>
           <!-- Properties description end -->

           <!-- Properties condition start -->
           <div class="properties-condition mb-20">
             <div class="main-title-2">
               <h1><span>Condition</span></h1>
             </div>
             <div class="row">
               <div class="col-md-4 col-sm-4 col-xs-12">
                 <ul class="condition">
                   <li>
                     <i class="flaticon-bed"></i>Bedroom:<?php echo $bedroom;?>
                   </li>
                   <li>
                     <i class="flaticon-holidays"></i>Bathroom: <?php echo $bathroom;?>
                   </li>
                 </ul>
               </div>
               <div class="col-md-4 col-sm-4 col-xs-12">
                 <ul class="condition">
                   <li>
                     <i class="flaticon-square-layouting-with-black-square-in-east-area"></i>4800 sq ft
                   </li>
                   <li>
                     <i class="flaticon-monitor"></i>TV
                   </li>
                 </ul>
               </div>
               <div class="col-md-4 col-sm-4 col-xs-12">
                 <ul class="condition">
                   <li>
                     <i class="flaticon-vehicle"></i>1 Garage
                   </li>
                   <li>
                     <i class="flaticon-building"></i>Balcony: <?php echo $balcony;?>
                   </li>
                 </ul>
               </div>
             </div>
           </div>
           <!-- Properties condition end -->

           <!-- Properties amenities start -->
           <div class="properties-amenities">
             <div class="main-title-2">
               <h1><span>Amenities</span></h1>
             </div>
             <div class="row">
               <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                 <ul class="amenities">

                   <li>
                     <i class="flaticon-people-2"></i>Pool
                   </li>
                   <li>
                     <i class="flaticon-monitor"></i>TV
                   </li>
                   <li>
                     <i class="flaticon-weightlifting"></i>Gym
                   </li>
                 </ul>
               </div>
               <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                 <ul class="amenities">

                   <li>
                     <i class="flaticon-transport"></i>Parking
                   </li>

                 </ul>
               </div>
               <div class="col-lg-4 col-md-4 col-sm-4 col-xs-12">
                 <ul class="amenities">
                   <li>
                     <i class="flaticon-old-telephone-ringing"></i>Telephone
                   </li>
                   <li>
                     <i class="flaticon-person-enjoying-jacuzzi-hot-water-bath"></i>Jacuzzi
                   </li>

                 </ul>
               </div>
             </div>
           </div>
           <!-- Properties amenities end -->
         </div>
         <!-- Properties details section end -->


         <!-- Location start -->

         <!-- Location end -->
       </div>
       <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12">
         <!-- Sidebar start -->
         <div class="sidebar right">
           <!-- Advanced search start -->
           <div class="sidebar-widget advanced-search as2">
             <div class="main-title-2">

               <h1>Contact </h1>
               <p>Contact: </p>
             </div>

           </div>
           <!-- Advanced search end -->

           <!-- Social media start -->
           <div class="social-media sidebar-widget clearfix">
             <!-- Main Title 2 -->
             <div class="main-title-2">
               <h1><span>Social</span> Media</h1>
             </div>
             <!-- Social list -->
             <ul class="social-list">
               <li><a href="#" class="facebook-bg"><i class="fa fa-facebook"></i></a></li>
               <li><a href="#" class="twitter-bg"><i class="fa fa-twitter"></i></a></li>
               <li><a href="#" class="linkedin-bg"><i class="fa fa-linkedin"></i></a></li>
               <li><a href="#" class="google-bg"><i class="fa fa-google-plus"></i></a></li>
               <li><a href="#" class="rss-bg"><i class="fa fa-rss"></i></a></li>
             </ul>
           </div>
           <!-- Social media end -->


           <!-- Helping center start -->
           <div class="sidebar-widget helping-box clearfix">
             <div class="main-title-2">
               <h1>Helping Center</h1>
             </div>
             <div class="helping-center">
               <div class="icon"><i class="fa fa-map-marker"></i></div>
               <h4>Address</h4>
               <span>12d Wole Ariyo, Lekki phase 1, Lagos.</span>
             </div>
             <div class="helping-center">
               <div class="icon"><i class="fa fa-phone"></i></div>
               <h4>Phone</h4>
               <p><a href="tel:+234-706-534-6076">+234-706-534-6076</a> </p>
             </div>
           </div>
           <!-- Helping center end -->

         </div>
         <!-- Sidebar end -->
       </div>
     </div>
   </div>

   <!-- Recently properties start -->
   <div class="comon-slick recently-properties">
     <div class="container">
       <div class="main-title-2">
         <h1><span>Related Properties</span></h1>
       </div>
       <div class="slick row comon-slick-inner"
         data-slick='{"slidesToShow": 4, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>

         <?php 
        $query1=mysqli_query($con,"select * from sub_admins");
        $admin=mysqli_fetch_array($query1);
        $u_name=ucfirst($admin['firstname']);
        $query3 = mysqli_query($con, "SELECT * FROM `property` ORDER BY `property`.`id` DESC");
        while($row = mysqli_fetch_array($query3)){
          $user_id = $row['user_id'];    
        }
         $per_page_record = 4;  // Number of entries to show in a page.   
        // Look for a GET variable page if not found default is 1.        
        if (isset($_GET["page"])) {    
            $page  = $_GET["page"];    
        }    
        else {    
          $page=1;    
        }    
        $start_from = ($page-1) * $per_page_record; 
        $query=mysqli_query($con,"select property.*, sub_admins.phone FROM property INNER JOIN sub_admins ON property.user_id = sub_admins.id LIMIT $start_from, $per_page_record");
        while($res=mysqli_fetch_array($query))
        {
        $title = $res['title'];
        $id=$res['id'];
        $img=$res['image1'];
        $date = $res['date'];
        $property_owner = $res['property_owner'];
        $user_id = $res['user_id'];
        $role = $res['role'];
        $phone = $res['phone'];
        $sqr_price = $res['sqr_price'];
        $price = $res['price'];
        $bathroom = $res['bathroom'];
        $bedroom = $res['bedroom'];
        $bedroom = $res['lot_size'];
         $status = $res['status'];

        ?>
         <div class="item slide-box">
           <div class="property-2">
             <div class="property-inner">
               <div class="property-overflow">
                 <div class="property-photo">
                   <img src="admin/images/property_image/<?php echo $img;?>" alt="rp" class="img-fluid"
                     style="height:240px;width:320px">
                   <div class="listing-badges">
                     <span class="featured active"><?php echo $status ?></span>
                   </div>
                   <div class="price-ratings">
                     <div class="price">₦<?php echo $price ?></div>
                   </div>
                 </div>
               </div>
               <!-- content -->
               <div class="content">
                 <!-- title -->
                 <h4 class="title">
                   <a href="#"><?php echo $res['title'];?>,</a>
                 </h4>
                 <!-- Property address -->
                 <h3 class="property-address">
                   <a href="#">
                     <i class="fa fa-map-marker"></i><?php echo $res['address'];?>,
                   </a>
                 </h3>
               </div>
               <!-- Facilities List -->
               <ul class="facilities-list clearfix">
                 <li>
                   <i class="flaticon-square-layouting-with-black-square-in-east-area"></i>
                   <span><?php echo $res['lot_size'];?> sq ft</span>
                 </li>
                 <li>
                   <i class="flaticon-bed"></i>
                   <span>Bedroom:<?php echo $res['bedroom'];?>,</span>
                 </li>
                 <li>
                   <i class="flaticon-holidays"></i>
                   <span><?php echo $res['bathroom'];?>:Bathroom</span>
                 </li>
               </ul>
             </div>
           </div>
         </div>

         <?php } ?>
       </div>
     </div>
   </div>
   <!-- Recently properties end -->
 </div>
 <!-- Properties details page end -->

 <!-- Partners strat -->
 <div class="partners bg-white">
   <div class="container">
     <h4>Brands <span>$ Partners</span></h4>
     <div class="row">
       <div class="col-lg-12">
         <div class="custom-slider slide-box-btn">
           <div class="custom-box"><img src="" alt="brand"></div>
           <div class="custom-box"><img src="" alt="brand"></div>
           <div class="custom-box"><img src="" alt="brand"></div>
           <div class="custom-box"><img src="" alt="brand"></div>
           <div class="custom-box"><img src="" alt="brand"></div>
           <div class="custom-box"><img src="" alt="brand"></div>
           <div class="custom-box"><img src="" alt="brand"></div>
           <div class="custom-box"><img src="" alt="brand"></div>
           <div class="custom-box"><img src="" alt="brand"></div>
           <div class="custom-box"><img src="" alt="brand"></div>
         </div>
       </div>
     </div>
   </div>
 </div>
 <!-- Partners end -->


 <!--	Footer   start-->
 <?php include("include/footer.php");?>
 <!-- Footer end -->



 <script src="js/jquery.min.js"></script>
 <script src="js/bootstrap.bundle.min.js"></script>
 <script src="js/bootstrap-submenu.js"></script>
 <script src="js/rangeslider.js"></script>
 <script src="js/jquery.mb.YTPlayer.js"></script>
 <script src="js/wow.min.js"></script>
 <script src="js/bootstrap-select.min.js"></script>
 <script src="js/jquery.easing.1.3.js"></script>
 <script src="js/jquery.scrollUp.js"></script>
 <script src="js/jquery.mCustomScrollbar.concat.min.js"></script>
 <script src="js/leaflet.js"></script>
 <script src="js/leaflet-providers.js"></script>
 <script src="js/leaflet.markercluster.js"></script>
 <script src="js/dropzone.js"></script>
 <script src="js/jquery.filterizr.js"></script>
 <script src="js/jquery.magnific-popup.min.js"></script>
 <script src="js/slick.min.js"></script>
 <script src="js/maps.js"></script>
 <script src="js/sidebar.js"></script>
 <script src="js/app.js"></script>

 <!-- IE10 viewport hack for Surface/desktop Windows 8 bug -->
 <script src="js/ie10-viewport-bug-workaround.js"></script>
 <!-- Custom javascript -->
 <script src="js/ie10-viewport-bug-workaround.js"></script>

 <script src="../../../../../maps/api/js?key=AIzaSyD4omYJlOaP814WDcCG8eubXcbhB-44Uac"></script>
 <script>
function LoadMap(propertes) {
  var defaultLat = 40.7110411;
  var defaultLng = -74.0110326;
  var mapOptions = {
    center: new google.maps.LatLng(defaultLat, defaultLng),
    zoom: 15,
    scrollwheel: false,
    styles: [{
        featureType: "administrative",
        elementType: "labels",
        stylers: [{
          visibility: "off"
        }]
      },
      {
        featureType: "water",
        elementType: "labels",
        stylers: [{
          visibility: "off"
        }]
      },
      {
        featureType: 'poi.business',
        stylers: [{
          visibility: 'off'
        }]
      },
      {
        featureType: 'transit',
        elementType: 'labels.icon',
        stylers: [{
          visibility: 'off'
        }]
      },
    ]
  };
  var map = new google.maps.Map(document.getElementById("map"), mapOptions);
  var infoWindow = new google.maps.InfoWindow();
  var myLatlng = new google.maps.LatLng(40.7110411, -74.0110326);

  var marker = new google.maps.Marker({
    position: myLatlng,
    map: map
  });
  (function(marker) {
    google.maps.event.addListener(marker, "click", function(e) {
      infoWindow.setContent("" +
        "<div class='map-properties contact-map-content'>" +
        "<div class='map-content'>" +
        "<p class='address'>123 Kathal St. Tampa City, </p>" +
        "<ul class='map-properties-list'> " +
        "<li><i class='fa fa-phone'></i>  +0477 8556 552</li> " +
        "<li><i class='fa fa-envelope'></i>  info@themevessel.com</li> " +
        "<li><a href='index.html'><i class='fa fa-globe'></i>  http://http://themevessel.com</li></a> " +
        "</ul>" +
        "</div>" +
        "</div>");
      infoWindow.open(map, marker);
    });
  })(marker);
}
LoadMap();
 </script>

 </body>

 </html>
