# Welcome to MELP

MELP is an early-stage YELP-clone that served as an introductory project to Ruby on Rails at Makers Academy.
The users can register, log in, CRUD a restaurant and CRUD attached reviews of that restaurant.

## Stack

* Ruby
* Rails
* RSpec
* Devise
* Sqlite3

## Forking

* Make sure you have Rails installed.
* Fork & clone the repo.
* Run `bundle install`
* Migrate the database
  * `rails db:migrate` to migrate the development database and `rails db:migrate RAILS_ENV=test` if you are want to run the tests with `rspec`
* Fire up the server using `rails server`

## Features

* User gets greeted by a homepage
* User can sign up/sign in
* User can see a list of restaurants 
* User can add a new restaurant (name + description)
* Users can create, review, update and delete restaurants (CRUD)
* Restaurants can have reviews, which display the user who created it, a short description and a rating
* Restaurants have an average rating/score

## Approach

* Started with a long session of diagramming the MVC structure, planning the project and how we wanted to approach it.
* We decided our MVP would be an app where the user could freely post restaurants and reviews

* Used Agile methodologies to plan the week
* One team started looking into how to approach testing (as well as gathering information on which testing suite we wanted to use), while the other looked how Rails projects are structured.
* We then had an extensive knowledge-sharing session to put everyone up to date. 
* Split the tasks accordingly and followed a TDD/BDD approach
* Lastly, we made sure that every member of the team knew what was going on in every line of code, by ensuring that we had daily stand-ups, retros and knowledge-sharing sessions.

## To be added

* Add the posibility to attach photos of the restaurants
* Improve UI 

