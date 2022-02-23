class CreateRestaurants < ActiveRecord::Migration[6.0]
  def change
    create_table :restaurants do |t|
      t.integer :dish_id
      t.text :address
      t.integer :neighborhood_id
      t.string :google_maps_url

      t.timestamps
    end
  end
end
