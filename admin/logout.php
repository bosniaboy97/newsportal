<?php
session_start();
include("includes/config.php");
if (isset ($_SESSION['login']));
session_unset();
session_destroy();

?>
<li>
	<a href="index.php">Logout</a>
</li>
<script language="javascript">
</script>
