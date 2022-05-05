<?php require 'includes/header.php' ?>
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

echo '"<div style = "text-align: center" class="settings-page">
    <div style = "text-align: center" class="settings-container">
        <h1 class="page-title">Account</h1>
        <div style = "text-align: center" class="settings-section">
            <hr> <h2 class="settings-title">General Information</h2>
            <div class="non-active-form">
                <p style = "text-align: center">Username: '. $user_username .'</p><i class="fas fa-pen"></i>
            </div>
            <div>
                <div class="non-active-form">
                    <p style = "text-align: center" class="capitalize">Email: '. $user_email .'</p><i class="fas fa-pen"></i>
                </div>
            </div>
            <div>
                <div class="non-active-form">
                    <p style = "text-align: center" class="capitalize">Bio: '. $user_bio .'</p><i class="fas fa-pen"></i>
                </div>
            </div>
            <div>
                <div class="non-active-form">
                    <p style = "text-align: center">Friends: '. $user_friends .'</p><i class="fas fa-pen"></i>
                </div>
            </div>
            <div>
                <div class="non-active-form">
                    <p style = "text-align: center">Anime List: '. $user_animeList .'</p><i class="fas fa-pen"></i>
                </div>
            </div>
            <div>
                <div class="non-active-form">
                    <p style = "text-align: center">Favorites: '. $user_favorites .'</p><i class="fas fa-pen"></i>
                </div>
            </div>
        </div>
        <div class="settings-section">
            <hr> <h2 class="settings-title">My profile</h2> <br>
        </div>
        <div class="settings-section">
            <hr> <h2 class="settings-title">Password</h2>
            <form class="resetPasswordForm" action="resetUserPassword.php" method="POST">
                <div class="form-group">
                    <div class="input-group">
                        <input name="currentPassword" placeholder="Old Password" type="password" class="form-control" autocomplete="Old Password" value="">
                        <span class="focus-input"></span>
                    </div>
                </div>
                <div class="form-group">
                    <div class="input-group">
                        <br><input name="newPassword" placeholder="New Password" type="password" class="form-control" autocomplete="New Password" value="">
                        <span class="focus-input"></span>
                    </div>
                </div>
                <div class="form-submit right">
                    <br> <button class="btn button full" type="submit" disabled="">Change Password</button>
                </div>
            </form>
        </div>
    </div>
</div>"';

?>
<?php require 'includes/footer.php' ?>
