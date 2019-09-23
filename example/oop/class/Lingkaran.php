<?php
class Lingkaran
{
   const phi = 22/7;
   public $radius;
   public function lebar(){
      return 2 * self::phi * $this->radius;
   }
   public function luas(){
      return self::phi * $this->radius * $this->radius;
   }
}