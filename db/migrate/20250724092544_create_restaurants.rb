class CreateRestaurants < ActiveRecord::Migration[7.0]
  def change
    create_table :restaurants do |t|
      t.string :name
      t.string :address
      # t.integer :rating this won't run if you add it after you've already migrated
      t.timestamps # ad 2 columns, created_at and the updated_at
    end
  end
end
