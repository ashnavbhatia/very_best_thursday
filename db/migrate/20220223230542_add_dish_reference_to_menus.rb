class AddDishReferenceToMenus < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :menus, :dishes
    add_index :menus, :dish_id
    change_column_null :menus, :dish_id, false
  end
end
