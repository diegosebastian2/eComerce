<?php

include("printCompras.php");

if (isset($_SESSION['usuario'])) {
    $links = '';

    $nombre = $_SESSION['usuario'];

    $links .= "<a class='p-1 links' href='cerrarSesion.php'>Cerrar Sesion</a>";
    $links .= "<a class='p-1 links' href='index.php'>Home</a>";
    

} else {
    $links = '<a class="p-1 links" href="log.php">Log?</a>';
}


?>




<!doctype html>
<html class="no-js" lang="">
    <head>
        <meta charset="utf-8">
        <meta http-equiv="x-ua-compatible" content="ie=edge">
        <title>Home - ecomerce</title>
        <meta name="description" content="">
        <meta name="viewport" content="width=device-width, initial-scale=1">

        <link rel="manifest" href="site.webmanifest">
        <link rel="apple-touch-icon" href="icon.png">
        <!-- Place favicon.ico in the root directory -->

        <link rel="stylesheet" href="css/main.css">
        <link rel="stylesheet" href="css/normalize.css">
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/jquery.fancybox.min.css">
        <link rel="stylesheet" href="css/custom.css">
    </head>
    <body>
    <div id="content" class="content">
        <div id="log">
            <?php echo $links; ?>
        </div>
        <div class="containter-fluid menu">
            <ul class="nav nav-fill">
              <li><a class="nav-link" href="#">Ofertas</a></li>
              <li><a class="nav-link" href="#">Sucursales</a></li>
              <li><a class="nav-link" href="#">Contacto</a></li>
            </ul>
        </div>

        <div id="compras">
                  <div class="col-lg-6 order-lg-1 p-4 text-center">
                    <table class="table">
                      <thead>
                        <tr>
                          <th scope="col">#</th>
                          <th scope="col">Producto</th>
                          <th scope="col">Cantidad</th>
                          <th scope="col">Monto</th>
                        </tr>
                      </thead>
                      <tbody>
                      <?php 
                          echo $bloque;

                       ?>
                        </tbody>
                      </table>
                    </div>
              

        </div>

    </div>
        
        <script src="js/vendor/modernizr-3.5.0.min.js"></script>
        <script src="https://code.jquery.com/jquery-3.2.1.min.js" integrity="sha256-hwg4gsxgFZhOsEEamdOYGBf13FyQuiTwlAQgxVSNgt4=" crossorigin="anonymous"></script>
        <!--<script>window.jQuery || document.write('<script src="js/vendor/jquery-3.2.1.min.js"><\/script>')</script>-->

        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

        <script type="text/javascript" src="js/bootstrap.min.js"></script>
  
        <script src="js/jquery.fancybox.min.js"></script>
        <script src="js/jquery.zoom.min.js"></script>
        <script src="js/smooth-scroll.min.js"></script>

        <script>
        $(document).ready(function(){
            $('div.infoDetalle').attr("data-scroll");
                

        });


        var scroll = new SmoothScroll("a[href*='#']",{

        });         
        </script>




        <script src="js/plugins.js"></script>
        <script src="js/main.js"></script>

        <!-- Google Analytics: change UA-XXXXX-Y to be your site's ID. -->
        <script>
            window.ga=function(){ga.q.push(arguments)};ga.q=[];ga.l=+new Date;
            ga('create','UA-XXXXX-Y','auto');ga('send','pageview')
        </script>
        <script src="https://www.google-analytics.com/analytics.js" async defer></script>
    </body>
</html>
