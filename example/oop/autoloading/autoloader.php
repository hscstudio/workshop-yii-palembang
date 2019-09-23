<?php
spl_autoload_register(function ($class_name) { 
    require $class_name . ".php"; 
    // require str_replace('\\', '/', $ class_name) . ".php"; 
}); 
