<?php

// Show signUp/Registration html page
echo '"<form className="formSignup" style = "text-align: center" action="userSignUp.php" method="POST">
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

                <h5><a href="userInformation_login.html">Return To Login</a></h5>

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
    $stmt = $conn->prepare("INSERT INTO 'users' ('userID', 'username', 'password', 'email', `bio`, `friends`, `animelist`, `favorites`) VALUES (NEWID(), $_POST[‘username’], $_POST[‘password’], $_POST[‘email’], '', 0, 0, 0)");
    $stmt->bind_param("s", $username);
    $stmt->bind_result($password);
    $stmt->execute();
    $stmt->fetch();
    $stmt->close();
    if (strcmp($_POST['password'], $_POST['confirmPassword']) == 0) {
        session_start();
        $_SESSION["loggedIn"] = "true";
        header('Location: localhost/anime-website/userSignedIn.php');
        exit();
    }
    else {
        $loginError = "Passwords are not the same!";
    }
}
# mysqli_close($conn);
?>
