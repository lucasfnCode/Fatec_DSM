<?php
namespace Api\Aula\Controller;

class UserController {

    public function getUsers() {
        return [
            ['nome' => 'tux', 'idade' => 32],
            ['nome' => 'Spider', 'idade' => 45]
        ];
    }


}