class DishResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :meal_id, :integer

  # Direct associations

  belongs_to :meal,
             resource: MealTypeResource

  has_many   :bookmarks

  has_many   :menus

  # Indirect associations

  many_to_many :rests,
               resource: RestaurantResource

  many_to_many :users
end
