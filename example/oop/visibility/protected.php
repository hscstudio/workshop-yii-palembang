<?php
class BaseAccount
{
    public $number;
    protected $balance;
    // method & property lainnya
}

class Account extends BaseAccount
{
    // method & property lain
    public function print(){
        echo "balance: " . $this->balance;
    }
}

$account1 = new Account("A001", "100000");
$account1->balance = 5000000000;
$account1->print();