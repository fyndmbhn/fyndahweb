 <!-- Recent cars -->
 <div class="col-lg-3 col-md-6 col-sm-6 col-xs-12">

   <div class="footer-item popular-posts">
     <div class="main-title-2">
       <h1>Popular Posts</h1>
     </div>
     <?php 
        $query1=mysqli_query($con,"select * from sub_admins");
        $admin=mysqli_fetch_array($query1);
        
        $u_name=ucfirst($admin['firstname']);
        
        
        $query3 = mysqli_query($con, "select * from property");
        
        while($row = mysqli_fetch_array($query3)){
            
          $user_id = $row['user_id'];    
        }
        
        
        
        
        
         $per_page_record = 3;  // Number of entries to show in a page.   
        // Look for a GET variable page if not found default is 1.        
        if (isset($_GET["page"])) {    
            $page  = $_GET["page"];    
        }    
        else {    
          $page=2;    
        }    
        $start_from = ($page-2) * $per_page_record; 

        $query=mysqli_query($con,"SELECT property.*, sub_admins.phone FROM property INNER JOIN sub_admins ON property.user_id = sub_admins.id LIMIT $start_from, $per_page_record");
        while($res=mysqli_fetch_array($query))
        {
        $id=$res['id'];
        $img=$res['image1'];
        $title=$res['title'];
        $date = $res['date'];
        $property_owner = $res['property_owner'];
        $user_id = $res['user_id'];
        $role = $res['role'];
        $phone = $res['phone'];
        $sqr_price = $res['sqr_price'];
        $timestamp = 1394003958;
        echo(date("F d, Y h:i:s", $timestamp));
        ?>
     <div class="d-flex mb-3 popular-posts-box">
       <a class="pr-3" href="properties-details.php">
         <img src="admin/images/property_image/<?php echo $img;?>" alt="small-photo" class="flex-shrink-0 me-3">
       </a>
       <div class="detail align-self-center">
         <h4>
           <a href="properties-details.php"><?php echo $res['title'];?></a>
         </h4>
         <div class="listing-post-meta">
           Sep 18, 2021 | <a href="#">#<?php echo $res['price'];?></a>
         </div>
       </div>
     </div>
     <?php } ?>
   </div>
 </div>
