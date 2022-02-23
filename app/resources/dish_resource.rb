class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :meal_id, :integer

  # Direct associations

  has_many   :bookmarks

  has_many   :menus

  # Indirect associations

end
