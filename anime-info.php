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

$id = test_input($_GET["animeID"]);

// `animes` (`anime_id`, `title`, `synopsis`, `image`, `source_type`, `num_episodes`, `status`, `start_date`, `end_date`, `season`, `studios`, `genres`, `popularity_rank`, `members_count`, `favorites_count`)

// Query the db to get info on the anime
$query = $conn->prepare('SELECT * FROM animes WHERE anime_id = ?');

$query->bind_param("i", $id);

$query->execute();

$query->bind_result($anime_id, $title, $synopsis, $image, $source_type, $num_episodes, $status, $start_date, $end_date, $season, $studios, $genres, $popularity_rank, $members_count, $favorites_count);

while($query->fetch()){
  echo '
  <div id="app">
    <div class="App">
      <section class="descriptionAnime">
        <div class="descriptionAnime__left">
          <h2 class="descriptionAnime__left-title">Cowboy Bebop</h2>
          <img src="'. $image .'" alt="'. $title .'" title="'. $title .'">
          <div class="descriptionAnime__Information">
            <h3>Information</h3>
            <p>Type: <span>'. $source_type .'</span></p>
            <p>Episodes: <span>'. $num_episodes .'</span></p>
            <p>Status: <span>'. $status .'</span></p>
            <p>Aired: <span>'. $start_date .' to '. $end_date .'</span></p>
          </div>
        </div>
        <div class="descriptionAnime__right">
          <div class="descriptionAnime__right-ranks">
            <div class="descriptionAnime__right-score">
              <span>Score</span><p>N/A</p></div>
              <div class="descriptionAnime__right-ranked">
                <p><span>Total Favorites</span>'. $favorites_count .'</p>
              </div>
              <div class="descriptionAnime__right-popularity">
                <p><span>Popularity</span>'. $popularity_rank .'</p>
              </div>
              <div class="descriptionAnime__right-users">
                <p><span>Users</span>'. $members_count .'</p>
              </div>
            </div>
            <h3>Synopsis</h3>
            <p>'. $synopsis .'</p>
  ';
}

// Query the db to get the characters
// `characters` (`characterID`, `name`, `gender`, `bio`, `status`, `animeID`, `ship`, `va`, `image`)
$query = $conn->prepare('SELECT characterID, name, image, animeID FROM characters WHERE animeID = ?');

$query->bind_param("i", $id);

$query->execute();

$character_result = $query->get_result();

echo '<h3>Characters & Voice Actors</h3>
<div class="detail-characters-list clearfix"><div class="left-column fl-l divider" style="width:392px;">';

while($this_character = $character_result->fetch_assoc()) {
  echo '<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
    <tr>
      <td valign="top" width="27" class="ac borderClass">
        <div class="picSurround">
          <a href="characterinfo.php?characterID='. $this_character["characterID"] .'" class="fw-n">
            <img alt="Spiegel, Spike" width="42" height="62" data-src="https://cdn.myanimelist.net/r/42x62/images/characters/4/50197.webp?s=c68236223866e244007ec519bf9ed325" data-srcset="https://cdn.myanimelist.net/r/42x62/images/characters/4/50197.webp?s=c68236223866e244007ec519bf9ed325 1x, https://cdn.myanimelist.net/r/84x124/images/characters/4/50197.webp?s=954af18b36c6f849f82641e8751daf57 2x" class=" lazyloaded" srcset="https://cdn.myanimelist.net/r/42x62/images/characters/4/50197.webp?s=c68236223866e244007ec519bf9ed325 1x, https://cdn.myanimelist.net/r/84x124/images/characters/4/50197.webp?s=954af18b36c6f849f82641e8751daf57 2x" src="https://cdn.myanimelist.net/r/42x62/images/characters/4/50197.webp?s=c68236223866e244007ec519bf9ed325">
          </a>
        </div>
      </td>
      <td valign="top" class="borderClass">
        <h3 class="h3_characters_voice_actors">
        <a href="characterinfo.html">Spiegel, Spike</a></h3>
        <div class="spaceit_pad">
          <small>Main</small>
        </div>
      </td>
      <td align="right" valign="top" class="borderClass">
        <table border="0" cellpadding="0" cellspacing="0"><tbody><tr>
          <td class="va-t ar pl4 pr4">
            <a href="https://myanimelist.net/people/11/Kouichi_Yamadera">Yamadera, Kouichi</a><br>
            <small>Japanese</small>
          </td>
          <td valign="top">
          </td>
        </tr>
        </tbody>
        </table>
      </td>
    </tr>
  </tbody>
  </table>'
}



function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

 ?>
<?php require 'includes/footer.php' ?>
