class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :author_name
      t.text :body
      t.references :presentation, index: true

      t.timestamps null: false
    end
    add_foreign_key :comments, :presentations
  end
end
