class MenuResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :rest_id, :integer
  attribute :dish_id, :integer

  # Direct associations

  belongs_to :dish

  belongs_to :rest,
             resource: RestaurantResource

  # Indirect associations
end
