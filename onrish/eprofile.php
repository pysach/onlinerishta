<?php

session_start();
require_once 'connection.php';

//include 'session.php';
$eml=$_SESSION['logged_email'];


         $stmt=$con->prepare("SELECT * from sd_client where sd_email=:email"); 
        
             $stmt->bindParam(':email', $eml, PDO::PARAM_STR); 
             $stmt->execute();
             $row=$stmt->fetch(PDO::FETCH_ASSOC);
      
              if($stmt->rowCount() > 0) 
                 {
                //   if($eml==$row["email"]) 
                //      {
                      if($eml==$row["sd_email"] ) 
                         {
                           $_SESSION['thank'] = $row['sd_name'];
                           $_SESSION['tbl'] = $row['tbl'];
                           $_SESSION['sex'] = $row['sd_sex'];
                           $_SESSION['chmail'] = $row['sd_email'];
                           $_SESSION['smob'] = $row['sd_mobile'];
                           $_SESSION['sd_rel']=$row['sd_religion'];
                           $_SESSION['s_cast']=$row['scast'];



                             $insert_query = "INSERT INTO login_details ( user_id, last_activity) VALUES (:user_id, DATE_SUB(NOW(), INTERVAL 5400 SECOND))";
                             $statement = $con->prepare($insert_query);
                             $statement->execute( array( 'user_id'  => $_SESSION['tbl'],));
                                  $login_id = $con->lastInsertId();
                                  $_SESSION["type"] = $_SESSION['smob'];
                                  $_SESSION["login_id"] = $login_id;
                                  
                                        $_SESSION['username'] =$_SESSION['thank']; 
                                        $_SESSION['user_id'] = $_SESSION['tbl'];
                        				$sub_query = "
                        				INSERT INTO login_detail 
                        	     		(user_id) 
                        	     		VALUES ('".$_SESSION['tbl']."')
                        				";
                        				$statement = $con->prepare($sub_query);
                        				$statement->execute();
                        				$_SESSION['login_details_id'] = $con->lastInsertId();



                           if($_SESSION['smob']=='9335994716')
                              {
                                $_SESSION['adm']=$row["sd_mobile"];
                                $loginMsg = "Successfully Login as Admin...";   
                                  //header("Refresh: 0; url=adlog.php");
                                  
                                  ?>
                                  <script>
                                      window.location.replace("https://onlinerishta.in/adlog.php");
                                      </script>
                                  <?php
                                  
                                  header('location: adlog.php');
                               }

                                else

                                {
                                   $loginMsg = "Successfully Login ...";   
                                   header("Refresh: 0; url=profile.php");
                                }
                    
                                      
                          }
                      else
                          {
                           $errorMsg[]="Invalid password";
                
                            $mail = new PHPMailer(true);
                        
                            $mail->isSMTP();
                            $mail->Host       = "mail.onlinerishta.in";  // <-- replace
                            $mail->SMTPAuth   = true;
                            $mail->Username   = "support@onlinerishta.in";   // <-- replace
                            $mail->Password   = "LoopIN!15";  // <-- replace
                        
                            // $mail->SMTPSecure = PHPMailer::ENCRYPTION_STARTTLS;
                            // $mail->Port = 587;
                        
                            $mail->SMTPSecure = PHPMailer::ENCRYPTION_SMTPS;
                            $mail->Port       = 465;
                        
                            $mail->setFrom("support@onlinerishta.in", "Onlinerishta.in");
                            $mail->addAddress("d.sachin@live.in");
                        
                            $mail->isHTML(true);
                            $mail->Subject = $name. " Tried to login with wrong Password";
                            $mail->Body    = nl2br("Visited: $date \r\n From: $name\r\n   Current IP: $ip \r\n Current City: $city-$country "); //here  nl2br is for new line
                        
                            $mail->send();
    
    
    
                           
                          }
                //      }
                //   else
                //      {
                //       $errorMsg[]="Invalid Username ";
                //      }
               }
               else
               {
                echo $errorMsg[]= $eml."- This Email ID is not Registered With us";
               ?>

                <script>
                setTimeout(() => {
                                      window.location.href = 'register.php';
                                    }, 3000);
                </script>
        
        
        <?php       }  ?>