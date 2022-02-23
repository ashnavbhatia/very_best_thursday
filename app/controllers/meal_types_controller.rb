class MealTypesController < ApplicationController
  before_action :set_meal_type, only: %i[show edit update destroy]

  def index
    @q = MealType.ransack(params[:q])
    @meal_types = @q.result(distinct: true).includes(:dishes).page(params[:page]).per(10)
  end

  def show
    @dish = Dish.new
  end

  def new
    @meal_type = MealType.new
  end

  def edit; end

  def create
    @meal_type = MealType.new(meal_type_params)

    if @meal_type.save
      redirect_to @meal_type, notice: "Meal type was successfully created."
    else
      render :new
    end
  end

  def update
    if @meal_type.update(meal_type_params)
      redirect_to @meal_type, notice: "Meal type was successfully updated."
    else
      render :edit
    end
  end

  def destroy
    @meal_type.destroy
    redirect_to meal_types_url, notice: "Meal type was successfully destroyed."
  end

  private

  def set_meal_type
    @meal_type = MealType.find(params[:id])
  end

  def meal_type_params
    params.require(:meal_type).permit(:dish_id)
  end
end
