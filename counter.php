<?php
header('Content-Type: application/json');
header('Cache-Control: no-cache, no-store, must-revalidate');
header('Pragma: no-cache');
header('Expires: 0');

$file = 'visitors.txt';

// Ensure file exists
if (!file_exists($file)) {
    file_put_contents($file, '1500', LOCK_EX);
}

// Get current count
$current_count = (int)file_get_contents($file);

// Simple session check
if (session_status() === PHP_SESSION_NONE) {
    session_start();
}

// Logic: Increment if it's a new session
if (!isset($_SESSION['counted'])) {
    $current_count++;
    file_put_contents($file, (string)$current_count, LOCK_EX);
    $_SESSION['counted'] = true;
}

// Return as JSON
echo json_encode([
    'count' => $current_count,
    'status' => 'success',
    'timestamp' => time()
]);
?>