<?php
include_once("ImageResizeFactory.php");
	$maxSize = "1048576"; // 1MB upload size of the file.
	$width = 120;
	$height = 120;
	$allowedExtensions = array("jpg", "JPG", "JPEG", "png", "PNG");
	
	
	$uploadedFileName = $_FILES['filename']['name'];
	if($_FILES['filename']['size'] > $maxSize){
		$error = "File size cannot exceed 1MB";
	}
	if(file_exists("uploadedfiles/" . $uploadedFileName)){
		$error = "File with " . $uploadedFileName . " name is already present<br>";
	}
	$extension = pathinfo($_FILES['filename']['name']);
	$extension = $extension["extension"];
	foreach($allowedExtensions as $key=>$ext){
		if(strcasecmp($ext, $extension) == 0){
			$boolValidExt = true;
			break;
		}
	}
	if($boolValidExt){
		if(empty($error)){
			if(is_uploaded_file($_FILES['filename']['tmp_name'])) {
				copy($_FILES['filename']['tmp_name'], "uploadedfiles/" . $uploadedFileName);
			}
		}
	}else{
		$error = "Files with .$extension extensions are not allowed";
	}
	if(empty($error)){
		$srcFile = "uploadedfiles/" . $uploadedFileName;
		$destFile = "uploadedfiles/resize_" . $uploadedFileName;

		// Instantiate the correct object depending on type of image i.e jpg or png
		$objResize = ImageResizeFactory::getInstanceOf($srcFile, $destFile, $width, $height);
		// Call the method to resize the image
		$objResize->getResizedImage();
		unlink($srcFile);
		unset($objResize);
		header("Location:" . $destFile);
		exit;
	}

?>