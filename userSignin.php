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

                <h5><a href="userRegistration.html">Do Not Have An Account?</a></h5>

            </div>
        </div>
    </div>
    </div>
</form>"';

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
    $stmt = $conn->prepare("SELECT password FROM users WHERE Username = ? LIMIT 1");
    $stmt->bind_param("s", $username);
    $stmt->bind_result($password);
    $stmt->execute();
    $stmt->fetch();
    $stmt->close();
    if (password_verify($_POST['password'], $password)) {
        session_start();
        $_SESSION["loggedIn"] = "true";
        header('Location: localhost/anime-website/userSignedIn.php');
    }
    else {
        $loginError = "Invalid username or password!";
    }
}
# mysqli_close($conn);
?>
<?php require 'includes/footer.php' ?>

