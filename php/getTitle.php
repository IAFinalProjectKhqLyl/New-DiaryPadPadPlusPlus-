<?php
session_start();
if (isset($_SESSION['title'])) {
    $data = $_SESSION['title'];
    echo $data;
} else {
    $data = null;
    echo $data;
}
