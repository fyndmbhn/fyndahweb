<?php

session_start();

include('config.php');

$email = $_SESSION['email'];
$uid = $_GET['id'];

//Update admin status
$update = "UPDATE sub_admins set status='ACTIVE', payment_status ='PAID' WHERE   id='$uid'";

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
