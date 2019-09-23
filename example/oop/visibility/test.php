<?php
error_reporting(E_ALL);
class Parents
{
    private $status = false;
}

class Childs extends Parents
{
    public function print(){
        echo "status: " . $this->status; // ini tidak error
    }
}

$parents = new Parents();
// echo $parent->asem;
//$parents->status = true; // Uncaught Error: Cannot access private property Parents::$status 

$childs = new Childs();
//$childs->status = true; // ini tidak error
//$childs->asem = false;
$childs->print();