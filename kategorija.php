<?php require_once 'db.php' ?>

<?php

  $id = $_GET['id'];

  $stmt = $pdo->prepare("SELECT naziv FROM kategorija WHERE id = ?");
  $stmt->execute([$id]);
  $kategorija = $stmt->fetch();

  $stmt = $pdo->prepare("SELECT * FROM vest WHERE kategorija_id = ?");
  $stmt->execute([$id]);
  $vesti = $stmt->fetchAll();
  
?>

<?php include 'modules/head.php' ?>
<?php include 'modules/mainnav.php' ?>

<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="jumbotron">
        <h3><?= $kategorija['naziv'] ?></h3>
        <ul class="list-group">
          <?php foreach ($vesti as $vest) { ?>
            <li class="list-group-item">
              <a href="vest.php?id=<?=$vest['id'] ?>">
                <?= $vest['naslov'] ?>
              </a>
            </li>
          <?php } ?>
        </ul>
      </div>
    </div>
    <div class="col-md-4">
      <?php include 'modules/najnovije-vesti.php' ?>
      <?php include 'modules/kategorije.php' ?>
    </div>
  </div>
</div>

<?php include 'modules/foot.php' ?>