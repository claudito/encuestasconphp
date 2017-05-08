<?php 



class Opciones{



function __construct()
{


}



function lista($idpregunta)
{
  
  $db  = new Conexion();
  $query  = "SELECT * FROM opciones WHERE id_pregunta='".$idpregunta."'";
  $result = $db->query($query);
  while ($fila = mysqli_fetch_assoc($result)) 
  {
  	  $dato[]  = $fila;
  }

     return $dato;

}


function consulta($id,$campo)
{
  
  $db  = new Conexion();
  $query  = "SELECT * FROM opciones WHERE id='".$id."'";
  $result = $db->query($query);
  $dato   = mysqli_fetch_array($result);
  return $dato[$campo];

}




}





 ?>