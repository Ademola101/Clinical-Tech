class RenamePatientsGroup < ActiveRecord::Migration[7.0]
  def change
    rename_column :patients, :patients_group_id, :groups_id
  end
end
