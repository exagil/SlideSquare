module PresentationsHelper
  def params_presentation
    params.require(:presentation).permit(:title, :body, :presentation_file, :category_id)
  end
end


