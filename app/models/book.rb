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
  belongs_to :author, :optional => true
  belongs_to :publisher, :optional => true
  has_and_belongs_to_many :disciplines
  has_and_belongs_to_many :personal_libraries
end
