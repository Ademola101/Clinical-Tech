class RenameCreatorIdToPatientCreatorInPatients < ActiveRecord::Migration[7.0]
  def change
    rename_column :patients, :creator_id, :patient_creator_id
  end
  def change
    add_column :patients, :patient_group_id, :integer
  end
  def change
    add_column :patients, :patient_group_id, :integer
  end
end
