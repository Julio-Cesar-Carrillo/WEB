<?php
//session_start();
//$user=$_POST['user'];
//$contra=$_POST['contra'];
//if ($user='Admin' and $contra='1234') {
//    echo "<script>alert('Bienvenido')</script>";
//}
//else{
//    echo "<script>alert('El usuario o la contraseña no es correcta')</script>";
//    session_destroy();
//    header("Location: index.html");
//    exit();
//}
//$conn=mysqli_connect('localhost', 'root', '','clase');
//if (!$conn){
//    header("location: error.html");
//    exit();
//}

include "connexion.php";

$sql = "SELECT ALUMNE.*, CLASSE.nom_classe FROM ALUMNE
INNER JOIN CLASSE ON ALUMNE.classe = CLASSE.id_classe";

$listaalumnos=mysqli_query($connection, $sql);

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mac School</title>
    <link rel="stylesheet" href="../CSS/brocs.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
</head>
<body>
    <div class="navbar" >
        <button onclick="alumno()" class="boton">Alumnos</button>
        <button onclick="profe()" class="boton">Profesores</button>
        <button onclick="departamento()" class="boton">Departamentos</button>
        <button onclick="clase()" class="boton">Clases</button>
        <select class="boton" id="opcion" onchange="cambio()">
            <option value="1">Nuevo Alumno</option>
            <option value="2">Nuevo Profesor</option>
            <option value="3">Nuevo Departamento</option>
            <option value="4">Nueva Clase</option>
        </select>
        <input type="search" placeholder="Buscar" class="lupa">
        <button>Buscar</button>
        <button class="boton">Filtrar</button>
    </div>
    <div id="alumnos">
        <h1>Alumnos</h1>
        <table class="tabla">
        <thead>
        <tr>
        <th>Matricula</th>
        <th>Nombre</th>
        <th>Apellido 1</th>
        <th>Apellido 2</th>
        <th>Correo</th>
        <th>Dni</th>
        <th>Telefono</th>
        <th>Fecha de matriculacion</th>
        <th>Clase</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <?php
        foreach ($listaalumnos as $alumno) {
            echo "<tr>
                    <td>{$alumno['num_matric']}</td>
                    <td>{$alumno['nom_alu']}</td>
                    <td>{$alumno['cognom1_alu']}</td>
                    <td>{$alumno['cognom2_alu']}</td>
                    <td>{$alumno['email_alu']}</td>
                    <td>{$alumno['dni_alu']}</td>
                    <td>{$alumno['telf_alu']}</td>
                    <td>{$alumno['fecha_matric_alu']}</td>
                    <td>{$alumno['nom_classe']}</td>
             </tr>";
        }
        ?>
        </tr>
        </tbody>
        </table>
    </div>
    <div id="profes">
        <h1>Profesores</h1>
        <table class="tabla">
        <thead>
        <tr>
        <th>DNI</th>
        <th>Nombre</th>
        <th>Apellido 1</th>
        <th>Apellido 2</th>
        <th>Correo</th>
        <th>Telefono</th>
        <th>Salario</th>
        <th>Departamento</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <?php
        
        $sql = "SELECT PROFESSOR.*, DEPARTAMENT.nom_dept FROM PROFESSOR
        INNER JOIN DEPARTAMENT ON PROFESSOR.dept_prof = DEPARTAMENT.id_dep";

        $result = $connection->query ($sql);
        if ($result->num_rows > 0) {
            while($row = $result->fetch_array()) {
                $fila="<tr>";
                $fila=$fila."<td>" . $row["dni_profe"] . "</td>";
                $fila=$fila."<td>" . $row["nom_profe"] . "</td>";
                $fila=$fila."<td>" . $row["cognom1_profe"] . "</td>";
                $fila=$fila."<td>" . $row["cognom2_profe"] . "</td>";
                $fila=$fila."<td>" . $row["email_prof"] . "</td>";
                $fila=$fila."<td>" . $row["telf_prof"] . "</td>";
                $fila=$fila."<td>" . $row["sal_prof"] . "</td>";
                $fila=$fila."<td>" . $row["nom_dept"] . "</td>";
                echo $fila;
                }
            }
        ?>
        </tr>
        </tbody>
        </table>
    </div>
    <div id="departamentos">
        <h1>Departamentos</h1>
        <table class="tabla">
        <thead>
        <tr>
        <th>Id</th>
        <th>Codigo</th>
        <th>Nombre</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <?php
        $sql = "SELECT * FROM DEPARTAMENT";
        
        $listado=mysqli_query($connection, $sql);
        
        foreach ($listado as $lista) {
            echo "<tr>
                    <td>{$lista['id_dep']}</td>
                    <td>{$lista['codi_dept']}</td>
                    <td>{$lista['nom_dept']}</td>
             </tr>";
        }
        ?>
        </tr>
        </tbody>
        </table>
    </div>
    <div id="clases">
        <h1>Clases</h1>
        <table class="tabla">
        <thead>
        <tr>
        <th>Id</th>
        <th>Codigo</th>
        <th>Nombre</th>
        <th>Tutor</th>
        </tr>
        </thead>
        <tbody>
        <tr>
        <?php

        $sql = "SELECT CLASSE.*, PROFESSOR.nom_profe FROM CLASSE
        INNER JOIN PROFESSOR ON CLASSE.tutor = PROFESSOR.dni_profe";
        
        $listado=mysqli_query($connection, $sql);
        
        foreach ($listado as $lista) {
            echo "<tr>
                    <td>{$lista['id_classe']}</td>
                    <td>{$lista['codi_classe']}</td>
                    <td>{$lista['nom_classe']}</td>
                    <td>{$lista['nom_profe']}</td>
             </tr>";
        }
        ?>
        </tr>
        </tbody>
        </table>
    </div>
<script src="../JS/main.js"></script>
</body>
</html>