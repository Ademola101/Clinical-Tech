class Group < ApplicationRecord
  has_many :users, through: :patients
  belongs_to :creator, class_name: 'User'
  has_many :patients
end
