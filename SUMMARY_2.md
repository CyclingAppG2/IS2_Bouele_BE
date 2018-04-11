# Angel David Avila 

Implementacion de los serializadores para el modelo

1. Primero, se agrega la gema necesaria al gemfile, en este caso agregamos "gem 'active_model_serializers', '~> 0.10.0'" y luego se realiza un "bundle" en rails
2. Para cada uno de los modelos existentes, se utiliza un comando de la forma "rails g serializer nombre_del_modelo"(por ejemplo "rails g serializer admin") para cada uno de los modelos existentes, esto creara los serializadores dentro de la carpeta app/serializers
3. Para cada serializador, se agregan los atributos que posee ese modelo dentro de la base de datos y se agregan las relaciones con otros modelos, para las relaciones tipo "has_many through:" es suficiente agregarlas solo como relaciones "has_many"(Sin el through) gracias a rails.

------------------------------------------------------------

Configurar CORS

1. Primero se comenta la linea "config.api_only = true" para que se pueda conectar al back end de la aplicacion por medio de CORS como middleware y no unicamente por medio del API
2. Se agrega uno o mas bloques que inician de la forma "config.middleware.insert_before 0, Rack::Cors do", dentro de cada uno de estos bloques se pueden definir origenes y que recursos estan disponibles para cada uno de estos origenes.

------------------------------------------------------------
Agregar tabla intermedia "user_polymorphism"

Se noto que con el modelo actual que poseia el programa no era posible crear usuarios antes de crear las tablas con la informacion de voluntario/organizacion, debido a esto se creo la tabla intermedia "user_polymorphism", que tiene las llaves foraneas de usuario y voluntario u organizacion, para poder crear la informacion basica de los usuarios antes de preguntarles si son voluntarios o organizaciones

------------------------------------------------------------

End points

1. Para cada uno de los endpoints se definen funciones dentro de los controladores para cada accion que se desee este presente en ese endpoint, por ejemplo, para que las organizaciones puedan crear eventos se agrega la funcion createEvent
2. Una vez creadas las funciones, con el fin de que estas sean accesibles, dentro del archivo de routes se agregan urls las cuales al ser accedidas por peticiones HTTP apropiadas permiten utilizar las funciones definidas anteriormente



# Carlos Arturo López Romero 

Se implemento la gema de devise auth token, para User y admins en rutas distintas. User tiene registro, login y recuperación de contraseña. La de User solo login y recuperación de contraseñas. No se incluye ninguna otra gema para autenticacion. Se implementando la gema de anotaciones para los modelos y las rutas. Se implemento la gema de paginacion.

Se verifico el funcionamiento de token en los headers de los métodos y validaciones en los métodos adicionales

#Cosas a desarrollar en sprints futuros

Terminar los end points faltantes, agregar ubicaciones a los voluntariados, e imprimir los certificados de asiatencia
