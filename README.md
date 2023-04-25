# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version 3.0.0

* System dependencies

rails generate devise:install
rails generate devise User
rails generate devise:views:bootstrap_templates


* Configuration

* Database creation

rails db:create
rails db:migrate

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* Test Bank is a web application extracted from a technical interview found online and developed on 
  my portfolio in order to review concepts as rails routing, models, views, controllers, bootstrap,
  many to one relationships and authentication using devise gem.

* The main objective was to build two related models, banks and providers with a one to many
  relationship with their respective CRUD's manually using bootstrap, the last part was to integrate
  the authentication system using the devise gem.


* Screenshots

 - Authentication and login
 ![Login](/images/login.png)

 - home page
 ![Home](/images/home.png)

 - Banks index
 ![Index of Banks using cards](/images/banks_index.png)
 
 - New bank
 ![New bank operation](/images/banks_new.png)

 - Edit bank
 ![Update bank](/images/banks_update.png)

 - Index of suppliers
 ![Index of suppliers using cards](/images/suppliers_index.png)

 - New supplier
 ![Creation of supplier linked to a bank](/images/suppliers_new.png)

 - Edit supplier
 ![Update supplier](/images/suppliers_edit.png)