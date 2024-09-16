<?php
// Connexion à la base de données
$conn = new mysqli('localhost', 'root', '', 'articles_mangas');

// Vérifier la connexion
if ($conn->connect_error) {
    die("Erreur de connexion: " . $conn->connect_error);
}

// Récupérer tous les articles
$sql = "SELECT articles.id, title, image, created_at, auteur
        FROM articles
        
        ORDER BY created_at DESC";
$result = $conn->query($sql);
?>

<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Accueil | Blog Manga</title>
    <!-- Lien vers Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <nav class="navbar navbar-expand-lg navbar-dark bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="#">Mon Super Blog</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav ms-auto">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Catégories</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">S'inscrire</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Se connecter</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <div class="container mt-5">
        <h1 class="text-center">Bienvenue sur mon blog à propos de mes mangas préférés</h1>

        <div class="row mt-4">
            <?php while($row = $result->fetch_assoc()): ?>
                <div class="col-md-4 mb-4">
                    <div class="card">
                        <img src="uploads/<?= $row['image'] ?>" class="card-img-top" alt="<?= $row['title'] ?>" style="height: 200px; object-fit: cover;">
                        <div class="card-body">
                            <h5 class="card-title"><?= $row['title'] ?></h5>
                            <p class="card-text">Par <?= $row['auteur'] ?> | <?= date('d-m-Y', strtotime($row['created_at'])) ?></p>
                            <a href="article.php?id=<?= $row['id'] ?>" class="btn btn-primary">Voir l'article</a>
                        </div>
                    </div>
                </div>
            <?php endwhile; ?>
        </div>
    </div>

    <!-- Lien vers Bootstrap JS et ses dépendances -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
