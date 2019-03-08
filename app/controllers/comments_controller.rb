class CommentsController < ApplicationController

  def new
    @comment = Comment.new
  end

  def create
    @comment = Comment.new(comment_params)
    @comment.user = User.find(session[:user_id])
    @comment.memory = Memory.find(params[:memory_id])
    @comment.save
    redirect_to user_trip_memory_path(@comment.user, @comment.memory.trip, @comment.memory, @comment)
  end

private

  def comment_params
    params.require(:comment).permit(:content)
  end
end
