class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user, :string
  attribute :password, :string

  # Direct associations

  # Indirect associations

end
