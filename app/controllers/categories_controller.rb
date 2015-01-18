class CategoriesController < ApplicationController
  def show
    @category = Category.find(params[:id])
    @presentations = @category.presentations
  end

  def index
    @categories = Category.all
  end
end
