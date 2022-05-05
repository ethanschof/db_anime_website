<?php require 'includes/header.php' ?>
<?php

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

// user info to display
$username = test_input($_SESSION["username"]);

$query = $conn->prepare('SELECT username, email, bio, friends, animeList, favorites FROM users WHERE username =?');
$query->bind_param("s", $username);
$query->execute();
$query->bind_result($user_username, $user_email, $user_bio, $user_friends, $user_animeList, $user_favorites);

while ($query->fetch()) {

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
      </div>
  </div>"';
}


function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

?>
<?php require 'includes/footer.php' ?>
