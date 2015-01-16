module PresentationsHelper
  def params_presentation
    params.require(:presentation).permit(:title, :body)
  end
end


