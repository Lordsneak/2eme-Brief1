<?php include("inc/function.php");?>
<!doctype html>
<html lang="en">
  <head>
    <title>Commande REPAS</title>
    <!-- Required meta tags -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
      <!-- Custom CSS -->
    <link rel="stylesheet" href="isset/css/main.css">
</head>
  <body>
  <nav class="navbar navbar-expand-lg navbar-light bg-light">
  <img style="width: 100px;" src="img/logo_465x320.png" alt="" srcset="">
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>

  <div class="collapse navbar-collapse" id="navbarSupportedContent">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="index.php">HOME <span class="sr-only">(current)</span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="repas">LIST RESTAURANTS</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">Contact</a>
      </li>
    </ul>
  </div>
</nav>
       <!-- ICI BODY -->
       <div class="container">
         <div class="row">
           <div class="col-md-12">
           <div class="card main bg-light">
         <div class="form1">
         <br>
         <form action="mail.php" method="post">
      <h1>Plat de Jour</h1>
      <?php 
                                    $query = "SELECT * FROM plate order by rand() limit 1";
                                    $result = query($query);
                                    $row = fetch_array($result);
                                ?>
                                <input class="form-control" name="plate" type="text" value="<?php echo $row['name_plate'];?>">
      
        <p><img class="w-25" src="<?php echo $row['image'];?>" alt="" srcset=""></p>

    <br>
           <h1>Remplir Votre Demande</h1>

       
        <span>Prenom</span>
        <br>
        <input  class="form-control" type="text" name="prenom">
        <br>
        <span>Nom</span>
        <br>
        <input  class="form-control" type="text" name="nom">
        <br>
        <span>Numero Telephone</span>
        <br>
        <input  class="form-control" type="text" name="telephone">
        <br>
        <span>Zone Livraison</span>
        <br>
        <input  class="form-control" type="text" name="zone">
        <br>

        <br>
        <br>
        <button class="btn btn-success mx-3" name="submit" type="submit">Send</button>
        </form>
        </div>
           </div>
         </div>
       </div>
      
       <!-- end BODY -->
    <!-- Optional JavaScript -->
    <!-- jQuery first, then Popper.js, then Bootstrap JS -->
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  </body>
</html>