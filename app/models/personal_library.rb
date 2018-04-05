# == Schema Information
#
# Table name: personal_libraries
#
#  id         :integer          not null, primary key
#  title      :text
#  user_id    :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class PersonalLibrary < ApplicationRecord
  belongs_to :user, :optional => true
  has_and_belongs_to_many :books
end
