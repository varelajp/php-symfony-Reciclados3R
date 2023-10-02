<p align="center" style="margin-top: 120px">

  <h1 align="center">Reciclados 3R - Notas de llamadas telefónicas</h1>

  <p align="center">
    Prueba de Desarrollo PHP, JS Y MySQL.
  </p>
</p>

## About Reciclados 3R Phone Calls

<p>
En la empresa “Reciclados 3R” tenemos diferentes usuarios que pueden acceder a la
aplicación. Los departamentos a los que pueden pertenecer son:
</p>

- Atención al cliente
- Recursos Humanos
- Comercial
- Limpieza
- Planta de reciclaje

Y cada usuario puede tener un único rol:
- Jefe
- Responsable de equipo
- Empleado

<p>
Necesitamos tener un login y un CRUD para guardar las diferentes notas que se
recogerán desde las llamadas telefónicas que nos realizarán los clientes a través de la
centralita de la empresa. Contemplará las diferentes vistas que necesitamos en un
CRUD.
</p>
<p>
  
<h4>En la vista CREATE</h4>
El formulario guardará la nota con los siguientes campos:
</p>

- el empleado que abre la nota. Será el usuario logueado.
- el departamento al que va dirigida la nota.
- una descripción de lo hablado con el cliente
- el cliente que realiza la llamada (nombre, empresa a la que pertenece y teléfono de
contacto)
- la fecha y hora en la que se crea la nota.
- fecha y hora en la que se guarda la nota (en este caso null)
- fecha y hora en la que se elimina la nota ( en este caso null)
- fecha y hora en la que se reactiva la nota ( en este caso null)
- Estado ( Pendiente, En Proceso, Terminado). Siempre se realizará la creación en el
estado pendiente.
<p>
Ese formulario será accesible sólo para los usuarios de la aplicación que pertenezcan al
departamento “Atención al cliente”. Al resto se les mostrará una notificación que
muestre “No tiene permisos”.
</p>
<h4>En la vista UPDATE</h4>
<p>
Sólo podrá realizarse el cambio en:
</p>

- la descripción (sólo si es la persona que creó la nota, su responsable o el jefe)
- el estado (que podrá cambiarlo cualquier empleado).
- En este caso, también aparecerá el campo observaciones por si tienen que añadir
alguna observación. En este caso, necesitamos saber la última vez que se actualizó la
nota.

Restricciones.
<p>
Ese formulario será accesible sólo para los usuarios de la aplicación que pertenezcan al
departamento al que va dirigida la nota y sólo si su rol es jefe o responsable de equipo.
Al resto se les mostrará una notificación que muestre “No tiene permisos”.
</p>
<p>
<h4>Cuando realicemos DELETE</h4>
Se pedirá confirmación al usuario y sólo podrá realizar el
borrado si pertenece al departamento de Atención al cliente y es responsable o jefe.
Tener en cuenta que no se realizará un delete si no que en este caso necesitamos
conservar las notas y sólo guardar la fecha en la que se realizó el borrado.
</p>
<p>
<h4>Por último, la vista READ</h4>
Mostrará una tabla con todas las notas creadas donde
aparecerá una tabla que mostrará un filtro para poder filtrar por cliente o descripción.
</p>
<p>
Restricciones.
<p>
La tabla se verá por todos los usuarios pero cada departamento verá sus notas
asociadas. Es decir, sólo el departamento Comercial verá las notas asociadas al
departamento comercial. Sólo el rol jefe y el departamento Atención al cliente verá
todas las notas.
</p>
<p>
Mostrará los siguientes campos de la nota: código de la nota, nombre del empleado,
nombre del cliente, empresa del cliente, teléfono del cliente, estado, descripción (Sólo
los primeros 10 caracteres). En cada fila se verá un botón para poder actualizar la nota
o borrar (en este caso, sólo podrá borrar el departamento de Atención al cliente y sólo
si es responsable o jefe por lo que sólo para ellos se verá activo)
Si la nota tiene observaciones se mostrará un icono pequeño al lado del código. Elige el
icono que quieras y que defina lo que quiere identificar por ejemplo un bloc de notas.
En la tabla se mostrarán todas las notas. Se diferenciarán los registros eliminados
mostrando su fila en rojo, sin botones de actualizar ni de eliminar.
</p>

<h4>PLUS DE EJERCICIO</h4>

- Añadir en la vista READ un botón Activar para que las notas eliminadas puedan estar
activas de nuevo. La tabla de notas tendrá activo el campo Reactivada. Si vuelve a
eliminarse el campo reactivada no estará activo en la tabla y la fecha y hora de
reactivación se eliminará. Sólo podrán hacerlo los responsables del departamento al
que pertenezca la nota. Aparecerá una notificación para confirmar si quiere activar la
nota.
- Diferenciar las filas de las tablas por diferentes colores según el estado.

    * Color azul: pendiente
    * Color naranja: En proceso
    * Color verde: terminada
    * Color rojo: Eliminada
- Si la nota es una nota reactivada poner un icono delante del código
- Implementación de test.


## Getting Started

### Requirements

- [PHP](https://www.php.net/) >= 7.0
- [Composer](https://getcomposer.org/) >= 2.0
- [MySQL](http://www.mysql.com/) >= 8.0

### Setup

1. Clone the repository

   ```sh
   git clone https://github.com/varelajp/php-symfony-Reciclados3R.git
   ```

2. Install dependencies

   ```sh
   composer install
   ```

3. Set up your .env file

   Set your DB credentials:

   DATABASE_URL="mysql://usr:passwd@host:port/DB?serverVersion=version&charset=utf8mb4"


5. Set up your DB

   Create a new DB on your MySQL host.

   Run file *public/asset/sql/Reciclados_3R.sql* from your cloned folder.


6. Start the development server on your app directory

   ```sh
    php -S localhost:8000
   ```

7. Open [http://localhost:8000](http://localhost:8000) with your browser to see
   the result.
