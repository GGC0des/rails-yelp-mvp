class RestaurantsController < ApplicationController
  before_action :set_restaurant, only: %i[ show]

  def index
    @restaurants = Restaurant.all
  end

  def show
    # set_restaurant --> @restaurant = Restaurant.find(params[:id])
  end

  def new
    @restaurant = Restaurant.new
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    if @restaurant.save
      redirect_to restaurant_path(@restaurant)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # def destroy
  #   # set_restaurant --> @restaurant = Restaurant.find(params[:id])
  #   @restaurant.destroy
  #   redirect_to restaurant_path(@restaurant), status: :see_other
  # end

  private
  # Use callbacks to share common setup or constraints between actions.
  def set_restaurant
    @restaurant = Restaurant.find(params[:id])
  end

  def restaurant_params
    params.require(:restaurant).permit(:name, :address, :category)
  end
end
