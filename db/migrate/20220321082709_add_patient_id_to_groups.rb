class AddPatientIdToGroups < ActiveRecord::Migration[7.0]
  def change
    add_column :groups, :patient_id, :integer
  end
end
