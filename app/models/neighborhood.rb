class Neighborhood < ApplicationRecord
  # Direct associations

  has_many   :restaurants,
             dependent: :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end
end
