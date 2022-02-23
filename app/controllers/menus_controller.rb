class MenusController < ApplicationController
  before_action :set_menu, only: %i[show edit update destroy]

  # GET /menus
  def index
    @q = Menu.ransack(params[:q])
    @menus = @q.result(distinct: true).includes(:rest,
                                                :dish).page(params[:page]).per(10)
  end

  # GET /menus/1
  def show; end

  # GET /menus/new
  def new
    @menu = Menu.new
  end

  # GET /menus/1/edit
  def edit; end

  # POST /menus
  def create
    @menu = Menu.new(menu_params)

    if @menu.save
      message = "Menu was successfully created."
      if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
        redirect_back fallback_location: request.referer, notice: message
      else
        redirect_to @menu, notice: message
      end
    else
      render :new
    end
  end

  # PATCH/PUT /menus/1
  def update
    if @menu.update(menu_params)
      redirect_to @menu, notice: "Menu was successfully updated."
    else
      render :edit
    end
  end

  # DELETE /menus/1
  def destroy
    @menu.destroy
    message = "Menu was successfully deleted."
    if Rails.application.routes.recognize_path(request.referer)[:controller] != Rails.application.routes.recognize_path(request.path)[:controller]
      redirect_back fallback_location: request.referer, notice: message
    else
      redirect_to menus_url, notice: message
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_menu
    @menu = Menu.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def menu_params
    params.require(:menu).permit(:rest_id, :dish_id)
  end
end
