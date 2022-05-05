<?php
error_reporting(E_ALL | E_STRICT);

if (!isset($_SESSION)) {
   session_start();
}

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


$loginError = "";

if (isset($_POST["username"])) {

    $username = $conn->real_escape_string($_POST["username"]);
    $stmt = $conn->prepare("SELECT username, password FROM users WHERE username = ?");
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->bind_result($queryusername, $password);

    while($stmt->fetch()){
      if (password_verify($_POST['password'], $password)) {
          $_SESSION["loggedIn"] = "true";
          $_SESSION["username"] = $username;
          header('Location: userSignedIn.php');
      }
      else {
          $loginError = "Invalid username or password!";
      }
    }
}
# mysqli_close($conn);
 ?>
<?php require 'includes/header.php' ?>
<?php

// Show SignIn html page
echo '<form className="formSignup" style = "text-align: center" action="';
echo htmlspecialchars($_SERVER["PHP_SELF"]);
echo '" method="POST">
    <div>
        <div className="formSignup__title-row">
            <h3 style = "text-align: center">Log In</h3>
        </div> <br>

        <div className="formSignup__body">
            <div className="formSignup__row">
                <label>
                    <span>Username</span>
                    <input type="text" name="username" placeholder="Username" autoFocus />
                </label>
            </div> <br>

            <div className="formSignup__row">
                <label>
                    <span>Password</span>
                    <input type="password" name="password" placeholder="Password" />
                </label>
            </div> <br>

            <div className="formSignup__row">
                <input type="submit" name="submit" value="Login"> <br>
                ';
                if ($loginError != ""){
                  echo '<h5 color="#FF0000">' . $loginError . '</h5>';
                }
                echo '
                <h5><a href="userRegistration.html">Do Not Have An Account?</a></h5>

            </div>
        </div>
    </div>
    </div>
</form>';

?>
<?php require 'includes/footer.php' ?>
