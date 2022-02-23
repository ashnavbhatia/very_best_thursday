class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             :dependent => :destroy

  # Indirect associations

  has_many   :rests,
             :through => :dishes,
             :source => :rests

  # Validations

  # Scopes

  def to_s
    user
  end

end
