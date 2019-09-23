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
      return $this;
   }
   public function withdraw($amount){
      $this->balance = $this->balance - $amount;
      return $this;
   }
   public function print(){
      echo "saldo :" . $this->balance;
      return $this;
   }
}
