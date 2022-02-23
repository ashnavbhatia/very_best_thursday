class Restaurant < ApplicationRecord
  # Direct associations

  has_many   :menus,
             :foreign_key => "rest_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    dish_id
  end

end
