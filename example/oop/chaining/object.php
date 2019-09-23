<?php
require "BaseAccount.php";

// nabung awal 100.000
$account1 = new BaseAccount("A001", 100000);
// nabung kemudian 25.000
$account1->deposit(25000);
// diambil 50.000
$account1->withdraw(50000);
// cetak buku tabungan
$account1->print();

$account2 = (new BaseAccount('B001', 100000))->deposit(25000)->withdraw(50000)->print();