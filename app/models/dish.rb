class Dish < ApplicationRecord
  # Direct associations

  belongs_to :meal,
             class_name: "MealType"

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :menus,
             dependent: :destroy

  # Indirect associations

  has_many   :rests,
             through: :menus,
             source: :rest

  has_many   :users,
             through: :bookmarks,
             source: :user

  # Validations

  # Scopes

  def to_s
    meal.to_s
  end
end
