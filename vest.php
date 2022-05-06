<?php require_once 'db.php' ?>

<?php
  $id = $_GET['id'];
  
  $stmt = $pdo->prepare("SELECT * FROM vest WHERE id=?");
  $stmt->execute([$id]);

  $vest = $stmt->fetch();
?>

<?php include 'modules/head.php' ?>
<?php include 'modules/mainnav.php' ?>

<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="jumbotron">
        <h2 class="text-center mb-4"><?= $vest['naslov'] ?></h2>
        <p class="text-center">
          <?= $vest['sadrzaj'] ?>
        </p>
        <?php if ($vest['slika']) { ?>
          <img src="images/<?=$vest['slika']?>" alt="Slika">
        <?php } ?>
      </div>

    </div>
    <div class="col-md-4">
      <?php include 'modules/najnovije-vesti.php' ?>
      <?php include 'modules/kategorije.php' ?>
    </div>
  </div>
</div>

<?php include 'modules/foot.php' ?>