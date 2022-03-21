class RemovePatientIdFromGroups < ActiveRecord::Migration[7.0]
  def change
    remove_column :groups, :patient_id, :integer
  end
end
