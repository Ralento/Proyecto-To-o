<?php 	
	require('conexion.php');
	$id=$_POST['id'];


	$Vncontrol=$_POST['Vncontrol'];
	$Vapellido1=$_POST['Vapellido1'];
	$Vapellido2=$_POST['Vapellido2'];
	$Vnombre=$_POST['Vnombre'];
	$Vsexo=$_POST['Vsexo'];
	$Vgrupo=$_POST['Vgrupo'];
	$Vsemestre=$_POST['Vsemestre'];
	$Vcarrera=$_POST['Vcarrera'];
	$Vemail=$_POST['Vemail'];
	$query="UPDATE alumnos SET ncontrol='$Vncontrol', apellido1='$Vapellido1', apellido2='$Vapellido2', nombre='$Vnombre', sexo='$Vsexo',
	                           grupo='$Vgrupo', semestre='$Vsemestre', carrera='$Vcarrera', email='$Vemail' WHERE id='$id'";
	$resultado=$mysqli->query($query);	
?>
<html>
	<head>
		<title>ABC-alumnos</title>
	</head>	
	<body>
		<center>			
			<?php 
				require('cabecera.php');
				if($resultado>0){
			?>
				<FONT face=Arial size=4 COLOR='blue'>
					<h1>Datos del Alumno Modificado</h1>
				</FONT>							
					<?php 	}else{ ?>				
				<h1>Error al Modificar Usuario</h1>				
			<?php	} ?>			
			<p></p>	
	  		<table width='1024' border='0' class='borde' bgcolor='#D8D8D8'>
				<tr>
  					<td align='center'><a href="index.php"><input type='button' value='PRINCIPAL' name='submit'></a></td>
  				</tr>
  			</table>			
		</center>
	</body>
</html>