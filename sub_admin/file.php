  <?php
									
										$id=$_SESSION['loggin'];
						$sql="SELECT * FROM property WHERE user_id =".$id;
									while($row=mysqli_fetch_row($sql))
									{
								?>
