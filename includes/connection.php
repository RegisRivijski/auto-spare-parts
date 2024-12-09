<?php
 $db = mysqli_connect($_ENV['MYSQL_1_HOSTNAME'], $_ENV['MYSQL_1_USER'], $_ENV['MYSQL_1_PASSWORD'], null, $_ENV['MYSQL_1_PORT']) or
        die ('Unable to connect. Check connection.');
        mysqli_select_db($db, 'spare_parts' ) or die(mysqli_error($db));
?>
