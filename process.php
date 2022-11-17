<?php

session_start();

include('include/config.php');
$firstname = $_SESSION['firstname'];
$lastname = $_SESSION['lastname'];
$address = $_SESSION['address'];
$phone_number = $_SESSION['phone'];
$role = $_SESSION['role'];
$email = $_SESSION['email'];
$password = $_SESSION['password'];


 


if (isset($_GET["transaction_id"])||isset($_GET["status"])||
isset($_GET["tx_ref"])) {
    $trans_id = htmlspecialchars($_GET['transaction_id']);
    $trans_status = htmlspecialchars($_GET['status']);
    $trans_ref = htmlspecialchars($_GET['tx_ref']);

    //Verify Endpoint
    $url = "https://api.flutterwave.com/v3/transactions/".$trans_id."/verify";

    //Create cURL session
    $curl = curl_init($url);

    //Turn off SSL checker
    curl_setopt($curl, CURLOPT_SSL_VERIFYPEER, 0);

    //Decide the request that you want
    curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);

    curl_setopt($curl, CURLOPT_CUSTOMREQUEST, "GET");
    
    //Set the API headers
    curl_setopt($curl, CURLOPT_HTTPHEADER, [
        "Authorization: Bearer FLWSECK_TEST-54b1f7a085bf73822e29ca55b190461a-X",
        "Content-Type: Application/json"
    ]);

    //Run cURL
    $run = curl_exec($curl);

 //Check for erros
    $error = curl_error($curl);
    if($error){
        die("Curl returned some errors: " . $error);
    }

  // echo"<pre>" . $run . "</pre>";
   //Convert to json obj
   $result = json_decode($run);
  
   if ($result-> status) {
  
  $name =  $result->data->customer->name;
  $email =  $result->data->customer->email; 
  $tx_ref = $result->data->tx_ref;
  $date  = $result->data->created_at;
  $tx_id = $result->data->id; 
  $status = $result->data->status;
  $amount =  $result->data->meta->price;
  $charged_amount = $result->data->charged_amount;
  

  if (($status != $trans_status) || ($trans_id != $tx_id)) {
     header("Location: agent-signup.php");
     
  }elseif ($charged_amount >= $amount)  {
    echo "<center>
    <div>
    <h2>Payment was successful</h2>
    </div>
    </center>";
                    $query = "INSERT INTO `transaction` (`name`, `email`, `txt_ref`, `date`, `tx_id`, `status`, `amount`) VALUES
                    ('$name','$email','$tx_ref','$date','$tx_id','$status','$charged_amount')" ;
                    if (mysqli_query($con, $query)) {
                 echo "$name Your subscription was Successful";
                   } else {
                           echo "Error: " . $query . "<br>" . mysqli_error($con);
                      exit();
                       }                      
    
                    $newpass = md5($password); 
                    $query = "INSERT INTO `sub_admins` ( `firstname`, `lastname`, `address`, `phone`, `role`, `email`, `password`, `date`, `payment_status`, `status`) VALUES
                    ('$firstname', '$lastname', '$address', '$phone_number', '$role', '$email', '$newpass',now(),'INACTIVE', 'PENDING')";  
                    $result = mysqli_query($con, $query);

                    

                    if($result){ 
                        echo "<script>window.location='update_payment.php'</script>";
                    }else{
                        echo "Opps Error Occurred Try Again";
                        exit;
                       
                        }
                    mysqli_close($con);


                    
				}else {
                    echo 'Fraud transaction detected';
                }
}else {
   echo 'Can not process payment';
}
  curl_close($curl);

}
?>
