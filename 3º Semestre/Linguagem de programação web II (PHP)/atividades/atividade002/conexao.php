<?php
$servidor = "localhost";
$usuario = "root";
$senha = ""; 
$banco = "atividade002";

$conexao = new mysqli('localhost', 'root', '', 'atividade002', 3307);


if ($conexao->connect_error) {
    die("Conexão falhou: " . $conexao->connect_error);
}
?>
