<?php
error_reporting(E_ALL | E_STRICT);

$servername = "localhost";
$username = "root";
$password = "";
$db_name = "anime-website";

// Create connection
$conn = new mysqli($servername, $username, $password, $db_name);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";

$loginError = "";

if (isset($_POST["submit"])) {
    $username = $conn->real_escape_string($_POST["username"]);
    $stmt = $conn->prepare("INSERT INTO 'users' ('userID', 'username', 'password', 'email', `bio`, `friends`, `animelist`, `favorites`) VALUES (NEWID(), $_POST[‘username’], $_POST[‘password’], $_POST[‘email’], '', 0, 0, 0)");
    $stmt->bind_param("s", $username);
    $stmt->bind_result($password);
    $stmt->execute();
    $stmt->fetch();
    $stmt->close();
    if (strcmp($_POST['password'], $_POST['confirmPassword']) == 0) {
        session_start();
        $_SESSION["loggedIn"] = "true";
        header('Location: userSignedIn.php');
    }
    else {
        $loginError = "Passwords are not the same!";
    }
}
# mysqli_close($conn);
?>
