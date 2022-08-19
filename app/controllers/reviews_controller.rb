class ReviewsController < ApplicationController
  def index
    @reviews = Review.all
  end

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    if @review.save
      render 'reviews/index', alert: "Review added successfully."
    else
      redirect_to new_review_path, alert: "Error creating review."
    end
  end

  def show
    @reviews = Review.find(params[:id])
    @review = Review.all

  end


  def review_params
   params.require(:review).permit(:name,:comments)
  end
end
