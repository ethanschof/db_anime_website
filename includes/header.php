<?php
# Start Session so that user is remembered as he traverses the pages
session_start();

echo
'<!DOCTYPE html>
<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <title>Anime Database</title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
    <!--Start menu header -->
    <h1>My Cool Anime Website</h1>
    <nav>
      <a href="index.php">Home</a>
      <a href="animelist.php">Anime</a>
      <a href="characterinfo.php?characterID=2">Characters</a>
      <a href="contactUs.php">Contact Us</a>';

        if ($_SESSION["loggedIn"] = "true"){
            echo '<a href="userSignedIn.html">My Account</a>';
        }
        else {
            echo '<a href="userInformation_login.html">My Account</a>';
        }

echo ' <div class="animation start-home"></div>
</nav>';
?>
