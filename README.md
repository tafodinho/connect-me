# ConnectMe

Connect me is a social media app with features similar to that of the original Facebook. It has functionalities such as:
* Upload posts
* View friends
* Send friend request
* Accept friend request
* Reject friend request
* Unfriend user
* Comment and like a post
* Add, delete, search friends

## live version
[connect me](https://josh-connect-me-app.herokuapp.com)

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes.

### Prerequisites

This project is built with Ruby on Rails. Before try to run it locally make sure you have [Ruby](https://www.ruby-lang.org/en/documentation/installation/), and [Ruby on Rails](https://www.tutorialspoint.com/ruby-on-rails/rails-installation.htm) installed. 

After installing check your ruby version with `ruby -v`

```
ruby -v
ruby 2.5.0p0 (2017-12-25 revision 61468) [x86_64-linux]
```
and your rails version with `rails -v`

```
rails -v
Rails 5.2.3
```

### Installing

Run `bundle install` to install all required dependencies

### Setting up the Database

After running bundle install you can go ahead and setup your database in the env file located in the home directory of the project. 
you can then go ahead to run `rake db:setup` or `rails db:setup` to create the database and run the migration.

### Run the server 

To run the server and open your project run: `rails s` and open a tab in your browser at localhost:3000 which is the default port rails use. Don't forget to start the [postgreSQL](https://tableplus.com/blog/2018/10/how-to-start-stop-restart-postgresql-server.html) database server

## Running the tests

Run `bundle exec rspec spec` to run all the tests that were included in this project 

## Deploy on Heroku

You can deploy the project on Heroku using the following steps:

* Create a Heroku Account
* On the terminal, run heroku create to create a new app
* Run heroku push to start a deployment on Heroku.
* Run heroku migrate to run migrations on your production database.
* Visit your project URL as assigned by Heroku to see a live deployment of Fakebook.

## Built With

* HTML5,CSS3
* Ruby On Rails

## Authors

* [Tafang Joshua](https://github.com/tafodinho)
* [Nonso Offorma](https://github.com/offorma)

## Screenshots

 ![screenshot1](https://github.com/tafodinho/connect-me/blob/master/app/assets/images/Screenshot%20from%202019-11-10%2015-15-25.png)
 ![sending friend request](https://github.com/tafodinho/connect-me/blob/master/app/assets/images/Screenshot%20from%202019-11-10%2015-17-55.png)
 ![accepting friend request](https://github.com/tafodinho/connect-me/blob/master/app/assets/images/Screenshot%20from%202019-11-10%2015-18-27.png)
 ![viewing friends](https://github.com/tafodinho/connect-me/blob/master/app/assets/images/Screenshot%20from%202019-11-10%2015-18-54.png)
 ![user timeline](https://github.com/tafodinho/connect-me/blob/master/app/assets/images/Screenshot%20from%202019-11-10%2015-19-27.png)
 ![home with users posts](https://github.com/tafodinho/connect-me/blob/master/app/assets/images/Screenshot%20from%202019-11-10%2015-21-12.png)
  
