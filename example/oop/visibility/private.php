<?php
class BaseAccount
{
    public $number;
    private $balance;
    // method & property lainnya
}

class Account extends BaseAccount
{
    // method & property lain
    public function print(){
        echo "balance: " . $this->balance;
    }
}

$account1 = new BaseAccount("A001", "100");
$account1->balance = 500;

$account2 = new Account("A002", "100");
$account2->print();