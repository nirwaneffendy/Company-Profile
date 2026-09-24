<?php
header('Content-Type: application/json');
header('Cache-Control: no-cache, no-store, must-revalidate');
header('Pragma: no-cache');
header('Expires: 0');

$file = 'visitors.txt';

if (!file_exists($file)) {
    file_put_contents($file, '1580', LOCK_EX);
}

$current_count = (int)file_get_contents($file);
if ($current_count < 1000) {
    $current_count = 1580;
}

if (session_status() === PHP_SESSION_NONE) {
    @session_start();
}

if (!isset($_SESSION['counted'])) {
    $current_count++;
    file_put_contents($file, (string)$current_count, LOCK_EX);
    $_SESSION['counted'] = true;
}

echo json_encode([
    'count' => $current_count,
    'status' => 'success',
    'timestamp' => time()
]);
?>