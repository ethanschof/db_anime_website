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
          <h2 class="descriptionAnime__left-title">'. $title .'</h2>
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

  $vaID = 0;
  $vaName = "";

  // get voice actor for this character
  $vaquery = $conn->prepare('SELECT voiceactor.vaID, voiceactor.name FROM voiceactor INNER JOIN voicedby ON voiceactor.vaID = voicedby.vaID WHERE voicedby.characterID = ?');
  $vaquery->bind_param("i", $this_character["characterID"]);
  $vaquery->execute();
  $vaquery->bind_result($vaID, $vaName);

  echo '<table border="0" cellpadding="0" cellspacing="0" width="100%">
    <tbody>
    <tr>
      <td valign="top" width="27" class="ac borderClass">
        <div class="picSurround">
          <a href="characterinfo.php?characterID='. $this_character["characterID"] .'" class="fw-n">
            <img alt="'. $this_character["name"] .'" width="42" height="62"  src="'. $this_character["image"] .'">
          </a>
        </div>
      </td>
      <td valign="top" class="borderClass">
        <h3 class="h3_characters_voice_actors">
        <a href="characterinfo.php?characterID='. $this_character["characterID"] .'">'. $this_character["name"] .'</a></h3>
        <div class="spaceit_pad">
          <small>Main</small>
        </div>
      </td>';
      while ($vaquery->fetch()) {
        echo '<td align="right" valign="top" class="borderClass">
          <table border="0" cellpadding="0" cellspacing="0"><tbody><tr>
            <td class="va-t ar pl4 pr4">
              <a href="">'. $vaName .'</a><br>
              <small>Japanese</small>
            </td>
            <td valign="top">
            </td>
          </tr>
          </tbody>
          </table>
        </td>';
      }

    echo '</tr>
  </tbody>
  </table>';
}

echo '</div>
</section>
</div>
</div>';


function test_input($data) {
  $data = trim($data);
  $data = stripslashes($data);
  $data = htmlspecialchars($data);
  return $data;
}

 ?>
<?php require 'includes/footer.php' ?>
