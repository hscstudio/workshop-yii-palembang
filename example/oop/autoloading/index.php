<?php
require "autoloader.php";
use library\Account;

$account1 = new Account("A01", 500);
echo $account1->print();
