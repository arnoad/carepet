class ReviewsController < ApplicationController
  before_action :set_user, only: %i[new create]

  def new
    @review = Review.new
  end

  def create
    @review = Review.new(review_params)
    @review.carer = @carer
    @review.user = current_user
    if @review.save
      redirect_to carer_path(@carer)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    redirect_to carer_path(@review.carer), status: :see_other
  end

  private

  def set_user
    @carer = User.find(params[:carer_id])
  end

  def review_params
    params.require(:review).permit(:content, :rating)
  end
end
