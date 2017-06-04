<?php include('autoload.php'); ?>
<!DOCTYPE html>
<html lang="es">
<head>
	<meta charset="UTF-8">
	<title>Encuesta</title>
</head>
<body>
<h1>Satisfación Cliente</h1>
<hr>
<form action="respuestas.php" method="POST">
<?php 
$pregunta = new Pregunta();
foreach ($pregunta->lista() as $key_p => $value_p)
 {
    echo "<label>".$value_p['nombre']."</label>"."</br>";
    $opciones = new Opciones();
    foreach ($opciones->lista($value_p['id']) as $key => $value_r) 
    {
        echo "<input type='radio' name='option".$value_p['id']."' value='".$value_r['id']."'  required>".$value_r['nombre']."</br>";


    }
      echo "<hr>";
 }

 ?> 

<button>Enviar</button>

</form>
</body>
</html>