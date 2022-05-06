<?php require_once 'db.php' ?>

<?php 
  $stmt = $pdo->query("SELECT * FROM vest");
  $vesti = $stmt->fetchAll();
?>

<?php include 'modules/head.php' ?>
<?php include 'modules/mainnav.php' ?>

<div class="container">
  <div class="row">
    <div class="col-md-8">
      <div class="jumbotron">
        <h2 class="mt-4 mb-4">Sve Vesti</h2>
        <?php foreach ($vesti as $vest) { ?>
          <div class="card mb-4">
            <div class="card-header"><h2><?= $vest['naslov'] ?></h2></div>
            <div class="card-body">
              <p>
                Objavljeno:
                <strong>
                  <?= date("d.m.Y", strtotime($vest['objavljeno'])); ?>
                </strong>
              </p>
            </div>
            <a class="btn btn-primary" href="vest.php?id=<?=$vest['id']?>">Procitaj Vise</a>
          </div>
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