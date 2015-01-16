class PresentationsController < ApplicationController
  include PresentationsHelper
  def index
    @presentations = Presentation.all
  end

  def show
    @presentation = Presentation.find(params[:id])
    uri_escaped_string = URI.escape(@presentation.presentation_file.url)
    @link = "http://docs.google.com/viewer?url=" + uri_escaped_string
  end

  def new
    @presentation = Presentation.new
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
    if presentation.delete
      redirect_to presentations_path
    else
      render presentation_path(presentation)
    end
  end
end