<?php
namespace base;
class BaseAccount
{
    public $number;
    public $balance;
    // property atau method lain
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
    public function print(){
       return $this->balance;
    } 
}
