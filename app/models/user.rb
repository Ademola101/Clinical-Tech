class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         validates :username, length: { in: 3..10 }, presence: true
         validates :email, presence: true, uniqueness: true
         validates :password, presence: true, length: { in: 5..10 }
has_many :groups
has_many :patients, foreign_key: 'patient_creator_id', class_name: 'Patient'
       
end
