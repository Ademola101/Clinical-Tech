class AddNotNullToPa < ActiveRecord::Migration[7.0]
  def change
    change_column_null :patients, :patient_group_id, false
  end
end
