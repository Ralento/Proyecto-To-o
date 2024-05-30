<?php
	require('conexion.php');	
	$id=$_GET['id'];	

	$query="SELECT ncontrol, apellido1, apellido2, nombre, sexo, grupo, semestre, carrera, email FROM alumnos WHERE id='$id'";
	// $query="SELECT usuario, contrasenia, email FROM usuarios WHERE id='$id'";	
	$resultado=$mysqli->query($query);	
	$row=$resultado->fetch_assoc();	
?>
<html>
	<head>
		<title>ABC-alumnos</title>
	</head>
	<body>
		<?php
			require('cabecera.php');
		?>
		<center>
		<FONT face=Arial size=4 COLOR='blue'>
		<h1>Modificar Datos del Alumno:</h1>
		</FONT>					
		<form name="modificar_usuario" method="POST" action="mod_usuario.php">			
			<table width="70%">
				<tr>
					<input type="hidden" name="id" value="<?php echo $id; ?>">

					<td width="300" align="right"><b>N&uacute;mero de Control: &nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					<td><input type="text" name="Vncontrol" size="20" value="<?php echo $row['ncontrol']; ?>" /></td>
				</tr>	
				<tr>
					<td width="300" align="right"><b>Primer Apellido: &nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					<td><input type="text" name="Vapellido1" size="50" value="<?php echo $row['apellido1']; ?>" /></td>
				</tr>
				<tr>
				<tr>
					<td width="300" align="right"><b>Segundo Apellido: &nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					<td><input type="text" name="Vapellido2" size="50" value="<?php echo $row['apellido2']; ?>" /></td>
				</tr>
				<tr>
				<tr>
					<td width="300" align="right"><b>Nombre: &nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					<td><input type="text" name="Vnombre" size="50" value="<?php echo $row['nombre']; ?>" /></td>
				</tr>
				<tr>
				<tr>
					<td width="300" align="right"><b>Sexo: &nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					<td><input type="text" name="Vsexo" size="10" value="<?php echo $row['sexo']; ?>" /></td>
				</tr>
				<tr>
				<tr>
					<td width="300" align="right"><b>Grupo: &nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					<td><input type="text" name="Vgrupo" size="2" value="<?php echo $row['grupo']; ?>" /></td>
				</tr>
				<tr>
				<tr>
					<td width="300" align="right"><b>Semestre: &nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					<td><input type="text" name="Vsemestre" size="10" value="<?php echo $row['semestre']; ?>" /></td>
				</tr>
				<tr>
					<td width="300" align="right"><b>Carrera: &nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					<td><input type="text" name="Vcarrera" size="25" value="<?php echo $row['carrera']; ?>" /></td>
				</tr>
				<tr>
					<td width="300" align="right"><b>Email: &nbsp;&nbsp;&nbsp;&nbsp;</b></td>
					<td><input type="text" name="Vemail" size="50" value="<?php echo $row['email']; ?>" /></td>
				</tr>
				<tr>				
					<td width="300" align="right"><br><input type="submit" name="Guardar" value="GUARDAR" /></td>
					<td><a href="index.php"><br><input type='button' value='CANCELAR' name='Cancelar'></a></td>					
				</tr>
			</table>
		</form>
		</center>
	</body>
</html>