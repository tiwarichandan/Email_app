<?php session_start();
error_reporting(1);
 ?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1" />
<title>Email</title>
<style>
			a:hover{color:#00FF66;}
			a{font-size:18px;margin-left:5%;}
			table,td{padding:5px;broder-radius:5px}
		</style>
</head>

<body>

<table width="975" border="1" align="center" style="background-image:url('slide image/bkgrnd_greydots.png');">
  <tr>
    <td height="38" colspan="2">
		<a href="index.php">HOME</a>
		
		<a href="index.php?chk=login">LOGIN</a>
	
		<a href="index.php?chk=5"></a>
			</td>
  </tr>
  <tr>
    <td height="613" valign="top" style="padding:10px">
	
	<?php
	@$chk=$_REQUEST['chk'];
	if($chk=="")
	{
	?>
	<h3 align="center">Welcome </h3>
	<pre>
	

	
	
	</pre>
	<?php
	}
	
	if($chk=="login")
	{
	include_once('login.php');
	}
	if($chk==5)
	{
	include_once('welcome.php');
	}
	
	

	
	
	?>	
  </tr>
  
</table>
</body>
</html>
