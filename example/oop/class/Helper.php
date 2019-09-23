<?php
class Helper
{
     public static function money($amount){
           return "Rp. " . number_format($amount, 2);
     }
}

echo Helper::money(7500); // Rp. 7,500.00

