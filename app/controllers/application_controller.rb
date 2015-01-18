class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :categories_on_head

  def categories_on_head
    @categories_on_head = Category.all[0..3]
  end
end
