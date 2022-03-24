class Patient < ApplicationRecord
  belongs_to :patient_creator, class_name: 'User'
  belongs_to :group, optional: true
  
end

