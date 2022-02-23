class CreateBookmarks < ActiveRecord::Migration[6.0]
  def change
    create_table :bookmarks do |t|
      t.integer :user_id
      t.integer :rest_id
      t.text :notes
      t.integer :dish_id

      t.timestamps
    end
  end
end
