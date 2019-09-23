<?php
$layout = __DIR__ . '/views/layout.php';
$list_page = ['home', 'list'];
$page = $_GET['page'] ?? 'home';
ob_start();
if(in_array($page, $list_page)){
    $view = __DIR__ . '/views/' . $page.'.php';
    if($page == 'list'){
        $model =  __DIR__ . '/models/users.php';
        require $model;
    }
    require $view; 
}
else{
    echo "halaman tidak ditemukan!";
}
$content = ob_get_contents();
ob_end_clean();
require $layout;