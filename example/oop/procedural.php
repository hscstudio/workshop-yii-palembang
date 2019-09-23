<?php
define("phi", 22/7);

function lebarLingkaran($radius){
    return 2*phi*$radius;
}

function luasLingkaran($radius){
    return phi * $radius * $radius;
}

echo "Lebar: ".lebarLingkaran(7); // hasilnya 44  
echo "Luas: ".luasLingkaran(7); // hasilnya 154 
