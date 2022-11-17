<?php
 

include('config.php');
 
$uid = $_GET['id'];

//Update admin status
$update = "DELETE FROM sub_admins WHERE id = {$uid}";

if (mysqli_query($con, $update)){
    
    //Redirect to login page 
    ?>
<script>
window.location = "view-users.php";
</script>';

<?php
}else {
    
    echo mysqli_error($con);
}




?>
