# == Schema Information
#
# Table name: articles
#
#  id          :bigint           not null, primary key
#  code_1      :string
#  code_2      :string
#  code_3      :string
#  name        :string
#  model       :string
#  brand       :string
#  description :string
#  price       :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
require "test_helper"

class ArticleTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
end
