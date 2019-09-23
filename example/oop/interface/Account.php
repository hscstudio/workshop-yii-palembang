<?php
require "BaseAccount.php";
require "BaseFeature.php";
class Account extends BaseAccount implements BaseFeature
{
   public function transfer(){
      echo "not yet";
   }
}