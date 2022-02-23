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

  many_to_many :dishes

  has_many :users do
    assign_each do |restaurant, users|
      users.select do |u|
        u.id.in?(restaurant.users.map(&:id))
      end
    end
  end


  filter :user_id, :integer do
    eq do |scope, value|
      scope.eager_load(:users).where(:bookmarks => {:user_id => value})
    end
  end
end
