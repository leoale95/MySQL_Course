
# MySQL Bootcamp

Este repositorio contiene todo el material y ejercicios que cubrí durante el bootcamp de MySQL. Aquí encontrarás una serie de lecciones y ejemplos prácticos que abarcan desde las consultas básicas hasta conceptos más avanzados, organizados en diferentes módulos.

## Contenido

1. **Introducción**  
   Breve introducción a MySQL y preparación del entorno.

2. **Select Statement**  
   Uso de `SELECT` para obtener datos de las tablas.
   ```sql
   SELECT * FROM employees;
   ```

3. **Where Clause**  
   Filtrado de datos con `WHERE`.
   ```sql
   SELECT * FROM employees WHERE department = 'Sales';
   ```

4. **Order By**  
   Ordenación de resultados con `ORDER BY`.
   ```sql
   SELECT * FROM employees ORDER BY last_name ASC;
   ```

5. **Having vs Where**  
   Diferencias y usos específicos de `HAVING` y `WHERE`.
   ```sql
   SELECT department, COUNT(*) as total_employees 
   FROM employees 
   GROUP BY department 
   HAVING total_employees > 5;
   ```

6. **Limit and Aliasing**  
   Limitación de resultados con `LIMIT` y uso de alias para columnas y tablas.
   ```sql
   SELECT first_name AS name, salary 
   FROM employees 
   LIMIT 10;
   ```

7. **Joins**  
   Combinación de datos de múltiples tablas usando diferentes tipos de `JOIN`.
   ```sql
   SELECT e.first_name, d.department_name 
   FROM employees e 
   JOIN departments d ON e.department_id = d.id;
   ```

8. **Unions**  
   Combinación de resultados de múltiples consultas con `UNION` y `UNION ALL`.
   ```sql
   SELECT first_name FROM employees_sales
   UNION
   SELECT first_name FROM employees_marketing;
   ```

9. **String Functions**  
   Manipulación y funciones aplicadas a cadenas de texto.
   ```sql
   SELECT CONCAT(first_name, ' ', last_name) AS full_name 
   FROM employees;
   ```

10. **Case Statements**  
    Uso de `CASE` para crear lógicas condicionales en las consultas.
    ```sql
    SELECT first_name, 
           CASE 
               WHEN salary > 5000 THEN 'High'
               WHEN salary BETWEEN 3000 AND 5000 THEN 'Medium'
               ELSE 'Low'
           END AS salary_category
    FROM employees;
    ```

11. **Subqueries**  
    Consultas anidadas y su aplicación en `SELECT`, `FROM`, y `WHERE`.
    ```sql
    SELECT first_name 
    FROM employees 
    WHERE department_id = (SELECT id FROM departments WHERE name = 'IT');
    ```

12. **CTE (Common Table Expressions)**  
    Definición y uso de expresiones de tabla común con `WITH`.
    ```sql
    WITH sales_employees AS (
        SELECT * 
        FROM employees 
        WHERE department = 'Sales'
    )
    SELECT * FROM sales_employees;
    ```

13. **Window Functions**  
    Uso de funciones de ventana (`ROW_NUMBER`, `RANK`, etc.) para análisis avanzado.
    ```sql
    SELECT first_name, salary, 
           RANK() OVER (ORDER BY salary DESC) as salary_rank
    FROM employees;
    ```

14. **Temporary Tables**  
    Creación y uso de tablas temporales.
    ```sql
    CREATE TEMPORARY TABLE temp_sales AS 
    SELECT * FROM sales_data;
    ```

15. **Stored Procedures**  
    Definición y ejecución de procedimientos almacenados.
    ```sql
    DELIMITER //
    CREATE PROCEDURE GetEmployeeCount()
    BEGIN
        SELECT COUNT(*) FROM employees;
    END //
    DELIMITER ;
    ```

16. **Events and Triggers**  
    Creación y gestión de eventos y triggers para automatizar tareas.
    ```sql
    CREATE TRIGGER update_employee_salary
    BEFORE UPDATE ON employees
    FOR EACH ROW
    SET NEW.salary = NEW.salary * 1.1;
    ```

## Cómo usar este repositorio

Cada módulo contiene un archivo SQL con ejemplos y ejercicios prácticos. Puedes clonar el repositorio y seguir los ejemplos en tu propio entorno de MySQL.

1. Clona el repositorio:
   ```bash
   git clone https://github.com/tu_usuario/mysql-bootcamp.git
   ```
2. Navega a cada módulo y ejecuta las consultas en tu cliente de MySQL.

## Contribuciones

Si tienes sugerencias o mejoras para este repositorio, siéntete libre de hacer un fork y crear un pull request. ¡Toda la colaboración es bienvenida!

## Contacto

Si tienes alguna pregunta o comentario, puedes contactarme a través de [LinkedIn](https://www.linkedin.com/in/tu-perfil) o directamente en GitHub.

---

¡Gracias por visitar mi repositorio y feliz codificación!
