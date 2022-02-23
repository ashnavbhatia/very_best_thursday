require "rails_helper"

RSpec.describe "meal_types#show", type: :request do
  let(:params) { {} }

  subject(:make_request) do
    jsonapi_get "/api/v1/meal_types/#{meal_type.id}", params: params
  end

  describe "basic fetch" do
    let!(:meal_type) { create(:meal_type) }

    it "works" do
      expect(MealTypeResource).to receive(:find).and_call_original
      make_request
      expect(response.status).to eq(200)
      expect(d.jsonapi_type).to eq("meal_types")
      expect(d.id).to eq(meal_type.id)
    end
  end
end
