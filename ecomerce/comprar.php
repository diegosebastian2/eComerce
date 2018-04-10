<?php

include("comprarW.php");

session_start();
if (isset($_SESSION['usuario'])) {

    $links = '';
    $nombre = $_SESSION['usuario'];

    $links .= "<span>Bienvenido $nombre </span>";

    $links .= "<a class='p-1 links' href='cerrarSesion.php'>Cerrar Sesion</a>";
    $links .= "<a class='p-1 links' href='compras.php'>Mis compras</a>";

} else {
    header('Location: log.php');
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
            <nav class="nav nav-fill">
              <a class="nav-link" href="#">Categorias</a>
              <a class="nav-link" href="#">Ofertas</a>
              <a class="nav-link" href="#">Sucursales</a>
              <a class="nav-link" href="#">Contacto</a>
            </nav>
        </div>
        <div class="row">
            <div id="producto" class="col">
                    <?php 
                        echo $bloque;
                    ?>
            </div>
            <div class="col px-5">
                <form method="POST" action="confirmarCompra.php" id="formulario">
                    
                        <div class="form-group">
                            <label for="cantidad">Cantidad</label>
                            <select multiple class="form-control" name="cantidad" id="cantidad">
                              <option>1</option>
                              <option>2</option>
                              <option>3</option>
                              <option>4</option>
                              <option>5</option>
                            </select>
                        </div>
                        <input type="hidden" name="id" <?php echo "value=$id"; ?> >
                        <div class="pt-4">
                            <button type="button" id="btn_comprar" class="btn">Comprar!</button>
                        </div>
                    
                </form>
            </div>
    

        </div>
        <div id="resultado">
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


            $('#btn_comprar').click(function(){

                  $.ajax({
                    method: "POST",
                    url: "finalizarCompra.php",
                    data: $('#formulario').serialize()

                  })
                    .done(function( msg ) {
                      $('#resultado').html(msg);
                    });
                });
                

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
