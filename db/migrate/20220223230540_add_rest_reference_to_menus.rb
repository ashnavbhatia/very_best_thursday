class AddRestReferenceToMenus < ActiveRecord::Migration[6.0]
  def change
    add_foreign_key :menus, :restaurants, column: :rest_id
    add_index :menus, :rest_id
    change_column_null :menus, :rest_id, false
  end
end
