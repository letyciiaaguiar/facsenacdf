<?php
// Conecta ao banco de dados
include('conexao.php');

if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    // Pega os dados do formulário
    $nome = mysqli_real_escape_string($conexao, $_POST['nome']);
    $email = mysqli_real_escape_string($conexao, $_POST['email']);
    $usuario = mysqli_real_escape_string($conexao, $_POST['usuario']);
    $senha = mysqli_real_escape_string($conexao, $_POST['senha']);

    // Verifica se o usuário já existe
    $verifica = mysqli_query($conexao, "SELECT * FROM usuarios WHERE usuario = '$usuario' OR email = '$email'");
    if (mysqli_num_rows($verifica) > 0) {
        echo "<script>alert('Usuário ou email já cadastrado!'); window.location.href='cadastro.html';</script>";
        exit;
    }

    // Armazena a senha em texto simples (não segura)
    // A senha será salva diretamente sem criptografia
    // $senha = password_hash($senha, PASSWORD_DEFAULT);  // Removido

    // Insere no banco
    $sql = "INSERT INTO usuarios (nome, email, usuario, senha) VALUES ('$nome', '$email', '$usuario', '$senha')";

    if (mysqli_query($conexao, $sql)) {
        echo "<script>alert('Cadastro realizado com sucesso!'); window.location.href='login.html';</script>";
    } else {
        echo "<script>alert('Erro ao cadastrar!'); window.location.href='cadastro.html';</script>";
    }
}
?>