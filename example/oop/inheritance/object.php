<?php
require "Account.php";
$account1 = new Account("A001", "100000");
$account1->deposit(25000);
echo "Saldo1: ".$account1->print();

$account2 = new Account("A002", "50000");
$account2->withdraw(50000);
echo "Saldo2: ".$account2->print();
