<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Connection</title>
</head>
<body>
<form action="login.php" method="post">
    Login: <input type="text" name="login" value="">
    <br>
    Password: <input type="password" name="passwd" value="">
    <br><br>
    <input type="submit" name="submit" value="OK">
</form>
<br>
<a href="create.php" name="create">Creer un compte</a>
<br>
<a href="modif.php" name="modif">Modifier mot de passe</a>
</body>
</html>

<?php
/**
 * Created by PhpStorm.
 * User: pierre
 * Date: 29/03/18
 * Time: 16:47
 */

include "../db/setting.php";
include "../db/auth.php";

if (!empty($_POST['login']) && !empty($_POST['passwd'])) {

    session_start();

    if (auth($_POST['login'], $_POST['passwd'])) {
        $_SESSION['loggued_on_user'] = $_POST['login'];
        header("location: index.php");

    } else {
        $_SESSION['loggued_on_user'] = "";
        echo "<br>Erreur : Votre mot de passe ou votre login est incorrect<br>";
    }
}
?>