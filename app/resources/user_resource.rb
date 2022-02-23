class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :user, :string
  attribute :password, :string

  # Direct associations

  has_many :bookmarks

  # Indirect associations

  many_to_many :dishes

  has_many :rests, resource: RestaurantResource do
    assign_each do |user, restaurants|
      restaurants.select do |r|
        r.id.in?(user.rests.map(&:id))
      end
    end
  end

  filter :dish_id, :integer do
    eq do |scope, value|
      scope.eager_load(:rests).where(menus: { dish_id: value })
    end
  end
end
