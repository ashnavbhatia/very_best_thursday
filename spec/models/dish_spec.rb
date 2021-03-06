require "rails_helper"

RSpec.describe Dish, type: :model do
  describe "Direct Associations" do
    it { should belong_to(:meal) }

    it { should have_many(:bookmarks) }

    it { should have_many(:menus) }
  end

  describe "InDirect Associations" do
    it { should have_many(:rests) }

    it { should have_many(:users) }
  end

  describe "Validations" do
  end
end
