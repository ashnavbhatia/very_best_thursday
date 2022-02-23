require 'rails_helper'

RSpec.describe Menu, type: :model do
  
    describe "Direct Associations" do

    it { should belong_to(:dish) }

    it { should belong_to(:rest) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
