class ReviewsController < ApplicationController
  before_action :set_restaurant

  def new
    @review = Review.new
  end

  def create
    @review = @restaurant.reviews.build(review_params)
    @review.save

    redirect_to restaurant_path(@restaurant)

    # @review = Review.new(review_params)
    # @review.restaurant = @restaurant
    # @review.save
  end

  private

    def review_params
      params.require(:review).permit(:content)
    end

    def set_restaurant
      @restaurant = Restaurant.find(params[:restaurant_id])
    end
end
