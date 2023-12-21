<?php

include("connection.php");


$name = $_POST["name"];
$gender = $_POST["gender"];
$address = $_POST["address"];
$birth_date = $_POST["birth_date"];

$disease = $_POST["disease"];


$birth = date('Y-m-d', strtotime($birth_date));


$insertPatient = "INSERT INTO `patient`( `Patient_Name`, `Patient_Gender`,
`Patient_Address`,`Patient_DOB`,`Doctor_ID`,`Room_Number`)
VALUES ('$name','$gender','$address','$birth',13,105)";

$insertPatientDisease = "INSERT INTO `patient_disease`(`Patient_ID`, `Disease_ID`) 
VALUES ((SELECT MAX(Patient_ID) FROM patient),
(SELECT Disease_ID FROM disease WHERE Disease_Name = '$disease'));";


$prepare = $con->prepare($insertPatient);
$prepare->execute();
$count = $prepare->rowCount();


$prepare = $con->prepare($insertPatientDisease);
$prepare->execute();
if ($count == 0) {
    http_response_code(404);
} else {
    http_response_code(200);
}
echo $count;
