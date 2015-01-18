class CreateTaggings < ActiveRecord::Migration
  def change
    create_table :taggings do |t|
      t.references :tag, index: true
      t.references :presentation, index: true

      t.timestamps null: false
    end
    add_foreign_key :taggings, :tags
    add_foreign_key :taggings, :presentations
  end
end
