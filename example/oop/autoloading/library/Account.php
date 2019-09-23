<?php
namespace library;
use base\BaseAccount;
class Account extends BaseAccount
{
    public function print(){
        echo "balance: " . $this->balance;
    }  
}
