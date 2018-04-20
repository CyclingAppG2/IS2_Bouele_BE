# Angel David Avila 

Implementacion de mailers

1. Primero, se generan todos los archivos que se van a utilizar en el funcionamiento del mailer, utilizando "rails g mailer user_mailer"
2. Dentro de app/mailers/user_mailer.rb, se agrega una funcion en la que se agrega el comportamiento que se desea que tenga el mailer, en este caso, se agrega la direccion y ya que el mailer sera de cuando un usuario se una a un evento, se decidira que el asunto del correo sea "Joined an event on Bouele!"
3. Dentro de app/views/user_mailer se agregaran 2 archivos para cada funcion del mailer, en este caso 1, estos archivos tendran el mismo nombre de la funcion del mailer y uno terminara en .html.erb(Este archivo que define como se ve el mensaje al ser enviado en formato HTML, por lo tanto se configura dentro de este el mensaje que se desea que sea enviado por el mailer en formato HTML) y uno terminara en .txt.erb(El elemento que define como se ve el mensaje al ser enviado como texto plano)
4. Antes de utilizar el mailer para enviar mensajes a correos reales, es posible mirar una vista previa de como quedara el mensaje, para esto, en /test/mailers/preview se modifica user_mailer_preview de forma que llame a la funcion que envia los correos con algun usuario arbitrario, una vez hecho esto, se puede ver como quedaria el correo accediendo a http://localhost:3000/rails/mailers/user_mailer/joined_event_mail_preview
5. Finalmente, una vez se ha mirado la vista previa, se llama al mailer desde donde sea apropiado, en este caso, el mailer es llamado cada vez que un voluntario se une exitosamente a un evento, y le notifica al voluntario que se ha unido a un evento.

------------------------------------------------------------

Join query

1. Dentro de voluntaries se agrega una query utilizando joins que retorna todos los voluntarios que tienen asociados uno o mas eventos y ademas tienen asociado un usuario

------------------------------------------------------------
------------------------------------------------------------

# Carlos Arturo López Romero 

###Implementacion de mailers

Se desarrlla un mailer para el contacto, se estructra y se envia cuando los datos de contacto esten completos como un radicado del mismo.

###Implementacion de end-point contacto

Se crean distintos tipos de contacto y se etructura el end-point de contacto. tambien se deja visible para los usuarios sin nececidad de login.

###Subir imagenes

1. se implemeto la subida de imagenes para los avatar de los uasuarios y los adjuntos en todo el sistema
2. Se filtro el tipo de imagen a subri y el tipo de adjunto

#Cosas a desarrollar en sprints futuros

Terminar los end points faltantes, agregar ubicaciones a los voluntariados, e imprimir los certificados de asiatencia
