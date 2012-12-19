#Sql Server 2005 Test application

##Introducción

Esta aplicación permite probar la conexion usando FreeTDS y UNIXODBC a bases de datos Sql Server 2005 (o mayores).

Las principales gemas que se estan usando son:

Para base de datos
* [tiny_tds](https://github.com/rails-sqlserver/tiny_tds)
* [activerecord-sqlserver-adapter](https://github.com/rails-sqlserver/activerecord-sqlserver-adapter)

Entre las principales cosas que se prueban son los caracteres especiales y asegurar la codificación a utf-8.

Para internacionalización
* [i18n_alchemy](https://github.com/rails-sqlserver/tiny_tds)

La idea es poder probar el tema de los tipos Decimal y su representación en el browser.

Paginación
* kaminari

En general sql server tiene problemas para implementar sentencias limit, la idea es ver si uno de los paginadores mas comunes puede funcionar.

##Que necesitamos?

Primero que nada instalar FreeTDS (a buscar en google se ha dicho). Esto esta atado al SO que tengan corriendo, aunque en general podemos decir que para las distros UNIX hay cierta homogeneidad.

Yo estuve usando lo siguiente para Mac OS Lion:

http://honoluluhacker.com/2011/01/13/using-tinytds-to-connect-to-sql-server-with-ruby-on-rails-3-for-mac-osx/

##A veces sql server es una opción en nuestro entorno

Hay veces donde tener que tener una VM con SqlServer no es una opcion, para esos casos siempre es bueno tener un lindo fallback a otra base de datos mas amigable con los entornos que solemos usar.

En este caso me parecio que lo mas comodo seria usar Mysql, es por eso que dentro del Gemfile incorpore las siguientes gemas:

* [mysql2](https://github.com/brianmario/mysql2)
* [foreigner](https://github.com/matthuhiggins/foreigner)

Ahora, para que esto funcione, decidi crear 2 archivos de configuración de bases de datos:

* database.yml-mysql
* database.yml-sqlserver

Donde se puede encontrar, respectivamente, la configuración a la base de datos que queremos usar. Con lo cual el cambio solo deber ser realizar un link simbolico al estilo ```ln -s database.yml-[laQueQuieroUsar] database.yml```.

###Ajustando las migraciones
Para que nuestro fallback funcione correctamente tenemos que hacer algunos tweaks en las migaciones, principalmente debido a la manera en que manejé la los constraints en la base de datos.

Para Mysql estoy usando Foreigner, pero est todavia no tiene soporte para sql server, con lo cual tenemos que hacer algo similar a lo que podemos encontrar en la migración 20121218143039_create_posts.rb, donde segun el driver actual de la base de datos, definimos como hacer los constraints:

```ruby
if ActiveRecord::Base.connection.adapter_name == 'Mysql2'
  add_foreign_key(:posts, :people, dependent: :delete)
else
  execute "ALTER TABLE dbo.posts ADD CONSTRAINT FK_posts_people_cascade_delete FOREIGN KEY (person_id) REFERENCES dbo.people(id) ON DELETE CASCADE"
end
```

<hr>

<strong>Autor</strong>: Alvaro F Lara alvaro.lara at cespi.unlp.edu.ar