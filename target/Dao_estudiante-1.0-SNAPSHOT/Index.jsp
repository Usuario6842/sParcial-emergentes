<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- 
    Document   : Index
    Created on : 14 may. 2024, 19:41:51
    Author     : Admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="estilos.css">
    </head>
    <style>
        *{
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }
        .datos{
            width:400px;
            border:2px solid black;
            text-align: center;
            justify-content: center;
            padding: 2rem 6rem;
            text-align: center;
        }

        .wrapper{
            max-width: 900px;
            margin: auto;
            height: 100vh;
            display: grid;
            place-content: center;
        }
        .nuevo{
            padding: .5rem 2rem;
            background-color: transparent;
            color: red;
            font-weight: bold;
            text-transform: uppercase;
            border: 2px solid red;
            border-radius: 5rem;
        }
        h1{
            margin: 2rem 0;
            color: red;
            font-weight: bold;
            text-transform: uppercase;
        }
        table{
            margin: 2rem 0;
        }

    </style>
    <body>
        <div class="wrapper">
            <div class="datos">
                <p><strong>SEGUNDO PARCIAL TECNOLOGIAS EMERGENTES</strong></p>
                <p><strong>Nombre</strong> Bernardo Lima Cardenas</p>   
                <p><strong>CI</strong> 10070606 lp</p>

            </div>
            <h1 >Registro Día del Internet</h1>
            <p><a href="Inicio?action=add" class="nuevo">Nuevo</a></p>

            <table border="1" class="tablac">
                <tr>
                    <th>Id</th>
                    <th>Nombres</th>
                    <th>Apellidos</th>
                    <th>Seminario</th>
                    <th>Confirmado</th>
                    <th>Fecha</th>
                    <th colspan="2">Metodos</th>

                </tr>
                <c:forEach var="estudiante" items="${estudiantes}">
                    <tr>
                        <td>${estudiante.id}</td>
                        <td>${estudiante.nombres}</td>
                        <td>${estudiante.apellidos}</td>
                        <td>${estudiante.seminario}</td>
                        <td><input type="checkbox" readonly <c:if var="if" test="${estudiante.confirmado==1}">checked</c:if> ></td>

                            <td>${estudiante.fecha}</td>
                        <td><a href="Inicio?action=edit&id=${estudiante.id}">Editar</a></td>
                        <td><a href="Inicio?action=delete&id=${estudiante.id}" onclick="return confirm('¿Está seguro de eliminar este estudiante?')">Eliminar</a></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>
