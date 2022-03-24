class Group < ApplicationRecord
  belongs_to :created_group, class_name: 'User'
  has_many :patients, foreign_key: 'patients_group_id', class_name: 'Patient'
  has_many :patient_creator, through: :patients, source: :patient_creator

  end

