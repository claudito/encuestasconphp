<?php 

include('autoload.php');

$pregunta = new Pregunta();
$opciones = new Opciones();



$pregunta1 = $opciones -> consulta($_POST['opcion1'],'nombre');

$pregunta2 = $opciones -> consulta($_POST['opcion2'],'nombre');


 ?>

 <!DOCTYPE html>
 <html lang="es">
 <head>
 	<meta charset="UTF-8">
 	<title>Respuestas</title>
 </head>
 <body>
<h1>Resultado:</h1>
<ul>
<li><?php echo $pregunta->consulta(1,'nombre'); ?> : <?php echo $pregunta1;?></li>
<li><?php echo $pregunta->consulta(2,'nombre'); ?> :<?php echo $pregunta2;?></li>
</ul>

<a href="encuesta.php">Volver a realizar la encuesta</a>
 	
 </body>
 </html>