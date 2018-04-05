# == Schema Information
#
# Table name: publishers
#
#  id         :integer          not null, primary key
#  name       :text
#  logo       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Publisher < ApplicationRecord
  has_many :books
  has_many :disciplines, :through => :books
end
