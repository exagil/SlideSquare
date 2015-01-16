class AddPresentationFileToPresentations < ActiveRecord::Migration
  def change
    add_column :presentations, :presentation_file, :string
  end
end
