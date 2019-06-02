
<?php
  $str1=$_POST["recordp"];
  $str1=$str1.".html";
  echo $str1;
  
  $str="ipfs add /home/rahoof/Downloads/".$str1." 2>&1";
  
  
  $output=shell_exec($str);
  
  echo "<pre>$output</pre>";
  
  #header("Location:second.html"); 
 ?>
