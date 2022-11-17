 <!--	Header start  -->

 <?php include("include/headers.php");?>
 <!--	Header end  -->
 <!-- Banner start -->
 <div class="banner text-center" id="banner2">
   <div id="carouselExampleCaptions" class="carousel slide" data-bs-ride="carousel">
     <div class="carousel-indicators">
       <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active"
         aria-current="true" aria-label="Slide 1"></button>
       <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1"
         aria-label="Slide 2"></button>
       <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2"
         aria-label="Slide 3"></button>
     </div>
     <div class="carousel-inner">
       <div class="carousel-item item-bg active">
         <img class="d-block w-100 h-100" src="./images/banner/h-banner1.jpg" alt="banner-photo">
         <div class="carousel-caption banner-slider-inner d-flex h-100">
           <div class="banner-content container align-self-center text-center">
             <h1>Find your Dream House</h1>
             <p>Allow us to guide you through the innovative stress free approach in finding your dream Properties.</p>
             <a class="btn-2 btn-defaults" href="pricing.php">
               <span>Get Started Now</span> <i class="arrow"></i>
             </a>
             <a class="btn-1 btn-outline-1" href="howitworks.php">
               <span>Learn More</span> <i class="arrow"></i>
             </a>
           </div>
         </div>
       </div>
       <div class="carousel-item item-bg">
         <img class="d-block w-100 h-100" src="./images/banner/h-banner2.jpg" alt="banner-photo">
         <div class="carousel-caption banner-slider-inner d-flex h-100">
           <div class="banner-content container align-self-center text-center">
             <h1>Sweet Home For Small Family</h1>
             <p>Allow us to guide you through the innovative stress free approach in finding your dream Properties.</p>
             <a class="btn-2 btn-defaults" href="#">
               <span>Get Started Now</span> <i class="arrow"></i>
             </a>
             <a class="btn-1 btn-outline-1" href="#">
               <span>Learn More</span> <i class="arrow"></i>
             </a>
           </div>
         </div>
       </div>
       <div class="carousel-item item-bg">
         <img class="d-block w-100 h-100" src="./images/banner/h-banner3.jpg" alt="banner-photo">
         <div class="carousel-caption banner-slider-inner d-flex h-100">
           <div class="banner-content container align-self-center text-center">
             <h1>Best Place To Find Home</h1>
             <p>Allow us to guide you through the innovative stress free approach in finding your dream Properties.</p>
             <a class="btn-2 btn-defaults" href="#">
               <span>Get Started Now</span> <i class="arrow"></i>
             </a>
             <a class="btn-1 btn-outline-1" href="#">
               <span>Learn More</span> <i class="arrow"></i>
             </a>
           </div>
         </div>
       </div>
     </div>
     <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
       <span class="carousel-control-prev-icon" aria-hidden="true"></span>
       <span class="visually-hidden">Previous</span>
     </button>
     <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
       <span class="carousel-control-next-icon" aria-hidden="true"></span>
       <span class="visually-hidden">Next</span>
     </button>
   </div>
 </div>
 <!-- Banner end -->

 <!-- Search area start -->
 <div class="search-area">
   <div class="sub-banner">
     <div class="overlay">
       <div class="container">
         <div class="breadcrumb-area">
           <h1>FIND YOUR NEXT DREAM HOME</h1>
           <ul class="breadcrumbs">

           </ul>
         </div>
       </div>
     </div>
   </div>
   <div class="container">

     <div class="search-area-inner">
       <div class="search-contents ">
         <form method="get" action="propertysearch.php" class="refine-inner-area bg-black"
           data-gtm-form-interact-id="2">
           <div class="row">
             <div class="col-lg-3 col-md-6 col-sm-6 col-6">
               <div class="form-group">
                 <select class="selectpicker search-fields" name="lot_size">
                   <option>Lot Size</option>
                   <option>1000</option>
                   <option>900</option>
                   <option>800</option>
                   <option>700</option>
                   <option>600</option>
                   <option>500</option>
                   <option>400</option>
                   <option>300</option>
                   <option>200</option>
                   <option>100</option>
                 </select>
               </div>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 col-6">
               <div class="form-group">
                 <select class="selectpicker search-fields" name="ptype">
                   <option>Property Status</option>
                   <option value="sale">For Sale</option>
                   <option value="rent">For Rent</option>
                 </select>
               </div>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 col-6">
               <div class="form-group">
                 <div class="form-group">
                   <input type="text" class="form-control" name="address" placeholder="Where do you want to live?"
                     required>
                 </div>
               </div>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 col-6">
               <div class="form-group">
                 <select class="form-control" name="property_type">
                   <option value="">Select Property Type</option>
                   <option value="apartment">Apartment</option>
                   <option value="flat">Flat</option>
                   <option value="building">Building</option>
                   <option value="house">House</option>
                   <option value="villa">Villa</option>
                   <option value="office">Office</option>
                   <option value="land">Land</option>
                 </select>
               </div>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 col-6">
               <div class="form-group">

                 <select class="selectpicker search-fields" name="bedroom">
                   <option value="">Bed</option>
                   <option value="1">1 bedroom</option>
                   <option value="2">2 bedroom</option>
                   <option value="3">3 bedroom</option>
                   <option value="4">4 bedroom</option>
                   <option value="5">5 bedroom</option>
                   <option value="6">6 bedroom</option>
                   <option value="7">7 bedroom</option>
                   <option value="8">8 bedroom</option>
                   <option value="9">9 bedroom</option>
                   <option value="10">10 bedroom</option>
                 </select>
               </div>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 col-6">
               <div class="form-group">

                 <select class="selectpicker search-fields" name="price">

                   <option value="">Min price</option>
                   <option value="50000">50,000</option>
                   <option value="100000">100,000</option>
                   <option value="200000">200,000</option>
                   <option value="300000">300,000</option>
                   <option value="400000">400,000</option>
                   <option value="500000">500,000</option>
                   <option value="600000">600,000</option>
                   <option value="700000">700,000</option>
                   <option value="800000">800,000</option>
                   <option value="900000">900,000</option>
                   <option value="1000000">1million</option>
                   <option value="2000000">2million</option>
                   <option value="3000000">3million</option>
                   <option value="5000000">5million</option>
                   <option value="10000000">10million</option>
                   <option value="20000000">20million</option>
                   <option value="30000000">30million</option>
                   <option value="40000000">40million</option>
                   <option value="50000000">50million</option>
                   <option value="100000000">100million</option>
                 </select>
               </div>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 col-6">
               <div class="form-group">

                 <select class="selectpicker search-fields" name="price">
                   <option value="">Max price</option>
                   <option value="500000">500,000</option>
                   <option value="600000">600,000</option>
                   <option value="700000">700,000</option>
                   <option value="800000">800,000</option>
                   <option value="900000">900,000</option>
                   <option value="1000000">1million</option>
                   <option value="2000000">2million</option>
                   <option value="3000000">3million</option>
                   <option value="5000000">5million</option>
                   <option value="10000000">10million</option>
                   <option value="20000000">20million</option>
                   <option value="30000000">30million</option>
                   <option value="40000000">40million</option>
                   <option value="50000000">50million</option>
                   <option value="100000000">100million</option>
                   <option value="200000000">200million</option>
                   <option value="300000000">300million</option>
                   <option value="500000000">500million</option>
                   <option value="1000000000">1billion</option>
                   <option value="2000000000">2billion</option>
                   <option value="5000000000">5billion</option>
                   <option value="10000000000">10billion</option>
                 </select>
               </div>
             </div>
             <div class="col-lg-3 col-md-6 col-sm-6 col-6">
               <div class="form-group">
                 <button class="search-button btn-3" type="submit" name="filter">Search</button>
               </div>
             </div>
           </div>
         </form>
       </div>
     </div>
   </div>
 </div>
 <!-- Search area start -->

 <!-- Featured properties start -->
 <div class="content-area featured-properties">
   <div class="container">
     <!-- Main title -->
     <div class="main-title">
       <h1>Featured Properties</h1>
       <p> Our Top Rated And Featured Properties</p>
     </div>
     <div class="row">
       <?php 
        $query1=mysqli_query($con,"select * from sub_admins, admin");
        $admin=mysqli_fetch_array($query1);
        $u_name=ucfirst($admin['firstname']);
        $query3 = mysqli_query($con, "select * from property  ");
        while($row = mysqli_fetch_array($query3)){
         
        }
         $per_page_record = 8;  // Number of entries to show in a page.   
        // Look for a GET variable page if not found default is 1.        
        if (isset($_GET["page"])) {    
            $page  = $_GET["page"];    
        }    
        else {    
          $page=1;    
        }    
        $start_from = ($page -1) * $per_page_record; 
        $query=mysqli_query($con,"select property.*  , sub_admins.phone FROM property  INNER JOIN sub_admins ON property.user_id = sub_admins.id WHERE property.isFeatured = 'Yes'  LIMIT $start_from, $per_page_record");
        while($res=mysqli_fetch_array($query))
        {
        $title = $res['title'];
        $id=$res['id'];
        $img=$res['image2'];
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

        ?>
       <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
         <div class="property-3">
           <img src="admin/images/property_image/<?php echo $img;?>" alt="photo" class="img-fluid w-250 h-300">
           <div class="featured-tag2">Featured</div>
           <div class="sale-tag"><?php echo $res['price'];?></div>
           <div class="ling-section">
             <h3>
               <a href="properties-details.php?id=<?php echo $id;?>"><?php echo $res['title'];?></a>
             </h3>
             <ul class="facilities-list">

               <li><?php echo $res['bedroom'];?>: Beds</li>
               <li><?php echo $res['bathroom'];?>: Baths</li>
               <li><?php echo $res['lot_size'];?>: SQ FT</li>
               <li><?php echo $res['balcony'];?>: Balcony</li>
             </ul>
             <a href="properties-details.php?id=<?php echo $id;?>" class="read-more-btn">Read More</a>
           </div>
         </div>
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
       <?php } ?>
     </div>
   </div>
 </div>
 <!-- Featured properties end -->









 <div class="content-area featured-properties">
   <div class="container">
     <!-- Main title -->
     <div class="main-title">
       <h1>Recently Listed Properties</h1>
       <p> our top recently listed properties</p>
     </div>
     <div class="row">
       <?php 
        $query1=mysqli_query($con,"select * from sub_admins");
        $admin=mysqli_fetch_array($query1);
        $u_name=ucfirst($admin['firstname']);
        $query3 = mysqli_query($con, "select * from property");
        while($row = mysqli_fetch_array($query3)){
          $user_id = $row['user_id'];    
        }
         $per_page_record = 6;  // Number of entries to show in a page.   
        // Look for a GET variable page if not found default is 1.        
        if (isset($_GET["page"])) {    
            $page  = $_GET["page"];    
        }    
        else {    
          $page=1;    
        }    
        $start_from = ($page=1) * $per_page_record; 
        $query=mysqli_query($con,"select property.*, sub_admins.phone FROM property INNER JOIN sub_admins ON property.user_id = sub_admins.id LIMIT $start_from, $per_page_record");
        while($res=mysqli_fetch_array($query))
        {
        $title = $res['title'];
        $id=$res['id'];
        $img=$res['image2'];
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

        ?>
       <div class="col-lg-4 col-md-6 col-sm-12 col-xs-12">
         <div class="property-3">
           <img src="admin/images/property_image/<?php echo $img;?>" alt="photo" class="img-fluid w-150 h-100">
           <div class="featured-tag2">Recent</div>
           <div class="sale-tag"><?php echo $res['price'];?></div>
           <div class="ling-section">
             <h3>
               <a href="properties-details.php?id=<?php echo $id;?>"><?php echo $res['title'];?></a>
             </h3>
             <ul class="facilities-list">

               <li><?php echo $res['bedroom'];?>: Beds</li>
               <li><?php echo $res['bathroom'];?>: Baths</li>
               <li><?php echo $res['lot_size'];?>: SQ FT</li>
               <li><?php echo $res['balcony'];?>: Balcony</li>
             </ul>
             <a href="properties-details.php?id=<?php echo $id;?>" class="read-more-btn">Read More</a>
           </div>
         </div>
       </div>
       <?php } ?>
     </div>
   </div>
 </div>
 <!-- Our service end -->

 <!-- Counters 2 strat -->
 <div class="counters-2">
   <div class="container">
     <div class="row g-0">
       <div class="col-lg-3 col-md-6 col-sm-6 border-r border-l">
         <div class="counter-box-2">
           <i class="flaticon-tag"></i>
           <h1 class="counter">104967</h1>
           <p>Listings For Sale</p>
         </div>
       </div>
       <div class="col-lg-3 col-md-6 col-sm-6 border-r">
         <div class="counter-box-2">
           <i class="flaticon-symbol-1"></i>
           <h1 class="counter">32709</h1>
           <p>Listings For Rent</p>
         </div>
       </div>
       <div class="col-lg-3 col-md-6 col-sm-6 border-r">
         <div class="counter-box-2">
           <i class="flaticon-people"></i>
           <h1 class="counter">2301</h1>
           <p>Agents</p>
         </div>
       </div>
       <div class="col-lg-3 col-md-6 col-sm-6 border-r ">
         <div class="counter-box-2">
           <i class="flaticon-people-1"></i>
           <h1 class="counter">208000</h1>
           <p>Monthly Visits</p>
         </div>
       </div>
     </div>
   </div>
 </div>
 <!-- Counters 2 end -->

 <!-- Popular Places strat -->
 <div class="popular-places content-area-12">
   <div class="container">
     <!-- Main title -->
     <div class="main-title">
       <h1>Popular Places</h1>
       <p>Our most searched and requested places.</p>
     </div>
     <div class="row g-0">
       <div class="col-lg-8 col-md-12 col-sm-12 wow fadeInLeft delay-04s">
         <div class="row">
           <div class="col-md-6 col-sm-12 col-pad">
             <div class="popular-places-box">
               <div class="popular-places-overflow">
                 <div class="popular-places-photo">
                   <img class="img-fluid w-100" src="img/popular-places/lagos.jpg" alt="popular-places">
                 </div>
               </div>
               <div class="listings_no">4457 Properties</div>
               <div class="ling-section">
                 <h3>
                   <a href="#">Lagos</a>
                 </h3>
                 <p></p>
               </div>
             </div>
           </div>
           <div class="col-md-6 col-sm-12 col-pad">
             <div class="popular-places-box">
               <div class="popular-places-overflow">
                 <div class="popular-places-photo">
                   <img class="img-fluid w-100" src="img/popular-places/abuja.jpg" alt="popular-places">
                 </div>
               </div>
               <div class="listings_no">2224 Properties</div>
               <div class="ling-section">
                 <h3>
                   <a href="#">Abuja</a>
                 </h3>
                 <p></p>
               </div>
             </div>
           </div>
           <div class="col-md-6 col-sm-12 col-pad">
             <div class="popular-places-box">
               <div class="popular-places-overflow">
                 <div class="popular-places-photo">
                   <img class="img-fluid w-100" src="img/popular-places/owerri.jpg" alt="popular-places">
                 </div>
               </div>
               <div class="listings_no">564 Properties</div>
               <div class="ling-section">
                 <h3>
                   <a href="#">Owerri</a>
                 </h3>
                 <p></p>
               </div>
             </div>
           </div>
           <div class="col-md-6 col-sm-12 col-pad">
             <div class="popular-places-box">
               <div class="popular-places-overflow">
                 <div class="popular-places-photo">
                   <img class="img-fluid w-100" src="img/popular-places/akwa.jpg" alt="popular-places">
                 </div>
               </div>
               <div class="listings_no">1684 Properties</div>
               <div class="ling-section">
                 <h3>
                   <a href="#">Akwa Ibom</a>
                 </h3>
                 <p></p>
               </div>
             </div>
           </div>
         </div>
       </div>
       <div class="col-lg-4 col-md-12 col-sm-12 wow fadeInRight delay-04s col-pad2">
         <div class="popular-places-box">
           <div class="popular-places-overflow">
             <div class="popular-places-photo">
               <img class="img-fluid w-100 big" src="img/popular-places/rivers.jpg" alt="popular-places">
             </div>
           </div>
           <div class="listings_no">1296 Properties</div>
           <div class="ling-section">
             <h3>
               <a href="#">Rivers </a>
             </h3>
             <p></p>
           </div>
         </div>
       </div>
     </div>
   </div>
 </div>
 <!-- Popular places end -->


 <!-- Agent section start -->

 <!-- Agent section end -->

 <!-- Testimonials 2 -->
 <div class="testimonials-2 comon-slick">
   <div class="container">
     <div class="row">
       <div class="col-lg-4 col-md-12 col-sm-12 col-xs-12 align-self-center wow fadeInLeft delay-04s">
         <div class="sec-title-three">
           <h2>Testimonials</h2>
           <p>These is just some of the reviews from some of ourur many clients.</p>
         </div>
       </div>
       <div class="col-lg-8 col-md-12 col-sm-12 col-xs-12 wow fadeInRight delay-04s">
         <div class="slick row comon-slick-inner"
           data-slick='{"slidesToShow": 2, "responsive":[{"breakpoint": 1024,"settings":{"slidesToShow": 2}}, {"breakpoint": 768,"settings":{"slidesToShow": 1}}]}'>
           <div class="item slide-box">
             <div class="testimonials-box">
               <div class="detail clearfix">
                 <p><i class="fa fa-quote-left"></i> I have used other property platforms in the past but fyndah.com
                   is
                   exceptional. I got four buyers within my first month of signing up on fyndah.com. <i
                     class="fa fa-quote-right"></i></p>
                 <div class="user-info d-flex">
                   <a class="pr-3" href="#">
                     <img src="img/avatar/" alt="user" class="flex-shrink-0 me-3">
                   </a>
                   <div class="detail align-self-center">
                     <h5>
                       <a href="#">~Samuel </a>
                     </h5>
                     <p>Estate Agent</p>
                   </div>
                 </div>
               </div>
             </div>
           </div>
           <div class="item slide-box">
             <div class="testimonials-box">
               <div class="detail clearfix">
                 <p><i class="fa fa-quote-left"></i>I had a bungalow for sale being marketed by many agents for years
                   but
                   none made any progress. I signed up to fyndah.com
                   to try marketing and within 2 weeks my property was sold. <i class="fa fa-quote-right"></i></p>
                 <div class="user-info d-flex">
                   <a class="pr-3" href="#">
                     <img src="img/avatar/" alt="user" class="flex-shrink-0 me-3">
                   </a>
                   <div class="detail align-self-center">
                     <h5>
                       <a href="#">~Mr Johnson</a>
                     </h5>
                     <p>Property Owner</p>
                   </div>
                 </div>
               </div>
             </div>
           </div>
           <div class="item slide-box">
             <div class="testimonials-box">
               <div class="detail clearfix">
                 <p><i class="fa fa-quote-left"></i> As a brokerage firm we always
                   look out for the best platforms to market properties for our clients
                   and we are pleased with what the fyndah.com platform has helped us achieve.
                   <i class="fa fa-quote-right"></i>
                 </p>
                 <div class="user-info d-flex">
                   <a class="pr-3" href="#">
                     <img src="img/avatar/" alt="user" class="flex-shrink-0 me-3">
                   </a>
                   <div class="detail align-self-center">
                     <h5>
                       <a href="#">~KC Properties</a>
                     </h5>
                     <p>Real Estate Consultants</p>
                   </div>
                 </div>
               </div>
             </div>
           </div>
         </div>
       </div>
     </div>
   </div>
 </div>
 <!-- Testimonial 2 end -->
 <div class="clearfix"></div>
 <!-- Our newslatters strat -->
 <div class="our-newslatters">
   <div class="container">
     <div class="row">
       <div class="col-lg-12">
         <h3>Get Newsletter</h3>
         <p>Sign Up for Our Newsletter to get Latest Updates and Offers. Subscribe to receive news in your inbox.
           Thank you!</p>
         <div class="form-info">
           <form class="form-inline d-flex" action="./news-letter/send.php" method="post" id="newsletter"
             name="newsletter">
             <input class="form-control" type="email" name="signup-email" id="email2" placeholder="Email Address...">
             <button class="btn button-theme btn-md" type="submit" name="signup-button"
               id="signup-button">Signup</button>
           </form>
           <div id="response"></div>
         </div>
       </div>
     </div>
   </div>
 </div>
 <!-- Our newslatters end -->
 <!--	Footer   start-->
 <?php include("include/footer.php");?>
 <!--	Footer   start-->
