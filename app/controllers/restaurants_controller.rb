class RestaurantsController < ApplicationController

  def index
    @restaurants = Restaurant.all
  end

  def create
    @restaurant = Restaurant.new(restaurant_params)
    @restaurant.save
    redirect_to @restaurant
  end

  def new
  end

  def edit
    @restaurant = Restaurant.find(params[:id])
  end

  def show
    @restaurant = Restaurant.find(params[:id])
  end

  def update
    @restaurant = Restaurant.find(params[:id])
    @restaurant.update(restaurant_params) ? redirect_to(@restaurant) : render("edit")

  end

  private
    def restaurant_params
      params.require(:restaurant).permit(:name, :description)
    end
end
