<?php
require "library/Account.php";
use library\Account;

$account1 = new Account("A001", 50000);
echo $account1->print();
