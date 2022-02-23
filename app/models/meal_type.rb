class MealType < ApplicationRecord
  # Direct associations

  has_many   :dishes,
             foreign_key: "meal_id",
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dish_id
  end
end
