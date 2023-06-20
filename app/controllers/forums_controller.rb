class ForumsController < ApplicationController

  def index
    if params[:category].present? && params[:city].present?
      @forums = Forum.includes(:user).where(category: params[:category], users: { city: params[:city] })
    elsif params[:category].present?
      @forums = Forum.includes(:user).where(category: params[:category])
    elsif params[:city].present?
      @forums = Forum.includes(:user).joins(:user).where(users: { city: params[:city] })
    else
      @forums = Forum.all
    end
  end



  def show
   @forum = Forum.find(params[:id])
   @post = Post.new
  end

  def new
    @forum = Forum.new
  end

  def create
    @forum = Forum.new(post_params)
    @forum.user = current_user
    if @forum.save
      redirect_to forum_path(@forum)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:forum).permit(:title, :category, :description)
  end
end
