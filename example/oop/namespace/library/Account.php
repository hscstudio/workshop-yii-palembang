<?php
namespace library;
require "base/BaseAccount.php";
use base\BaseAccount;
class Account extends BaseAccount
{
    public function print(){
        echo "balance: " . $this->balance;
    }  
}
