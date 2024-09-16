<?php
// Connexion à la base de données
$conn = new mysqli('localhost', 'root', '', 'manga_blog');

// Vérifier la connexion
if ($conn->connect_error) {
    die("Erreur de connexion: " . $conn->connect_error);
}

// Récupérer les articles de l'auteur par son ID
$author_id = $_GET['id'];
$sql = "SELECT * FROM articles WHERE Auteur = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $Auteur);
$stmt->execute();
$result = $stmt->get_result();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Articles par Auteur | Blog Manga</title>
</head>
<body>
    <h1>Articles de l'auteur</h1>

    <div class="articles-list">
        <?php while($row = $result->fetch_assoc()): ?>
            <div class="article-preview">
                <h2><a href="article.php?id=<?= $row['id'] ?>"><?= $row['title'] ?></a></h2>
                <p>Publié le <?= date('d-m-Y', strtotime($row['created_at'])) ?></p>
            </div>
        <?php endwhile; ?>
    </div>
</body>
</html>
