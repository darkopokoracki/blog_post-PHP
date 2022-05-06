<?php require_once 'db.php' ?>

<?php

  $stmt = $pdo->query("SELECT * FROM kategorija");
  $kategorije = $stmt->fetchAll();

?>

<div class="jumbotron">
  <h3 class="mb-4 text-center text-danger">Kategorije</h3>
  <ul class="list-group">
    <?php foreach ($kategorije as $kategorija) { ?>
        <li class="list-group-item">
          <a href="kategorija.php?id=<?= $kategorija['id'] ?>">
            <?= $kategorija['naziv'] ?>
          </a>
        </li>
    <?php } ?>
  </ul>
</div>
