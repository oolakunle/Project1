# == Schema Information
#
# Table name: books
#
#  id           :integer          not null, primary key
#  title        :text
#  year         :integer
#  author_id    :integer
#  publisher_id :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Book < ApplicationRecord
end
