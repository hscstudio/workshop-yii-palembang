<?php // view ?>
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
