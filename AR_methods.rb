# Model -> table
# instance variables -> columns
# object (instance) -> a row in the DB

# Migration Flow

# Design a schema in the schema designer
# Create the DB -> rake db:create (if you haven't yet)
# Make the migration file
# Get a timestamp with rake db:timestamp
# create a file touch db/migrate/<timestamp>_create_restaurants.rb
# in the migration file:
# create a class with the same name as the file CreateRestaurants (Upper Camel Case) and inherit from ActiveRecord::Migration[7.0]
# define the change method
# use the AR methods to do stuff to your schema (creat_table, add_column, remove_column)
# rake db:migrate

# MVC

# Model

# CRUD

# CREATE

# restaurant = Restaurant.new(name: "", address: "") -> makes an instance
# restaurant.save -> insert the restaurant in the DB

# OR

# Restaurant.create(name: "", address: "")
# new + save

# READ

# read all (.all)

# Restaurant.all -> gives me an array of all the instances of restaurant

# read one (.find)

# Restaurant.find(2) -> finds one restaurant at id 2

# Restaurant.find_by(name: "Burger King")
# Restaurant.find_by_name("Freshness Burger")
# returns only the first match

# UPDATE

# restaurant.address = "Meguro"
# restaurant.save

# DELETE

# .destroy
# restaurant = Restaurant.find(2)
# restaurant.destroy

# Advanced Queries

# Restaurant.count -> returns an integer

# Restaurant.where(address: "Shibuya") -> returns an array

# Restaurant.where("name LIKE ?", "%Burger%") -> array of all restaurants with Burger in the name

# Restaurant.order(created_at: :desc)

# Restaurant.first -> returns the first restaurant created
# Restaurant.last -> returns the last restaurant created
