class Api::V1::MealTypesController < Api::V1::GraphitiController
  def index
    meal_types = MealTypeResource.all(params)
    respond_with(meal_types)
  end

  def show
    meal_type = MealTypeResource.find(params)
    respond_with(meal_type)
  end

  def create
    meal_type = MealTypeResource.build(params)

    if meal_type.save
      render jsonapi: meal_type, status: 201
    else
      render jsonapi_errors: meal_type
    end
  end

  def update
    meal_type = MealTypeResource.find(params)

    if meal_type.update_attributes
      render jsonapi: meal_type
    else
      render jsonapi_errors: meal_type
    end
  end

  def destroy
    meal_type = MealTypeResource.find(params)

    if meal_type.destroy
      render jsonapi: { meta: {} }, status: 200
    else
      render jsonapi_errors: meal_type
    end
  end
end
