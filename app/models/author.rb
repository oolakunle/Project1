# == Schema Information
#
# Table name: authors
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Author < ApplicationRecord
  has_many :books
  has_many :disciplines, :through => :books
end
