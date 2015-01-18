class TagsController < ApplicationController
  def show
    @tag =  Tag.find(params[:id])
    @presentations = @tag.presentations
  end
end
