class MealTypesController < ApplicationController
  before_action :set_meal_type, only: [:show, :edit, :update, :destroy]

  # GET /meal_types
  def index
    @meal_types = MealType.all
  end

  # GET /meal_types/1
  def show
  end

  # GET /meal_types/new
  def new
    @meal_type = MealType.new
  end

  # GET /meal_types/1/edit
  def edit
  end

  # POST /meal_types
  def create
    @meal_type = MealType.new(meal_type_params)

    if @meal_type.save
      redirect_to @meal_type, notice: 'Meal type was successfully created.'
    else
      render :new
    end
  end

  # PATCH/PUT /meal_types/1
  def update
    if @meal_type.update(meal_type_params)
      redirect_to @meal_type, notice: 'Meal type was successfully updated.'
    else
      render :edit
    end
  end

  # DELETE /meal_types/1
  def destroy
    @meal_type.destroy
    redirect_to meal_types_url, notice: 'Meal type was successfully destroyed.'
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_meal_type
      @meal_type = MealType.find(params[:id])
    end

    # Only allow a trusted parameter "white list" through.
    def meal_type_params
      params.require(:meal_type).permit(:dish_id)
    end
end
