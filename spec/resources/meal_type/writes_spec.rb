require 'rails_helper'

RSpec.describe MealTypeResource, type: :resource do
  describe 'creating' do
    let(:payload) do
      {
        data: {
          type: 'meal_types',
          attributes: { }
        }
      }
    end

    let(:instance) do
      MealTypeResource.build(payload)
    end

    it 'works' do
      expect {
        expect(instance.save).to eq(true), instance.errors.full_messages.to_sentence
      }.to change { MealType.count }.by(1)
    end
  end

  describe 'updating' do
    let!(:meal_type) { create(:meal_type) }

    let(:payload) do
      {
        data: {
          id: meal_type.id.to_s,
          type: 'meal_types',
          attributes: { } # Todo!
        }
      }
    end

    let(:instance) do
      MealTypeResource.find(payload)
    end

    xit 'works (add some attributes and enable this spec)' do
      expect {
        expect(instance.update_attributes).to eq(true)
      }.to change { meal_type.reload.updated_at }
      # .and change { meal_type.foo }.to('bar') <- example
    end
  end

  describe 'destroying' do
    let!(:meal_type) { create(:meal_type) }

    let(:instance) do
      MealTypeResource.find(id: meal_type.id)
    end

    it 'works' do
      expect {
        expect(instance.destroy).to eq(true)
      }.to change { MealType.count }.by(-1)
    end
  end
end
