# == Schema Information
#
# Table name: disciplines
#
#  id         :integer          not null, primary key
#  name       :text
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Discipline < ApplicationRecord
  has_and_belongs_to_many :books
end
