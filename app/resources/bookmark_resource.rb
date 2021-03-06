class BookmarkResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user_id, :integer
  attribute :rest_id, :integer
  attribute :notes, :string
  attribute :dish_id, :integer

  # Direct associations

  belongs_to :user

  belongs_to :dish

  # Indirect associations
end
