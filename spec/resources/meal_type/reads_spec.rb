require "rails_helper"

RSpec.describe MealTypeResource, type: :resource do
  describe "serialization" do
    let!(:meal_type) { create(:meal_type) }

    it "works" do
      render
      data = jsonapi_data[0]
      expect(data.id).to eq(meal_type.id)
      expect(data.jsonapi_type).to eq("meal_types")
    end
  end

  describe "filtering" do
    let!(:meal_type1) { create(:meal_type) }
    let!(:meal_type2) { create(:meal_type) }

    context "by id" do
      before do
        params[:filter] = { id: { eq: meal_type2.id } }
      end

      it "works" do
        render
        expect(d.map(&:id)).to eq([meal_type2.id])
      end
    end
  end

  describe "sorting" do
    describe "by id" do
      let!(:meal_type1) { create(:meal_type) }
      let!(:meal_type2) { create(:meal_type) }

      context "when ascending" do
        before do
          params[:sort] = "id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      meal_type1.id,
                                      meal_type2.id,
                                    ])
        end
      end

      context "when descending" do
        before do
          params[:sort] = "-id"
        end

        it "works" do
          render
          expect(d.map(&:id)).to eq([
                                      meal_type2.id,
                                      meal_type1.id,
                                    ])
        end
      end
    end
  end

  describe "sideloading" do
    # ... your tests ...
  end
end
