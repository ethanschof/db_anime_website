<?php

$servername = "localhost";
$username = "student";
$password = "CompSci364";
$db_name = "anime-website";

// Create connection
$conn = new mysqli($servername, $username, $password, $db_name);

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
echo "Connected successfully";

// user info to display

$sql = "SELECT username, email, bio, friends, animeList, favorites FROM users WHERE username = '".$_SESSION['username'] ."'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
    // output data of each row
    while($row = $result->fetch_assoc()) {
        $user_username = $row["username"];
        $user_email = $row["email"];
        $user_bio = $row["bio"];
        $user_friends = $row["friends"];
        $user_animeList = $row["animeList"];
        $user_favorites = $row["favorites"];    }
} else {
    echo "Could Not Find profile.";
}
$conn->close();

echo readfile("userSignedIn.html");

?>
