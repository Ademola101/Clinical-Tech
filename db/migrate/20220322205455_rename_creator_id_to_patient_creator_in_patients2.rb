class RenameCreatorIdToPatientCreatorInPatients2 < ActiveRecord::Migration[7.0]
  def change
    rename_column :patients, :creator_id, :patient_creator_id
  end
end
