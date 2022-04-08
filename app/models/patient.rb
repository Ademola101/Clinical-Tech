class Patient < ApplicationRecord
  belongs_to :patient_creator, class_name: 'User'
  belongs_to :group, optional: true

  scope :without_group, ->(patient_creator_id) {where('group_id IS NULL AND patient_creator_id = ?', patient_creator_id).order(created_at: :desc)}
  # the patient_creator_id is a argument which must be passed in the controller
  scope :with_group, ->(patient_creator_id) {where('group_id IS NOT NULL AND patient_creator_id = ?', patient_creator_id).order(created_at: :desc)}
  
end

