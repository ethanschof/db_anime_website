<?php require 'includes/header.php' ?>
<?php
$servername = "localhost";
$username = "root";
$password = "";
$db_name = "anime-website";

// Create connection
$conn = new mysqli($servername, $username, $password, $db_name);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

// `characters` (`characterID`, `name`, `gender`, `bio`, `status`, `animeID`, `ship`, `va`, `image`)
// Get the ID from the URL
$id = test_input($_GET["characterID"]);

// Prepare the sql query
$query = $conn->prepare('SELECT * FROM characters WHERE characterID = ?');

// This says we are expecting id to be an integer, use s for string
$query->bind_param("i", $id);

// Run the query
$query->execute();

// Bind the result variables
$query->bind_result($characterID, $name, $gender, $bio, $status, $animeID, $ship, $va, $image);

while ($query->fetch()){
  echo '<section class="descriptionAnime">
    <div class="descriptionAnime__left">
      <h3 class="descriptionAnime__left-title">' . $name . '</h3>
      <img src="'. $image .'" alt="'. $name .'" title="'. $name .'">
      <div class="descriptionAnime__Information">
        <h3>Information</h3>
        <p>Gender: <span>';
        if ($gender == "M"){
          echo 'Male';
        }
        else {
          echo 'Female';
        }
        echo '</span></p>
      </div>
    </div>
    <div class="descriptionAnime__right">
      <h3>Bio</h3>
      <p>'. $bio .'</p>
  </div>
  </section>';
}

function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

?>
<?php require 'includes/footer.php' ?>
