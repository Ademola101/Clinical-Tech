class Patient < ApplicationRecord
  has_many :users, through: :groups
  belongs_to :creator, class_name: 'User'
  has_many :groups
end
