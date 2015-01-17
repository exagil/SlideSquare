class AddCategoryToPresentation < ActiveRecord::Migration
  def change
    add_reference :presentations, :category, index: true
    add_foreign_key :presentations, :categories
  end
end
