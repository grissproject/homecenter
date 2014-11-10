<?php

$para  = $_GET['para'];
$titulo = $_GET['titulo'];

$mensaje = $_GET['msg'] . '<br /><br />' . $_GET['url'];

// Para enviar un correo HTML, debe establecerse la cabecera Content-type
$cabeceras  = 'MIME-Version: 1.0' . "\r\n";
$cabeceras .= 'Content-type: text/html; charset=iso-8859-1' . "\r\n";

// Cabeceras adicionales
$cabeceras .= 'To: ' . $para . "\r\n";
$cabeceras .= 'From: ' . $_GET['de'] . "\r\n";

// Enviarlo
mail($para, $titulo, $mensaje, $cabeceras);
?>
<html>
  <head></head>
  <body>
    Tu mail fue enviado correctamente a <?php echo $para; ?><br />
    <button onclick="window.close();">Cerrar</button>
  </body>
</html>