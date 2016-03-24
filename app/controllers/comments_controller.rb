class CommentsController < ApplicationController
  def new
    @video = Video.find(params[:video_id])
    @comment = Comment.new
  end


  def create
    @video = Video.find(params[:video_id])
    @comment = @video.comments.create(comment_params)
    redirect_to video_path(@video)
  end

  def edit
    @video = Video.find(params[:video_id])
    @comment = Comment.find(params[:id])
  end

  def update
    @video = Video.find(params[:video_id])
    @comment = Comment.find(params[:id])
    @comment.update(comment_params.merge)
    redirect_to video_path(@video)
  end

  def destroy
    @video = Video.find(params[:video_id])
    @comment = Comment.find(params[:id])
    @comment.destroy
    redirect_to video_path(@video)
  end

  private
  def comment_params
    params.require(:comment).permit(:body)
  end
end
