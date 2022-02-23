class Restaurant < ApplicationRecord
  # Direct associations

  belongs_to :neighborhood

  has_many   :menus,
             :foreign_key => "rest_id",
             :dependent => :destroy

  # Indirect associations

  has_many   :users,
             :through => :dishes,
             :source => :users

  # Validations

  # Scopes

  def to_s
    dish_id
  end

end
