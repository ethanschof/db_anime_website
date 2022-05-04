<?php require '/includes/header.php' ?>
<?php
$servername = "localhost";
$username = "student";
$password = "CompSci364";
$db_name = "anime-website";

// Create connection
$conn = new mysqli($servername, $username, $password, $db_name);

// Check connection
if ($conn->connect_error) {
  die("Connection failed: " . $conn->connect_error);
}

//`animes` (`anime_id`, `title`, `synopsis`, `image`, `source_type`, `num_episodes`, `status`, `start_date`, `end_date`, `season`, `studios`, `genres`, `popularity_rank`, `members_count`, `favorites_count`)

$query = "SELECT anime_id, title, image FROM animes ORDER BY title ASC";

$result = $conn->query($query);

echo '<div class="listofAnime">
  <h3>List of animes</h3>
  <!--INput for searching and sorting by genre-->
  <div class="Search"><input placeholder="Search Anime" type="text">
    <select class="select" name="genre">
      <option disabled selected value> -- Select a Genre -- </option>
      <option value="genre1">Action</option>
      <option value="genre2">Comedy</option>
      <option value="genre3">Romance</option>
      <option value="genre4">Slice of Life</option>
      <option value="genre5">Fantasy</option>
    </select>
  </div>
  <section class="listAnime">';

  // https://stackoverflow.com/questions/12321090/set-session-variable-when-clicking-an-a-href

while ($row = $result->fetch_assoc()) {
  echo '<div class="listAnime__anime">
    <h3>' . $row["title"] . '</h3>
    <a class="links" href="anime-info.php?animeID='. $row["anime_id"] .'">
      <img src="'.$row["title"].'" alt="'.$row["title"].'" title="'.$row["title"].'"></a>
    </div>';
}

echo '</section>
</div>';


 ?>
<?php require '/includes/footer.php' ?>
