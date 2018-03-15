class ReviewsController < ApplicationController

  before_action :authenticate_user! 
 
  
  def index
    @restaurant = Restaurant.find(params[:restaurant_id])
    redirect_back fallback_location: { action: "show", id: @restaurant.id }
    p "CURRENT USER IS "
    p current_user
  end

  def create
    @restaurant = Restaurant.find(params[:restaurant_id])
    @review = @restaurant.reviews.create(review_params)

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
    params.require(:review).permit(:reviewer, :score, :body)
  end
end
