<html>

<!-- contactUsSubmission.php - 4/13/2022 - Price Johnson (Borrowed code from Dr. Hadfield and Dr. Coffman) -->

 <head>
   <title>contactUsSubmission.php</title>
   <style>
     body {font-family: Arial; color: black; }
     h1 {background-color: blue; color: white; }
   </style>
 </head>

 <body>
   <center>
     <h1>CS364 Contact Us contactUsSubmission.php Submissions</h1>
     <br />
     <br />

     <table border="1" cellpadding="3">
       <tr><th>Parameter</th><th>Value</th></tr>
       <tr><td>First Name</td><td><?php echo $_POST['firstName']; ?></td></tr>
       <tr><td>Last Name</td><td><?php echo $_POST['lastName']; ?></td></tr>
       <tr><td>Email Address</td><td><?php echo $_POST['emailAddress']; ?></td></tr>
       <tr><td>Question Or Comment</td><td><?php echo $_POST['questionOrComment']; ?></td></tr>
     </table>
     <br />

<!-- Below demonstrates how to get system information from PHP -->

     Web page <b><?php echo $_SERVER['DOCUMENT_ROOT'].$_SERVER['REQUEST_URI'] ?></b><br />
     accessed on <b><?php echo date("Y-m-d H:i") ?></b>
        from IP address <b><?php echo $_SERVER['REMOTE_ADDR'] ?></b> via
        <b><?php echo $_SERVER['REQUEST_METHOD'] ?></b><br/>
     <br />

<!-- Give a link back to the main page -->

     <a href="<?php echo $_SERVER["HTTP_REFERER"]; ?>">Click Here</a> to return to the CSL web site.

   </center>
 </body>
</html>
