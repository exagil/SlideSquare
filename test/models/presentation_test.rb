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

require 'test_helper'

class PresentationTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
