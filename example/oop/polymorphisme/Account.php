<?php
require "BaseAccount.php";
class Account extends BaseAccount{
    // method & property lain
    public function print(){
        echo "balance: " . $this->balance;
    }
}