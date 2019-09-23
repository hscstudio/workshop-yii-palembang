<?php
require "../class/Lingkaran.php";

$lingkaran01 = new Lingkaran();
$lingkaran01->radius = 7;
echo "Lebar: " . $lingkaran01->lebar(); // hasilnya 44 
echo "Luas: " . $lingkaran01->luas(); // hasilnya 154

$lingkaran02 = new Lingkaran();
$lingkaran02->radius = 14;
echo $lingkaran02->lebar(); // hasilnya 88
echo $lingkaran02->luas(); 
