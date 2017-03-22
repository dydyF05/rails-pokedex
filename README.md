# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...


# Walkthrough - Course
* Rajouter bootstrap:
  --> renommer application.css en application.css.scss
  --> application.css.scss:  ajouter
      @import 'bootstrap-sprockets';
      @import 'bootstrap';
  --> application.js: ajouter  
      //= require bootstrap-sprockets

* Migration
  --> Modification de structure de la base
      # Rajouter un champ sur la table pokemons:
          --> dans le terminal: "bundle exec rails generate migration AddAttributesToPokemons"
          --> dans le fichier .rb nouvellement créé db/migrate on ajoute à la main nos colonnes en respectant ce format:
              "add_column <:table>, <:nom_colonne>, <:type>"
          --> dans le terminal: bundle exec rails db:migrate

* Association (de modèles)
  --> génération du modèle
      --> in terminal: bundle exec rails generate model Type name:string color:string --skip-test

  --> génération du scafold
      --> rails generate scaffold Type name:string color:string --skip --skip-test-framework --skip-assets
