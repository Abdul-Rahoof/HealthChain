
<?php
  $str1=$_POST['ipfs'];
  #echo $str1;
  
  $str="ipfs cat ".$str1;
  
  $output=shell_exec($str);
  #echo"hi";
  $handle=file_put_contents("sample.html",$output);
  echo $output;
  #$content=file_get_contents($str1.".txt");
  #header('Content-Type: application/octet-stream');
  #echo $content;  
  fclose($handle);
  
  header("Content-disposition: attachment; filename=sample.html");
  header("Content-type= applicaton/text");
  readfile("sample.html");
  #$hand=fopen($str1.".txt",'r') or die("cant");
  #$data=fread($handle,filesize($str1.".txt"));
  #echo "<pre>$data</pre>";
  
  #header("Location:second.html");
  ?>
