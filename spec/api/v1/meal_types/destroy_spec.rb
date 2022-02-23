require "rails_helper"

RSpec.describe "meal_types#destroy", type: :request do
  subject(:make_request) do
    jsonapi_delete "/api/v1/meal_types/#{meal_type.id}"
  end

  describe "basic destroy" do
    let!(:meal_type) { create(:meal_type) }

    it "updates the resource" do
      expect(MealTypeResource).to receive(:find).and_call_original
      expect do
        make_request
        expect(response.status).to eq(200), response.body
      end.to change { MealType.count }.by(-1)
      expect { meal_type.reload }.
        to raise_error(ActiveRecord::RecordNotFound)
      expect(json).to eq("meta" => {})
    end
  end
end
