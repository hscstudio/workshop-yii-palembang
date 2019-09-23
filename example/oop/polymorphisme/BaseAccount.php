<?php
class BaseAccount
{
   public $number;
   public $balance;
   public function __construct($number, $balance){
      $this->number = $number;
      $this->balance = $balance;
   }
   public function deposit($amount){
      $this->balance = $this->balance + $amount;
   }
   public function withdraw($amount){
      $this->balance = $this->balance - $amount;
   }
   // method & property lain
   public function print(){
      return $this->balance;
   }
}
