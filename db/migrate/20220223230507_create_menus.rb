class CreateMenus < ActiveRecord::Migration[6.0]
  def change
    create_table :menus do |t|
      t.integer :rest_id
      t.integer :dish_id

      t.timestamps
    end
  end
end
