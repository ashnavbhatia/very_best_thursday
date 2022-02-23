class MealTypeResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dish_id, :integer

  # Direct associations

  has_many   :dishes,
             foreign_key: :meal_id

  # Indirect associations
end
