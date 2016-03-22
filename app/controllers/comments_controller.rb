class CommentsController < ApplicationController
  def index
    @video = Video.find(params[:id])
    @comments = @video.comments.all
  end
end
