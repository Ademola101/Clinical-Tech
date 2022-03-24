class RenamePatientstoPatinet < ActiveRecord::Migration[7.0]
  def change
    rename_column :patients, :patient_group_id, :patients_group_id
  end
end
