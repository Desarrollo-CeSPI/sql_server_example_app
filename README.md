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