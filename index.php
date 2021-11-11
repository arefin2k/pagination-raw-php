<?php

include "config.php";

$per_page = 3;
$q = $pdo->prepare("SELECT * FROM blogs");
$q->execute();
$total = $q->rowCount();

if($total % $per_page == 0) {
    $total_pages = $total / $per_page;
} else {
    $total_pages = ceil($total / $per_page);
}

//echo '<div>'.$_REQUEST['p'].'</div>';
if(!isset($_REQUEST['p'])) {
    $start = 1;
} else {
    $start = $per_page * ($_REQUEST['p'] - 1) + 1;
}

//echo '<div>'.$start.'</div>';

$j=0;$k=0;
$arr1 = [];
$res = $q->fetchAll();
foreach($res as $item) {
    $j++;
    if($j>=$start) {
        $k++;
        if($k>$per_page) {break;}
        $arr1[] = $item['id'];
    }
}

$q = $pdo->prepare("SELECT * FROM blogs");
$q->execute();
$res = $q->fetchAll();
foreach($res as $item) {
    if(!in_array($item['id'],$arr1)) {continue;}
    echo $item['blog_title'].'<br>';
}


// Left Section
if(!isset($_REQUEST['p'])) {
    echo '&lt;&lt;';
} else {
    if($_REQUEST['p'] == 1) {
        echo '&lt;&lt;';
    } else {
        echo '<a style="margin-right:10px;" href="http://localhost/pagination-raw-php/index.php?p='.($_REQUEST['p'] - 1).'">&lt;&lt;</a>';
    }
}

// Middle Section
for($i=1;$i<=$total_pages;$i++) {
    echo '<a style="margin-right:10px;" href="http://localhost/pagination-raw-php/index.php?p='.$i.'">'.$i.'</a>' . '';
}

// Right Section
if(!isset($_REQUEST['p'])) {
    echo '<a style="margin-right:10px;" href="http://localhost/pagination-raw-php/index.php?p=2">&gt;&gt;</a>';
} else {
    if($_REQUEST['p'] == $total_pages) {
        echo '&gt;&gt;';
    } else {
        echo '<a style="margin-right:10px;" href="http://localhost/pagination-raw-php/index.php?p='.($_REQUEST['p'] + 1).'">&gt;&gt;</a>';
    }
}