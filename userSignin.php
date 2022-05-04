<?php
error_reporting(E_ALL | E_STRICT);

$servername = "localhost";
$serverUsername = "root";
$serverPassword = "";

// Create connection
$conn = new mysqli($servername, $serverUsername, $serverPassword, "users");

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";


$loginError = "";

if (isset($_POST["submit"])) {
    $username = $conn->real_escape_string($_POST["username"]);
    $stmt = $conn->prepare("SELECT Password FROM user_logons WHERE Username = ? LIMIT 1");
    $stmt->bind_param("s", $username);
    $stmt->bind_result($password);
    $stmt->execute();
    $stmt->fetch();
    $stmt->close();
    if (password_verify($_POST['password'], $password)) {
        session_start();
        $_SESSION["loggedIn"] = "true";
        header("Location: userSignedIn.html");
    }
    else {
        $loginError = "Invalid username or password!";
    }
}
mysqli_close($conn);
?>