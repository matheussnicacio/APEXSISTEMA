
<style>

nav {
    position: relative;
    z-index: 10000; /* ou um valor maior que o z-index dos elementos abaixo */
}
</style>



<?php
session_start();

$iduser = $_SESSION['user_id'];

// Conexão ao banco de dados
$conn = new mysqli("localhost", "root", "123", "sa");

// Verificar a conexão
if ($conn->connect_error) {
    die("Conexão falhou: " . $conn->connect_error);
}

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    if (isset($_POST['save_treino'])) { // Verifique se o botão "Salvar Treino" foi clicado
        $titulo = $_POST['titulo'];
        $descricao = $_POST['descricao'];

        // Inserir os dados na tabela treinos
        $sql = "INSERT INTO treinos (titulo, descricao, iduser) VALUES (?, ?, ?)";
        $stmt = $conn->prepare($sql);

        if ($stmt) {
            $stmt->bind_param("ssi", $titulo, $descricao, $iduser);
            if ($stmt->execute()) {
                $id_treino = $conn->insert_id; // Obtém o ID da rotina inserida

                // Inserir exercícios na tabela de exercícios relacionados à rotina
                foreach ($_POST["exercicios"] as $key => $exercicios) {
                    $series = $_POST["series"][$key];
                    $repeticoes = $_POST["repeticoes"][$key];

                    $sqlExercicio = "INSERT INTO treinos (id_treino, titulo, descricao, iduser) 
                                     VALUES (?, ?, ?, ?)";
                    $stmtExercicio = $conn->prepare($sqlExercicio);

                    if ($stmtExercicio) {
                        $stmtExercicio->bind_param("isiii", $id_treino,  $iduser);
                        if (!$stmtExercicio->execute()) {
                            echo "Erro ao inserir exercício: " . $stmtExercicio->error;
                        }
                        $stmtExercicio->close();
                    } else {
                        echo "Erro na preparação da declaração: " . $conn->error;
                    }
                }

                $_SESSION['success_message'] = 'Treino e exercícios inseridos com sucesso!';
                header("Location: ../php/inicioT.php");
            } else {
                echo "Erro ao salvar o treino: " . $stmt->error;
            }
            $stmt->close();
        } else {
            echo "Erro na preparação da declaração: " . $conn->error;
        }
    }
}

$conn->close();
?>