class Dish < ApplicationRecord
  # Direct associations

  has_many   :menus,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    meal.to_s
  end

end
