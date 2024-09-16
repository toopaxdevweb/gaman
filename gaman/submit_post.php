<?php
session_start();

// Vérifier si l'utilisateur est connecté
if (!isset($_SESSION['user_id'])) {
    header('Location: login.php');
    exit();
}

// Connexion à la base de données
$conn = new mysqli('localhost', 'root', '', 'manga_blog');

// Vérifier la connexion
if ($conn->connect_error) {
    die("Erreur de connexion: " . $conn->connect_error);
}

// Insérer le commentaire
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $content = $_POST['content'];
    $article_id = $_POST['article_id'];
    $user_id = $_SESSION['user_id'];

    $sql = "INSERT INTO comments (content, article_id, user_id, created_at) VALUES (?, ?, ?, NOW())";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("sii", $content, $article_id, $user_id);
    $stmt->execute();

    header("Location: article.php?id=$article_id");
}
