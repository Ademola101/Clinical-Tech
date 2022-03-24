class Patient < ApplicationRecord
  belongs_to :patient_creator, class_name: 'User'
  belongs_to :patients_group, class_name: 'Group'
  accepts_nested_attributes_for :patients_group
  attr_accessor :patients_group
end

