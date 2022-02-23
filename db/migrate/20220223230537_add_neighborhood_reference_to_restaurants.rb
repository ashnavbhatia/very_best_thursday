class AddNeighborhoodReferenceToRestaurants < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :restaurants, :neighborhoods
    add_index :restaurants, :neighborhood_id
    change_column_null :restaurants, :neighborhood_id, false
  end
end
