<?php require_once 'db.php' ?>

<?php

  $stmt = $pdo->query("SELECT * FROM vest ORDER BY objavljeno DESC LIMIT 5");
  $vesti = $stmt->fetchAll();

?>

<div class="jumbotron">
  <h3 class="text-center mb-4 mt-4 text-warning">Najnovije vesti</h3>
  <ul class="list-group">
    <?php foreach ($vesti as $vest) { ?>
      <li class="list-group-item">
        <a href="vest.php?id=<?= $vest['id'] ?>"><?= $vest['naslov'] ?></a>
      </li>
    <?php } ?>
  </ul>
</div>