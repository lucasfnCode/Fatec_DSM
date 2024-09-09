<?php

$notas = [1,2,3,4,5];

$somaNotas = 0;

foreach($notas as $nota){

    $somaNotas = $somaNotas + $nota;

};

$quantItens = count($notas);

function calcMedia($somaNotas, $quantItens) {

    $media = 0;

    $media = $somaNotas / $quantItens;

    return $media . "\n";

}

echo(calcMedia($somaNotas, $quantItens));