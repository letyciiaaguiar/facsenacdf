<?php
session_start();
include('conexao.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $usuario = mysqli_real_escape_string($conexao, $_POST['usuario']);
    $senha = mysqli_real_escape_string($conexao, $_POST['senha']);

    // Verifica no banco se o usuário ou email existe
    $sql = "SELECT * FROM usuarios WHERE usuario = '$usuario' OR email = '$usuario'";
    $resultado = mysqli_query($conexao, $sql);

    if (mysqli_num_rows($resultado) == 1) {
        $usuario_db = mysqli_fetch_assoc($resultado);

        // Compara a senha digitada com a do banco (sem hash por enquanto)
        if ($usuario_db['senha'] === $senha) {
            // Login OK
            $_SESSION['usuario'] = $usuario_db['usuario'];
            header("Location: painel.php");
            exit;
        } else {
            echo "<script>alert('Senha incorreta!'); window.location.href='login.html';</script>";
        }
    } else {
        echo "<script>alert('Usuário não encontrado!'); window.location.href='login.html';</script>";
    }
}
?>
