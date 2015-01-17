class CommentsController < ApplicationController
  def create
    comment = Comment.new(params_comment)
    comment.presentation_id = params[:presentation_id]
    if comment.save
      flash[:success] = "Success! your comment has been posted"
      redirect_to presentation_url(comment.presentation.id)
    else
      flash[:failure] = "Your comment could not be posted"
      redirect_to presentation_url(comment.presentation.id)
    end
  end

  def destroy
    comment = Comment.find(params[:id])
    comment.delete
    redirect_to presentation_path(params[:presentation_id])
  end

  private
    def params_comment
      params.require(:comment).permit(:author_name, :body)
    end
end

