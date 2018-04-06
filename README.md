#README

Caso Practico de Ruby on Rails

Página web que consiste en poder hacer un seguimiento de las mascotas de nuestro equipo de desarrollo

Se crean dos modelos:

	El modelo User contiene los campos Nombre, Apellido y Email. No pueden ser nulos y el correo tiene que disponer de @ y dominio para poder ser guardado.

	El modelo Animal contiene los campos Nombre, Edad, Sexo, Tipo y un booleano Alive. Asi mismo esta asociado a Users con la clave foránea Users_id. no pueden ser nulos y a la hora de añadir un animal, Alive esta como true, pasándose el valor con un hidden. En el caso del Tipo se limita mediante un select la elección, así como en el Sexo con un Radio_Button. 

Un usuario puede tener hasta 5 mascotas, pero una mascota solo puede tener un usuario asignado.
Para poder cumplir con ese límite a través del controlador Animals se establece un if que cuenta los animales que tiene el usuario antes de añadir uno nuevo.

Para la estructura de la web, se establece un controlador Principal con su propia vista para la Web de inicio y luego consta de dos webs principales:

	El controlador Users, se encarga del index, new, show y edit del usuario/usuarios del equipo de desarrollo. Para aprovechar el form se establece mediante un parcial.

	El controlador Animals, se encarga del new, edit y show de las mascotas asociadas al usuario y el listado es usado mediante un parcial.

Respecto a los estilos, se usa el CMS Bootstrap en su versión 4.0, haciendo que las tablas y formularios sean más prácticos.


Puntos a mejorar


Respecto a los puntos de mejora según mi punto de vista pueden ser:

	Detallar y usar las herramientas que dispone Rails para los Forms Helpers, por ejemplo, los inputs number, email y demás para la validación del formulario en el front y a su vez también en el DB, establecer unos límites a las tablas y sus valores.

	Establecer el límite de la asociación Usuario/Animal a través del modelo. En la app, se limita a través del controlador y se supone que la opción más correcta, debe ser a través del modelo de asociación.

	Mostrar errores de validación por formulario incorrecto en el formulario animales. No he podido gestionar los errores que indica el modelo a través del controlador.

	




