class CommentsController < ApplicationController

  def show
    @post = Post.find params[:post_id]
    @comment = @post.comments.find(params[:id])
  end

end