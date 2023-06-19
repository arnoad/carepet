class PostsController < ApplicationController
  def create
    @forum = Forum.find(params[:forum_id])
    @post = Post.new(post_params)
    @post.forum = @forum
    @post.user = current_user

    @post.save
    ForumChannel.broadcast_to(
      @forum,
      render_to_string(
        partial: "posts/post",
        locals: {post: @post }
      )
    )
    head :ok # don't send a view or redirect them
  end

  private

  def post_params
    params.require(:post).permit(:content)
  end
end
