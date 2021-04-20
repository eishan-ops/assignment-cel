<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8" />
        <title>My AWS Resources</title>
    </head>
    <body>
	<h1>My AWS Resources</h1>
	<p>My VPCs</p>
<?php
$old_path = getcwd();
chdir('/var/www/html');
$output=shell_exec('./list_vpcs.sh');
echo "<pre>". $output."</pre>";
chdir($old_path);
?>

	<p>My EC2 instances</p>
<?php
$old_path = getcwd();
chdir('/var/www/html');
$output2 = shell_exec('./list_ec2.sh');
echo "<pre>". $output2."</pre>";
chdir($old_path);
?>  
  </body>
</html>
