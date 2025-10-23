class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      # t.integer :rating # adding stuff after migrating is not going to work
      t.timestamps # adds 2 columns to the table: created_at and updated_at
    end
  end
end
