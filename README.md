# README

Versiones que se utilizó en el desarrollo de este proyecto:

## Ruby 2.4.0

## Rails 5.0.3

## PostgreSQL 9.5.11


## Instalación

1. Ejecutar `bundle install`

2. Renombre database_template.yml a database.yml y remplace  las credenciales de postgres

3. Crear la base `rake db:create`

4. Montar el dump de la base si lo desea, se encuentra en la carpeta `docs`. De lo contrario, ejecutar las migraciones `rake db:migrate`

5. Levantar servidor `rails s`

http://localhost:3000
