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

//`animes` (`anime_id`, `title`, `synopsis`, `image`, `source_type`, `num_episodes`, `status`, `start_date`, `end_date`, `season`, `studios`, `genres`, `popularity_rank`, `members_count`, `favorites_count`)
$genre = "";
$search = "";
// Different query if there is a sort
// genre no search
if ($_SERVER["REQUEST_METHOD"] == "POST" && $_POST["genre"] != "all" && !isset($_POST["search"])) {
  $genre = test_input($_POST["genre"]);

  $genre = "%" . $genre . "%";

  $query = $conn->prepare('SELECT anime_id, title, image, genres FROM animes WHERE UPPER(TRIM(genres)) LIKE UPPER(TRIM(?)) ORDER BY title ASC');

  $query->bind_param("s", $genre);

  $query->execute();

  $result = $query->get_result();

 // search no genre
} elseif ($_SERVER["REQUEST_METHOD"] == "POST" && $_POST["genre"] == "all" && isset($_POST["search"])) {
  $search = test_input($_POST["search"]);

  // fixes case where search is empty but set
  if ($search == "") {
    $query = "SELECT anime_id, title, image FROM animes ORDER BY title ASC";

    $result = $conn->query($query);
  } else {
    $search = "%" . $search . "%";

    $query = $conn->prepare('SELECT anime_id, title, image FROM animes WHERE UPPER(TRIM(title)) LIKE UPPER(TRIM(?)) ORDER BY title ASC');

    $query->bind_param("s", $search);

    $query->execute();

    $result = $query->get_result();
  }

  // search and genre
} elseif ($_SERVER["REQUEST_METHOD"] == "POST" && $_POST["genre"] != "all" && isset($_POST["search"])) {
  $genre = test_input($_POST["genre"]);
  $search = test_input($_POST["search"]);

// fixes case where search is empty but set
  if ($search == "") {
    $genre = "%" . $genre . "%";

    $query = $conn->prepare('SELECT anime_id, title, image, genres FROM animes WHERE UPPER(TRIM(genres)) LIKE UPPER(TRIM(?)) ORDER BY title ASC');

    $query->bind_param("s", $genre);

    $query->execute();

    $result = $query->get_result();
  } else {
    $genre = "%" . $genre . "%";
    $search = "%" . $search . "%";

    $query = $conn->prepare('SELECT anime_id, title, image, genres FROM animes WHERE UPPER(TRIM(genres)) LIKE UPPER(TRIM(?))
    AND UPPER(TRIM(title)) LIKE UPPER(TRIM(?)) ORDER BY title ASC');

    $query->bind_param("ss", $genre, $search);

    $query->execute();

    $result = $query->get_result();
  }

}

// none
else {
  $query = "SELECT anime_id, title, image FROM animes ORDER BY title ASC";

  $result = $conn->query($query);
}


echo '<div class="listofAnime">
  <h3>List of animes</h3>
  <!--INput for searching and sorting by genre-->
  <div class="Search">
  <form method="post" action="';
  echo htmlspecialchars($_SERVER["PHP_SELF"]);
  echo '">
  <input name="search" placeholder="Search Anime" type="text">
    <select class="select" name="genre" onchange="this.form.submit()">
      <option selected value="all"> -- Select a Genre -- </option>
      <option value="action">Action</option>
      <option value="comedy">Comedy</option>
      <option value="romance">Romance</option>
      <option value="slice of life">Slice of Life</option>
      <option value="fantasy">Fantasy</option>
    </select>
    <input type="submit" name="submit" value="Submit">
    </form>
  </div>
  <section class="listAnime">';

  // https://stackoverflow.com/questions/12321090/set-session-variable-when-clicking-an-a-href

while ($row = $result->fetch_assoc()) {
  echo '<div class="listAnime__anime">
    <h3>' . $row["title"] . '</h3>
    <a class="links" href="anime-info.php?animeID='. $row["anime_id"] .'">
      <img src="'.$row["image"].'" alt="'.$row["title"].'" title="'.$row["title"].'"></a>
    </div>';
}

echo '</section>
</div>';



function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

 ?>
<?php require 'includes/footer.php' ?>
