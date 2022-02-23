class AddMealReferenceToDishes < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :dishes, :meal_types, column: :meal_id
    add_index :dishes, :meal_id
    change_column_null :dishes, :meal_id, false
  end
end
