class PresentationsController < ApplicationController
  include PresentationsHelper
  def index
    @presentations = Presentation.all
  end

  def show
    @presentation = Presentation.find(params[:id])
    # only for production
    @presentation_link =  Rack::Utils.escape(@presentation.presentation_file.url)
    @presentation_link = "http://docs.google.com/viewer?url=" + @presentation_link
    @comment = Comment.new
    @comment.presentation_id = @presentation.id
  end

  def new
    @presentation = Presentation.new
    @categories = Category.all
  end

  def create
    presentation = Presentation.new(params_presentation)
    if(presentation.save)
      flash[:success] = "Congratulations! Presentation Saved!"
      redirect_to presentation_path(presentation)
    else
      flash.now = "Presentation Save Failed!"
      render action: 'new'
    end
  end

  def destroy
    presentation = Presentation.find(params[:id])
    if presentation.destroy
      redirect_to presentations_path
    else
      render presentation_path(presentation)
    end
  end
end