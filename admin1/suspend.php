<?php require('function.php') ?>
<?php
$obj=new Helper;
$data=array("table_name"=>"approve");
$st=array("status"=>"S");
array_push($data,$st);
array_push($data,$_GET);
$res=$obj->update_data($data);
if($res==1){
	header('location:suspended_document.php?msg=Suspended sucessfully');
	exit;
	
}
else{
	header('location:suspended_document.php?msg=Sorry Try Again');
	exit;
}
?>