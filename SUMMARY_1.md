# Angel David Avila

Creacion de elementos en la base de datos
1. Inicialmente, se utiliza el comando rake db:create con el fin de crear la base de datos dentro de el actual RAILS_ENV
2. Con la base de datos ya creada, se utiliza el comando scaffold para ir creando una por una las migraciones para crear las tablas y los modelos asociados a estas migraciones, por ejemplo, para crear la tabla users se utiliza "rails generate scaffold User email:string password:string name:string username:string type:string"
3. Una vez las todas las migraciones ya han sido creadas utilizando scaffolds, se procede a crear las tablas a partir de estas migraciones utilizando "rake db:migrate"
 
------------------------------------------------------------------------------------------
Creacion de asociaciones
1. Con las tablas y modelos ya creadas por los scaffolds, se va a /app/models donde estan los modelos y a cada uno de estos modelos se van agregando las asociaciones existentes entre tablas, estas asociaciones se agregan por medio de las asociaciones presentes en rails("belongs_to","has_one","has_many","has_many :through","has_one :through" y "has_and_belongs_to_many", aunque debido a las entidades y relaciones que se trabajan en este proyecto, no fue necesario utilizar "has_one :through" ni "has_and_belongs_to_many")
 
2. En el diagrama de entidades que se maneja las tablas Voluntary y Organization heredan de la tabla User, por lo tanto, en la definicion de estos 2 modelos, no se coloca "class NombreDeLaClase < ApplicationRecord" sino "class NombreDeLaClase < User"
 
3. Finalmente, se colocan las llaves foraneas en las migraciones de todas las tablas pertintentes, estas tablas son las que tienen "belongs_to" en su modelo, por ejemplo, Reason tiene "belongs_to :ban" en su definicion entonces se le coloca "ban_id" en sus atributos, para mejorar la eficiencia de la busqueda, se coloca un indice con la llave foranea(add_index :reasons, :ban_id) y ya que esta relacion no es opcional, se agrega un constraint para que exista la llave foranea siempre (add_foreign_key :reasons, :bans).


# Carlos Arturo López Romero

1. Se verifico la estructura de la base de datos y se implementan las validacions para que al enviar datos desde el front. Se usan distintos tipos de validacion, como limites para la calificacion(0-10).

2. Con la gema de fake se crean las semillas para poblar la base de datos, se usan diversas colecciones para poblar algunos aspectos. No se poblan las relaciones complejas.

3. Se verifica con Postman las rutas y las colecciones. Se usan las 4 vervos del CRUD para los modelos iniciales. Con la base ya poblada es mas sencillo realizar icho proceso.

4. Se pobla la base de datos con los municipios y departamentos Colombianos correspondientes en la base de datos.

-----------------------------------------------------------------------------------------------------

* Se relizan correciones a nombres de atributos y tipos de varibles. 
> Carlos A. Lopez, Angel David Avila

-------------------------------------------

## Posibles features a desarrolar

* Implementar devise y tokens para login y registro
>> Requiere manejo de imagenes para logo.
>> Manejo de archivos para firma.

* Login para Admins con la funcionalidad de Ban