<?php
$users = [
    'Lionel Messi', 
    'Cristiano Ronaldo',
    'Neymar Jr.',
    'Paul Pogba',
    'Andrés Iniesta',
    'Alexis Sánchez',
    'Kylian Mbappé'
];
?>
<!DOCTYPE html>
<html>
<head>
    <title>No MVC</title>
</head>
<body>
    <h1>Halaman List</h1>
    <ul>
    <?php
    foreach ($users as $user){
        echo "<li>".$user."</li>";
    }
    ?>
    </ul>
    <p>
        <a href="index.php">Kembali</a>
    </p>
</body>
</html>
