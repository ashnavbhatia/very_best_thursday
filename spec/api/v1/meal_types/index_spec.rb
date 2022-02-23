require "rails_helper"

RSpec.describe "meal_types#index", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/meal_types", params: params
  end

  describe "basic fetch" do
    let!(:meal_type1) { create(:meal_type) }
    let!(:meal_type2) { create(:meal_type) }

    it "works" do
      expect(MealTypeResource).to receive(:all).and_call_original
      make_request
      expect(response.status).to eq(200), response.body
      expect(d.map(&:jsonapi_type).uniq).to match_array(["meal_types"])
      expect(d.map(&:id)).to match_array([meal_type1.id, meal_type2.id])
    end
  end
end
