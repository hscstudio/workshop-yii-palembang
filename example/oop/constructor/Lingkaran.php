<?php
class Lingkaran
{
    const phi = 22 / 7;
    public $radius;

    public function __construct($radius){
        $this->radius = $radius;
    }

    // method lain

    public function lebar(){
        return 2 * self::phi * $this->radius;
    }
    public function luas(){
        return self::phi * $this->radius * $this->radius;
    }
}
