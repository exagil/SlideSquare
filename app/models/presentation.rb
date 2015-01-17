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
#

class Presentation < ActiveRecord::Base
  has_many :comments
  mount_uploader :presentation_file, CwpresentationUploader
end
