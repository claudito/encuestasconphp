<?php 

include('autoload.php');

$pregunta = new Pregunta();
$opciones = new Opciones();

?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Resultados</title>
</head>
<body>
<h1>Resultado de la encuesta</h1>
<hr>
<?php 

foreach ($pregunta->lista() as $key_p => $value_p) 
{
   
   echo "<Strong>".$pregunta->consulta($value_p['id'],'nombre')."</Strong>";
    
   echo "</br>";
  
   $opcion =  "option".$value_p['id'];

   echo $opciones -> consulta($_POST[$opcion],'nombre')."</br>";
   echo "</br>";
}


 ?>

 
<a href="encuesta.php">Volver a realizar la encuesta</a>
</body>
</html>