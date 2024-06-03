/* Ejercicios Propuestos */

/* Consulta 1 */
SELECT IDProyecto, NombreProyecto
FROM Proyecto;

/* Consulta 2 */
SELECT IDProyecto, NombreProyecto
FROM Proyecto
WHERE Ubicacion = 'CHICAGO';

/* Consultas 3 */
SELECT IDProyecto, NombreProyecto
FROM Proyecto
WHERE IDDepartamento = 2;

/* Consulta 4 */
SELECT P.NombreProyecto, P.Ubicacion, D.NombreDepartamento
FROM Proyecto P
JOIN Departamento D ON P.IDDepartamento = D.IDDepartamento;

/* Consulta 5 */
SELECT E.NombreEmpleado
FROM Empleado E
JOIN EmpleadoProyecto EP ON E.IDEmpleado = EP.IDEmpleado
WHERE EP.IDProyecto = 4;

/* Consulta 6 */
SELECT P.IDProyecto, P.NombreProyecto
FROM Proyecto P
JOIN EmpleadoProyecto EP ON P.IDProyecto = EP.IDProyecto
WHERE EP.IDEmpleado = 4;

/* Consulta 7 */
SELECT SUM(HorasTrabajadas) AS TotalHorasTrabajadas
FROM EmpleadoProyecto
WHERE IDProyecto = 2;

/* Consulta 8 */
SELECT E.IDEmpleado, E.NombreEmpleado
FROM Empleado E
JOIN EmpleadoProyecto EP ON E.IDEmpleado = EP.IDEmpleado
WHERE EP.IDProyecto = 2 AND EP.HorasTrabajadas > 10;

/* Consulta 9 */
SELECT EP.IDEmpleado, E.NombreEmpleado, SUM(EP.HorasTrabajadas) AS TotalHorasTrabajadas
FROM EmpleadoProyecto EP
JOIN Empleado E ON EP.IDEmpleado = E.IDEmpleado
GROUP BY EP.IDEmpleado, E.NombreEmpleado;

/* Consulta 10 */
SELECT EP.IDEmpleado, E.NombreEmpleado
FROM EmpleadoProyecto EP
JOIN Empleado E ON EP.IDEmpleado = E.IDEmpleado
GROUP BY EP.IDEmpleado, E.NombreEmpleado
HAVING COUNT(DISTINCT EP.IDProyecto) > 1;

/* Consulta 11 */
SELECT EP.IDEmpleado, E.NombreEmpleado, SUM(EP.HorasTrabajadas) AS TotalHorasTrabajadas
FROM EmpleadoProyecto EP
JOIN Empleado E ON EP.IDEmpleado = E.IDEmpleado
GROUP BY EP.IDEmpleado, E.NombreEmpleado
HAVING SUM(EP.HorasTrabajadas) > 30;

/* Consulta 12 */
SELECT IDProyecto, AVG(HorasTrabajadas) AS PromedioHorasTrabajadasPorProyecto
FROM EmpleadoProyecto
GROUP BY IDProyecto;
