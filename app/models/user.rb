class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :groups
  has_many :patients, through: :groups
  has_many :created_patients, foreign_key: "creator_id", class_name: 'Patient'
end
