require "rails_helper"

RSpec.describe MealType, type: :model do
  describe "Direct Associations" do
    it { should have_many(:dishes) }
  end

  describe "InDirect Associations" do
  end

  describe "Validations" do
  end
end
