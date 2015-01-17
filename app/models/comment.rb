# == Schema Information
#
# Table name: comments
#
#  id              :integer          not null, primary key
#  author_name     :string
#  body            :text
#  presentation_id :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#

class Comment < ActiveRecord::Base
  belongs_to :presentation
end
