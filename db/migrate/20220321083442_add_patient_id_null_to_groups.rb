class AddPatientIdNullToGroups < ActiveRecord::Migration[7.0]
  def change
    change_column_null :groups, :patient_id, false
  end
end
