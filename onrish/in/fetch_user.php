<?php
include('database_connection.php');
include('../session.php');
$g=$_SESSION['sex'];
if($g=='Male') { $g='Female';} elseif ($g=='Female'){ $g='Male';}

date_default_timezone_set('Asia/Calcutta');
$date = date('m/d/Y h:i:s a', time());

$query = "
SELECT * FROM sd_client 
WHERE tbl != '".$_SESSION['user_id']."' AND sd_sex='".$g."'
";

$statement = $connect->prepare($query);

$statement->execute();

$result = $statement->fetchAll();

$output = '
<table class="table table-bordered table-striped">
	
';

foreach($result as $row)
{
	$status = '';
	$sexx = '';
	$current_timestamp = strtotime(date("Y-m-d H:i:s") . '- 5 second');
	$current_timestamp = date('Y-m-d H:i:s', $current_timestamp);
	$user_last_activity= fetch_user_last_activity($row['tbl'], $connect);
                  $sexx=$row['sd_sex'];
	
	if($user_last_activity > $current_timestamp)
	{

	$output .= '
		<button type="button" class="btn btn-info btn-xs start_chat" data-touserid="'.$row['tbl'].'" data-tousername="'.$row['sd_name'].'">'.$row['sd_name'].' '.count_unseen_message($row['tbl'], $_SESSION['user_id'], $connect).' '.fetch_is_type_status($row['tbl'], $connect).'</button>
	      ';
	
    }
	else
	{ 

		$output .= '
		<button type="button" class="btn btn-info-off btn-xs start_chat" data-touserid="'.$row['tbl'].'" data-tousername="'.$row['sd_name'].'">'.$row['sd_name'].fetch_is_type_status($row['tbl'], $connect).'</button>
	       ';   	
    }	
}
$output .= '</table>';
echo $output;
?>