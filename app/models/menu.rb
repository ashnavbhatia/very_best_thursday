class Menu < ApplicationRecord
  # Direct associations

  belongs_to :rest,
             :class_name => "Restaurant"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    rest.to_s
  end

end
