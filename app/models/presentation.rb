# == Schema Information
#
# Table name: presentations
#
#  id                :integer          not null, primary key
#  title             :string
#  body              :text
#  created_at        :datetime         not null
#  updated_at        :datetime         not null
#  presentation_file :string
#  category_id       :integer
#

class Presentation < ActiveRecord::Base
  mount_uploader :presentation_file, CwpresentationUploader
  has_many :comments
  belongs_to :category
  has_many :taggings
  has_many :tags, through: :taggings
end
