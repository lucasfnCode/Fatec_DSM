<?php
namespace Backend\Api;

require '../vendor/autoload.php';

$method = $_SERVER['REQUEST_METHOD'];
$uri = $_SERVER['REQUEST_URI'];

if($method === 'GET' && $uri === '/') {
    http_response_code(200);
    echo json_encode(s
        ['status' => true, 'message' => 'chegou com sucesso']
    );
} elseif($method === 'POST' && $uri === '/teste') {
    $input = json_decode(file_get_contents('php://input'), true);
    http_response_code(201);
    echo json_encode(
        ['message' => 'Usuário criado', 'user' => $input]
    );
} elseif($method === 'PUT' && preg_match('/\/api.hp\/user\/d*)/', $)