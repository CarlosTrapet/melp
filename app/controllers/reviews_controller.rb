class ReviewsController < ApplicationController

  before_action :authenticate_user!


  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    redirect_back fallback_location: { action: "show", id: @restaurant.id }
  end

  def create
    @params = review_params
    @params[:user_id] = current_user.id
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(@params)

    if @review.save
      redirect_to restaurant_path(@restaurant)
    else
      render '/restaurants/show'
    end
  end

  def destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.find(params[:id])
    @review.destroy
    redirect_to restaurant_path(@restaurant)
  end

  private
  def review_params
    params.require(:review).permit(:score, :body)
  end
end
