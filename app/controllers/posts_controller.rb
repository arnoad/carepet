class PostsController < ApplicationController
  def create
    @forum = Forum.find(params[:forum_id])
    @post = Post.new(post_params)
    @post.forum = @forum
    @post.user = current_user
    if @post.save
      redirect_to forum_path(@forum)
    else
      render "forums/show", status: :unprocessable_entity
    end
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
