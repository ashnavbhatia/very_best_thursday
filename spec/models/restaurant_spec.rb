require 'rails_helper'

RSpec.describe Restaurant, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:neighborhood) }

    it { should have_many(:menus) }

    end

    describe "InDirect Associations" do

    it { should have_many(:users) }

    end

    describe "Validations" do

    end
end
