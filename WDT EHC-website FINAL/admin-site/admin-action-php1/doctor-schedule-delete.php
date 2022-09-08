<?php

include("../conn.php");

$id = intval ($_GET['doc_schedule_id']);

$result = mysqli_query($con,  "DELETE FROM doctor_schedule WHERE doc_schedule_id = $id");

mysqli_close($con);
header("Location: ../admin_doctor_schedule.php")

?>