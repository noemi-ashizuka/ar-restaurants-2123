# Migration flow
# make a schema in the db designer
# create your db -> rake db:create (if you haven't yet)
# make migrations to create the schema in you db
  # get a timestamp rake db:timestamp
  # create the migration file touch db/migrate/<timestamp>_what_your_migration_is_doing.rb
  # in migration file
    # create a class WhatYourMigrationIsDoing (don't forget to inherit from ActiveRecord::Migration[7.0])
    # define the change method
    # use AR methods to make changes to your schema (create_table, add_column, remove_column)
# migrate with rake db:migrate


# CRUD

# CREATE

restaurant = Restaurant.new(name: "Olive Garden", address: "NY") # makes an instance in ruby

restaurant.save # stores the instance in the db

# OR

# new + save
Restaurant.create(name: "Hell's Kitchen", address: "Shibuya")


# UPDATE

restaurant.address = "Los Angeles"
restaurant.save

# READ

# ALL

Restaurant.all # -> array of restaurant instances

# FIND (id)

restaurant = Restaurant.find(2) # -> returns the specific instane at that id

# DELETE

restaurant.destroy


# Advanced Queries

Restaurant.count # integer

# WHERE

Restaurant.where(address: "Shibuya") # => returns all the restaurants in shibuya in an array

Restaurant.where("name LIKE ?", "%Burger%") # => returns an array of restaurants with the word Burger in them

Restaurant.order(created_at: :desc)

# FIND_BY returns only ONE instance

Restaurant.find_by(name: "Olive Garden")
Restaurant.find_by_name("Olive Garden")
Restaurant.find_by_address("Meguro")

Restaurant.first
Restaurant.last
