require 'rails_helper'

RSpec.describe "meal_types#update", type: :request do
  subject(:make_request) do
    jsonapi_put "/api/v1/meal_types/#{meal_type.id}", payload
  end

  describe 'basic update' do
    let!(:meal_type) { create(:meal_type) }

    let(:payload) do
      {
        data: {
          id: meal_type.id.to_s,
          type: 'meal_types',
          attributes: {
            # ... your attrs here
          }
        }
      }
    end

    # Replace 'xit' with 'it' after adding attributes
    xit 'updates the resource' do
      expect(MealTypeResource).to receive(:find).and_call_original
      expect {
        make_request
        expect(response.status).to eq(200), response.body
      }.to change { meal_type.reload.attributes }
    end
  end
end
