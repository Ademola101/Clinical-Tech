class RemoveGroupIdFromPatients < ActiveRecord::Migration[7.0]
  def change
    remove_column :patients, :group_id
  end
end
