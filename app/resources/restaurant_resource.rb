class RestaurantResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :dish_id, :integer
  attribute :address, :string
  attribute :neighborhood_id, :integer
  attribute :google_maps_url, :string

  # Direct associations

  belongs_to :neighborhood

  has_many   :menus,
             foreign_key: :rest_id

  # Indirect associations

end
