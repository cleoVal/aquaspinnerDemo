<?php
error_reporting(E_ALL);
ini_set('display_errors', 1);

$servername = "127.0.0.1:3307";
$username = "root"; // Default for XAMPP/WAMP
$password = ""; // Default for XAMPP (leave empty)
$database = "laundry_shop";

// Create connection
$conn = new mysqli($servername, $username, $password, $database);

// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}


// Check if form data is received
if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $name = $_POST['name'];
    $phone = $_POST['phone'];
    $email = $_POST['email'];
    $service = $_POST['service'];
    $date = $_POST['date'];
    $time = $_POST['time'];

    // Prepare and bind SQL statement
    $stmt = $conn->prepare("INSERT INTO bookings (full_name, phone, email, service, date, time) VALUES (?, ?, ?, ?, ?, ?)");
    $stmt->bind_param("ssssss", $name, $phone, $email, $service, $date, $time);


    if ($stmt->execute()) {
        echo "Booking successful!";
    } else {
        echo "Error: " . $stmt->error;
    }

    $stmt->close();
}

$conn->close();
?>
