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
    if (strcmp($_POST['password'], $_POST['confirmPassword']) == 0) {
        $username = $conn->real_escape_string($_POST["username"]);
        $password = $conn->real_escape_string($_POST["password"]);
        $password = password_hash($password, PASSWORD_DEFAULT);
        $email = $conn->real_escape_string($_POST["email"]);
        $stmt = $conn->prepare('INSERT INTO users (username, password, email) VALUES (?, ?, ?)');
        $stmt->bind_param("sss", $username, $password, $email);
        $stmt->bind_result($password);
        $stmt->execute();
        //$stmt->fetch();
        $stmt->close();

        $_SESSION["loggedIn"] = "true";
        $_SESSION["username"] = $username;
        header('Location: userSignedIn.php');
        exit();
    }
    else {
        $loginError = "Passwords are not the same!";
    }
}
 ?>
<?php require 'includes/header.php' ?>
<?php

// Show signUp/Registration html page
echo '<form className="formSignup" style="text-align: center" action="';
echo htmlspecialchars($_SERVER["PHP_SELF"]);
echo '" method="POST">
    <div>
        <div className="formSignup__title-row">
            <h3 style = "text-align: center">User Registration</h3> <br>
        </div>

        <div className="formSignup__body">
            <div className="formSignup__row">
                <label>
                    <span>Username</span>
                    <input type="text" name="username" placeholder="Username" autoFocus />
                </label>
            </div> <br>

            <div className="formSignup__body">
                <div className="formSignup__row">
                    <label>
                        <span>Email</span>
                        <input type="email" name="email" placeholder="Email" autoFocus />
                    </label>
                </div> <br>

            <div className="formSignup__row">
                <label>
                    <span>Password</span>
                    <input type="password" name="password" placeholder="Password" />
                </label>
            </div> <br>

                <div className="formSignup__row">
                    <label>
                        <span>Confirm Password</span>
                        <input type="password" name="confirmPassword" placeholder="Password" />
                    </label>
                </div> <br>

            <div className="formSignup__row">
                <input type = submit name="submit" value="Register"></input>

                <h5><a href="userSignin.php">Return To Login</a></h5>

            </div>
        </div>
    </div>
</form>"';

//mysqli_close($conn);
?>
<?php require 'includes/footer.php' ?>
