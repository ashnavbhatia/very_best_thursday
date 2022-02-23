class Dish < ApplicationRecord
  # Direct associations

  belongs_to :meal,
             :class_name => "MealType"

  has_many   :bookmarks,
             :dependent => :destroy

  has_many   :menus,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    meal.to_s
  end

end
