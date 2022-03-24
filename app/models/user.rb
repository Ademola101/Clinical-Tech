class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

has_many :created_groups, foreign_key: 'created_group_id', class_name: 'Group'
has_many :patients, foreign_key: 'patient_creator_id', class_name: 'Patient'
has_many :own_groups, through: :patients, source: :own_group
       
end
