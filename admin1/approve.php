<?php require('function.php') ?>
<?php
$obj=new Helper;
$data=array("table_name"=>"approve");
$st=array("status"=>"Y");
array_push($data,$st);
array_push($data,$_GET);
$res=$obj->update_data($data);
if($res==1){
	$data_array=array("table_name"=>"download");
	$dw=array("did"=>$_GET['did'],"nofd"=>0);
	array_push($data_array,$dw);
	$res=$obj->insert_data($data_array);
	if($res==1){
		//echo "approved";
		header('location:approve_document.php?msg=Approved sucessfully');
		exit;
	}
	else{
		header('location:approve_document.php?msg=Not Approved');
		exit;
	}
}
else{
	header('location:approve_document.php?msg=Sorry Try Again');
	exit;
}
?>