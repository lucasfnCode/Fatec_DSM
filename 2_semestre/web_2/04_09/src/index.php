<?php
namespace Api\Aula;
require_once '../vendor/autoload.php';
use Api\Aula\controller\UserController;

$method = $_SERVER['REQUEST_METHOD'];
$uri = $_SERVER['REQUEST_URI'];

switch($method) {
    case 'GET':
        switch($uri) {
            case '/users':
                $users = new UserController;
                $response = $users->getUsers();
                if($response){
                    http_response_code(200);
                    echo json_encode(['status' => true, 'message' => 'Recebido com sucesso, em /users!', 'Users' => $response]);
                }else {
                    http_response_code(204);
                    echo json_encode(['status' => true, 'message' => 'Recebido com sucesso, em /users!', 'Users' => []]);
                }
                break;
            case '/produtos':
                http_response_code(200);
                echo json_encode(['status' => true, 'message' => 'Recebido com sucesso, em /produtos', 'uri' => $uri]);
                break;
        }
    break;

    case 'POST':
        switch($uri) {
            case '/users':
                $data = json_decode(file_get_contents('php://input'), true);
                http_response_code(201);
                echo json_encode(['status' => true, 'message' => 'Recebido com sucesso, em /users!', 'data' => $data]);
                break;
            case '/produtos':
                http_response_code(201);
                echo json_encode(['status' => true, 'message' => 'Recebido com sucesso, em /produtos!', 'data' => $data]);
                break;
            default:
                echo json_encode(['URI inválida']);
        }
}