<?php
// Connexion à la base de données
$conn = new mysqli('localhost', 'root', '', 'articles_mangas');

// Vérifier la connexion
if ($conn->connect_error) {
    die("Erreur de connexion: " . $conn->connect_error);
}

// Récupérer l'article par son ID
$article_id = $_GET['id'];
$sql = "SELECT articles.*, users.name AS author, 
        FROM articles
        JOIN users ON articles.author_id = users.id
        JOIN categories ON articles.category_id = categories.id
        WHERE articles.id = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("i", $article_id);
$stmt->execute();
$result = $stmt->get_result();
$article = $result->fetch_assoc();

// Récupérer les commentaires de cet article
$comments_sql = "SELECT comments.content, users.name AS user_name, comments.created_at 
                 FROM comments
                 JOIN users ON comments.user_id = users.id
                 WHERE article_id = ?
                 ORDER BY comments.created_at DESC";
$stmt = $conn->prepare($comments_sql);
$stmt->bind_param("i", $article_id);
$stmt->execute();
$comments_result = $stmt->get_result();
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title><?= $article['title'] ?> | Blog Manga</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <h1><?= $article['title'] ?></h1>
    <p>Par <a href="author.php?id=<?= $article['author_id'] ?>"><?= $article['author'] ?></a> | Catégorie : <a href="category.php?id=<?= $article['category_id'] ?>"><?= $article['category'] ?></a></p>
    <p>Publié le <?= date('d-m-Y', strtotime($article['created_at'])) ?></p>
    <img src="uploads/<?= $article['image'] ?>" alt="<?= $article['title'] ?>" style="width:100%;height:auto;">
    <div class="content">
        <?= nl2br($article['content']) ?>
    </div>

    <h3>Commentaires</h3>
    <?php while($comment = $comments_result->fetch_assoc()): ?>
        <div class="comment">
            <p><strong><?= $comment['user_name'] ?></strong> a commenté le <?= date('d-m-Y H:i', strtotime($comment['created_at'])) ?> :</p>
            <p><?= $comment['content'] ?></p>
        </div>
    <?php endwhile; ?>

    <form action="submit_comment.php" method="POST">
        <input type="hidden" name="article_id" value="<?= $article_id ?>">
        <textarea name="content" placeholder="Votre commentaire"></textarea>
        <button type="submit">Envoyer</button>
    </form>
</body>
</html>