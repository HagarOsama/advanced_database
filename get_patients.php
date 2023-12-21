<?php
include("connection.php");
$q = "SELECT p.Patient_ID ,Patient_Name, Patient_Gender, Patient_Address , Disease_Name 
  FROM patient p  JOIN 
 disease d WHERE d.Disease_ID = (SELECT Disease_ID FROM patient_disease WHERE Patient_ID=p.Patient_ID)";
$customer_pre = $conn->query($q);
$customers = array();

while ($row = $customer_pre->fetch_assoc()) {
    $customers[] = $row;
}

$response = json_encode($customers);

if (count($customers) == 0) {
    http_response_code(404);
} else {
    http_response_code(200);
}
echo $response;
