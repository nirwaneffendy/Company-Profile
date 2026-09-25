<?php
header('Content-Type: application/json');
header('Cache-Control: no-cache, no-store, must-revalidate');
header('Pragma: no-cache');
header('Expires: 0');

$file = 'visitors.txt';
$log_file = 'visitor_ips.txt';

// Ensure files exist with initial count 2985
if (!file_exists($file)) {
    file_put_contents($file, '2985', LOCK_EX);
}
if (!file_exists($log_file)) {
    file_put_contents($log_file, '', LOCK_EX);
}

// Get client IP address
function get_client_ip() {
    $ip = $_SERVER['REMOTE_ADDR'] ?? '127.0.0.1';
    if (!empty($_SERVER['HTTP_CLIENT_IP'])) {
        $ip = $_SERVER['HTTP_CLIENT_IP'];
    } elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR'])) {
        $ip = explode(',', $_SERVER['HTTP_X_FORWARDED_FOR'])[0];
    }
    return trim($ip);
}

$user_ip = get_client_ip();
$today = date('Y-m-d');
$visitor_key = md5($user_ip . '_' . $today);

// Read recorded keys
$recorded_keys = file_exists($log_file) ? file($log_file, FILE_IGNORE_NEW_LINES | FILE_SKIP_EMPTY_LINES) : [];

$current_count = (int)file_get_contents($file);
if ($current_count < 2985) {
    $current_count = 2985;
}

// If new unique visitor today, increment count & log key
if (!in_array($visitor_key, $recorded_keys)) {
    $current_count++;
    file_put_contents($file, (string)$current_count, LOCK_EX);
    file_put_contents($log_file, $visitor_key . "\n", FILE_APPEND | LOCK_EX);
}

echo json_encode([
    'count' => $current_count,
    'status' => 'success',
    'timestamp' => time()
]);
?>